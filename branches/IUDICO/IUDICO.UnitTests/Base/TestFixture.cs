﻿using System;
using NUnit.Framework;

namespace IUDICO.UnitTests.Base
{
    public class TestFixture
    {
        [TestFixtureSetUp]
        protected virtual void InitializeFixture()
        {
        }

        [TestFixtureTearDown]
        protected virtual void FinializeFixture()
        {
        }

        protected static void AreEqual(DateTime a, DateTime b)
        {
            Assert.AreEqual(a.AddTicks(-a.Ticks), b.AddTicks(-b.Ticks));
        }

        protected static void AreEqual(DateTime? a, DateTime? b)
        {
            if (a != null && b != null)
            {
                AreEqual(a.Value, b.Value);
            }
            else
            {
                Assert.AreEqual(a, b);
            }
        }
    }
}