﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace IUDICO.Common.Models.Attributes
{
    [AttributeUsage(AttributeTargets.Property, AllowMultiple = false, Inherited = true)]
    public sealed class DropDownListAttribute : UIHintAttribute
    {
        public DropDownListAttribute()
            : base("DropDownList")
        {
        }

        public string TargetProperty { get; set; }
        public string OptionLabel { get; set; }
    }
}
