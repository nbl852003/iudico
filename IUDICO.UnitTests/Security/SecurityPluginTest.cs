﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using IUDICO.Security;
using IUDICO.Common.Models;
using System.Web.Routing;

namespace IUDICO.UnitTests.Security
{
    class SecurityPluginTest
    {
        [Test]
        public void SecurityPluginBuildMenuTest()
        {
            Menu menu = new Menu();
            SecurityPlugin plugin = new SecurityPlugin();

            plugin.BuildMenu(menu);

            Assert.AreEqual(menu.Items.Count, 1);
            Assert.That(menu.Items[0].Text == "Security");
            Assert.That(menu.Items[0].Controller == "Security");
            Assert.That(menu.Items[0].Action == "Index");
        }

        [Test]
        public void SecurityPluginGetNameTest()
        {
            SecurityPlugin plugin = new SecurityPlugin();
            Assert.That(plugin.GetName() == "SecurityPlugin");
        }

        [Test]
        public void SecurityPluginBuildActionsTest()
        {
            SecurityPlugin plugin = new SecurityPlugin();
            Role role = Role.None;

            IEnumerable<Common.Models.Action> actions = plugin.BuildActions(role);

            Assert.That(actions.Count() == 0);
        }

        [Test]
        public void SecurityPluginRegisterRoutesTest()
        {
            SecurityPlugin plugin = new SecurityPlugin();
            RouteCollection routeCollection = new RouteCollection();

            plugin.RegisterRoutes(routeCollection);

            Assert.That(routeCollection.Count == 2);
        }
    }
}
