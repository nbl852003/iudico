﻿using System;
using System.Linq;
using System.Reflection;
using IUDICO.DataModel.Common;

namespace IUDICO.DataModel.DB.Base
{
    public abstract class MultipleCondtion : IDBPredicate
    {
        protected abstract void WriteOperator(SqlSerializationContext context);

        protected MultipleCondtion(params IDBPredicate[] conds)
        {
            if (conds.Length <= 1)
                throw new ArgumentException("AndCondition constructor cannot be created with no subcondition or with only one. You must provide at least two conditions");
            _Conds = conds;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("(");
            bool notFirst = false;
            foreach (var cond in _Conds)
            {
                if (notFirst)
                {
                    WriteOperator(context);
                }
                else
                {
                    notFirst = true;
                }
                cond.Write(context);
            }
            context.Write(")");
        }

        private readonly IDBPredicate[] _Conds;
    }

    public class OrCondtion : MultipleCondtion
    {
        public OrCondtion(params IDBPredicate[] conds) : base(conds)
        {
        }

        protected override void WriteOperator(SqlSerializationContext context)
        {
            context.Write(" OR ");
        }
    }

    public class AndCondtion : MultipleCondtion
    {
        public AndCondtion(params IDBPredicate[] conds) : base(conds)
        {
        }

        protected override void WriteOperator(SqlSerializationContext context)
        {
            context.Write(" AND ");
        }
    }

    public class LikeObjectCondition : IDBPredicate
    {
        public LikeObjectCondition(object param)
        {
            _Param = param;
        }

        public void Write(SqlSerializationContext context)
        {
            bool notFirst = false;
            context.Write("(");
            foreach (var p in _Param.GetType().GetProperties(BindingFlags.Instance | BindingFlags.Public))
            {
                if (notFirst)
                {
                    context.Write(" AND ");
                }
                else
                {
                    notFirst = true;
                }
                context.Write("([{0}] = {1})", p.Name, context.AddParameter(p.GetValue(_Param, null)));
            }
            context.Write(")");
        }

        private readonly object _Param;
    }

    public class BetweenCondition<TValue> : IDBPredicate
    {
        public BetweenCondition(IDBCondition<TValue> operand, IDBCondition<TValue> lowBound, IDBCondition<TValue> hiBound)
        {
            _Operand = operand;
            _LowBound = lowBound;
            _HiBound = hiBound;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("(");
            _Operand.Write(context);
            context.Write(" BETWEEN ");
            _LowBound.Write(context);
            context.Write(" AND ");
            _HiBound.Write(context);
            context.Write(")");
        }

        private readonly IDBCondition<TValue> _Operand;
        private readonly IDBCondition<TValue> _LowBound;
        private readonly IDBCondition<TValue> _HiBound;
    }

    public class PropertyCondition<TProperty> : IDBCondition<TProperty>
    {
        public string PropertyName { get; private set; }

        public PropertyCondition(string propertyName)
        {
            PropertyName = propertyName;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("[" + PropertyName + "]");            
        }
    }

    public class DateTimeBetweenCondition : AndCondtion
    {
         //((DateSince IS NULL) OR (DateSince <= @TargetDate)) AND ((DateTill IS NULL) OR (DateTill >= @TargetDate))
        public DateTimeBetweenCondition(IDBCondition<DateTime> operand, IDBCondition<DateTime> lowBound, IDBCondition<DateTime> hiBound)
            : base
            (
                new OrCondtion(
                    new IsNullCondition<DateTime>(lowBound),
                    new CompareCondition<DateTime>(lowBound, operand, COMPARE_KIND.NOT_MORE)
                ),
                new OrCondtion(
                    new IsNullCondition<DateTime>(hiBound),
                    new CompareCondition<DateTime>(operand, hiBound, COMPARE_KIND.NOT_MORE)
                )
            )
        {          
        }
    }

    public enum COMPARE_KIND
    {
        EQUAL,
        NOT_EQUAL,
        MORE,
        LESS,
        NOT_MORE,
        NOT_LESS,
        IN,
        LIKE
    }

    public class CompareCondition<TComparisionType> : IDBPredicate
    {
        public IDBCondition<TComparisionType> A { get; private set; }
        public IDBCondition<TComparisionType> B { get; private set; }
        public COMPARE_KIND Kind { get; private set; }

        public CompareCondition(IDBCondition<TComparisionType> a, IDBCondition<TComparisionType> b, COMPARE_KIND kind)
        {
            A = a;
            B = b;
            Kind = kind;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("(");
            A.Write(context);
            string opSym;
            switch(Kind)
            {
                case COMPARE_KIND.EQUAL:
                    opSym = " = ";
                    break;
                case COMPARE_KIND.IN:
                    opSym = " IN ";
                    break;
                case COMPARE_KIND.LESS:
                    opSym = " < ";
                    break;
                case COMPARE_KIND.MORE:
                    opSym = " > ";
                    break;
                case COMPARE_KIND.NOT_EQUAL:
                    opSym = " <> ";
                    break;
                case COMPARE_KIND.NOT_LESS:
                    opSym = " >= ";
                    break;
                case COMPARE_KIND.NOT_MORE:
                    opSym = " <= ";
                    break;

                case COMPARE_KIND.LIKE:
                    opSym = " LIKE ";
                    break;

                default:
                    throw new InvalidOperationException();
            }

            context.Write(opSym);
            B.Write(context);
            context.Write(")");
        }
    }

    public class ValueCondition<TValue> : IDBCondition<TValue>
    {
        public TValue Value { get; private set; }

        public ValueCondition(TValue value)
        {
            Value = value;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write(context.AddParameter(Value));            
        }

        public static implicit operator ValueCondition<TValue> (TValue v)
        {
            return new ValueCondition<TValue>(v);
        }
    }

    public enum IN_CONDITION_KIND
    {
        IN,
        NOT_IN,
        EQUAL
    }

    public class InCondition<TValue> : IDBPredicate
    {
        public readonly IDBCondition<TValue> Arg;
        public readonly ISubSelectCondition SubSelect;
        public readonly IN_CONDITION_KIND Kind;

        public InCondition(IDBCondition<TValue> arg, ISubSelectCondition subSelect)
            : this(arg, subSelect, IN_CONDITION_KIND.IN)
        {
        }

        public InCondition(IDBCondition<TValue> arg, ISubSelectCondition subSelect, IN_CONDITION_KIND kind)
        {
            Arg = arg;
            SubSelect = subSelect;
            Kind = kind;
        }

        public void Write(SqlSerializationContext context)
        {
            Arg.Write(context);
            context.Write(" ");
            context.Write(KindToString(Kind));
            context.Write(" (");
            SubSelect.Write(context);
            context.Write(")");
        }

        private static string KindToString(IN_CONDITION_KIND kind)
        {
            switch (kind)
            {
                case IN_CONDITION_KIND.EQUAL:
                    return "=";

                case IN_CONDITION_KIND.IN:
                    return "IN";

                case IN_CONDITION_KIND.NOT_IN:
                    return "NOT IN";

                default:
                    throw new InvalidOperationException();
            }
        }
    }

    public class SubSelectCondition<TDataObject> : ISubSelectCondition
        where TDataObject : IDataObject, new()
    {
        public readonly string[] FieldNames;
        public readonly IDBPredicate Condition;

        public SubSelectCondition(string fieldName, IDBPredicate cond)
            : this(new[] {fieldName}, cond)
        {
        }

        public SubSelectCondition(string[] fieldNames, IDBPredicate cond)
        {
            FieldNames = fieldNames;
            Condition = cond;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("SELECT ");
            context.Write(FieldNames.Select(f => SqlUtils.WrapDbId(f)).ConcatComma());
            context.Write(" FROM ");
            context.Write(SqlUtils.WrapDbId(DataObjectInfo<TDataObject>.TableName));
            if (Condition != null)
            {
                context.Write(" WHERE ");
                Condition.Write(context);
            }
        }
    }

    public class IsNullCondition<TValue> : IDBPredicate
    {
        public IsNullCondition(IDBCondition<TValue> value)
        {
            _Value = value;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("(");
            _Value.Write(context);
            context.Write(" IS NULL");
            context.Write(")");
        }

        private readonly IDBCondition<TValue> _Value;
    }

        public class IsNotNullCondition<TValue> : IDBPredicate
    {
        public IsNotNullCondition(IDBCondition<TValue> value)
        {
            _Value = value;
        }

        public void Write(SqlSerializationContext context)
        {
            context.Write("(");
            _Value.Write(context);
            context.Write(" IS NOT NULL");
            context.Write(")");

        }

        private readonly IDBCondition<TValue> _Value;
    }
}