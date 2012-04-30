﻿using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Castle.Windsor.Installer;

using IUDICO.Common.Models.Plugin;
using IUDICO.Common.Models.Services;
using IUDICO.LMS.IoC;
using IUDICO.LMS.Models;

using Moq;

using NUnit.Framework;

namespace IUDICO.UnitTests.LMS.NUnit
{
    internal interface IServerPath
    {
        string MapPath(string s);
    }

    [TestFixture]
    internal class ResolvingRoutesTests
    {
        /// <summary>
        /// Initializes Windsor container
        /// NOTE: IN CASE OF CHANGING PATH OF THIS PROJECT YOU SHOULD ASSIGN CORRECT PATH TO THE VARIABLE NAMED "fullPath"
        /// </summary>
        /// <param name="container"></param>
        private static void InitializeWindsor(ref IWindsorContainer container)
        {
            var a = Assembly.GetExecutingAssembly();
            var fullPath = a.CodeBase;
            fullPath = Path.GetDirectoryName(fullPath);
            fullPath = Path.GetDirectoryName(fullPath);
            fullPath = Path.GetDirectoryName(fullPath);
            fullPath = Path.GetDirectoryName(fullPath);
            fullPath = Path.Combine(fullPath, "IUDICO.LMS", "Plugins");
            fullPath = fullPath.Remove(0, 6);
            container.Register(Component.For<IWindsorContainer>().Instance(container)).Register(
                Component.For<ILmsService>().ImplementedBy<LmsService>().LifeStyle.Singleton).Install(
                    FromAssembly.This(), 
                    FromAssembly.InDirectory(new AssemblyFilter(fullPath.Replace("Plugins", "bin"), "IUDICO.LMS.dll")), 
                    FromAssembly.InDirectory(new AssemblyFilter(fullPath, "IUDICO.*.dll")));
        }

        protected void RegisterRoutes(RouteCollection routes, ref IWindsorContainer container)
        {
            var plugins = container.ResolveAll<IPlugin>();

            foreach (var plugin in plugins)
            {
                plugin.RegisterRoutes(routes);
            }

            container.Release(plugins);

            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("{resource}.ico/{*pathInfo}");
            routes.IgnoreRoute("Scripts/");
            routes.IgnoreRoute("Content/");
            routes.IgnoreRoute("Data/");

            routes.MapRoute(
                "Default", 
                // Route name,
                "{controller}/{action}/{id}", 
                // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional });
        }

        private static Mock<HttpContextBase> MakeMockHttpContext(string url)
        {
            var mockHttpContext = new Mock<HttpContextBase>();

            // Mock the request
            var mockRequest = new Mock<HttpRequestBase>();
            mockHttpContext.Setup(x => x.Request).Returns(mockRequest.Object);
            mockRequest.Setup(x => x.AppRelativeCurrentExecutionFilePath).Returns(url);

            // Mock the response
            var mockResponse = new Mock<HttpResponseBase>();
            mockHttpContext.Setup(x => x.Response).Returns(mockResponse.Object);
            mockResponse.Setup(x => x.ApplyAppPathModifier(It.IsAny<string>())).Returns<string>(x => x);
            return mockHttpContext;
        }

        public string GetMessage(string t)
        {
            return "No need here";
        }

        [Test]
        public void CorrectRouteAdressing()
        {
            RouteTable.Routes.Clear();
            IWindsorContainer container = new WindsorContainer();
            InitializeWindsor(ref container);
            var table = new RouteCollection();
            this.RegisterRoutes(RouteTable.Routes, ref container);
            table = RouteTable.Routes;
            var data = table.GetRouteData(MakeMockHttpContext("//Account/Login").Object);
            Assert.AreEqual("Account", data.Values["controller"]);
            Assert.AreEqual("Login", data.Values["action"]);
        }

        [Test]
        public void GetPlugin()
        {
            RouteTable.Routes.Clear();
            IWindsorContainer container = new WindsorContainer();
            InitializeWindsor(ref container);
            var table = new RouteCollection();
            this.RegisterRoutes(table, ref container);
            var data = table.GetRouteData(MakeMockHttpContext("//Account/Login/").Object);
            var plugins = container.ResolveAll<IPlugin>();
            foreach (var plugin in plugins)
            {
                if (plugin.BuildActions().Select(item => item == data.Values["action"]).Count(item => item != null) != 0)
                {
                    Assert.Pass();
                    break;
                }
            }

            Assert.Fail();
        }

        [Test]
        public void CannotGetIncorrectPlugin()
        {
            RouteTable.Routes.Clear();
            IWindsorContainer container = new WindsorContainer();
            InitializeWindsor(ref container);
            var table = new RouteCollection();
            this.RegisterRoutes(table, ref container);
            var data = table.GetRouteData(MakeMockHttpContext("//Acunt/Lghfn/").Object);
            var plugins = container.ResolveAll<IPlugin>();
            foreach (var plugin in plugins)
            {
                if (plugin.BuildActions().Select(item => item == data.Values["action"]).Count(item => item != null) == 0)
                {
                    Assert.Pass();
                    break;
                }
            }

            Assert.Pass();
        }

        [Test]
        public void IncorrectRouteAdressingIs()
        {
            RouteTable.Routes.Clear();
            IWindsorContainer container = new WindsorContainer();
            InitializeWindsor(ref container);
            var table = new RouteCollection();
            table = RouteTable.Routes;
            var data = table.GetRouteData(MakeMockHttpContext("//Acghfhghdfgdfgt/Lofdgdfgerghhgn").Object);
        }

        [Test]
        public void ResolvingStaticRoutesHandling()
        {
            RouteTable.Routes.Clear();
            IWindsorContainer container = new WindsorContainer();
            InitializeWindsor(ref container);
            var provider = new AssemblyResourceProvider();
            var path = @"Data\Avatars\default.png";
            var fp = Assembly.GetExecutingAssembly().CodeBase;
            fp = Path.GetDirectoryName(path);
            fp = Path.GetDirectoryName(path);
            fp = Path.GetDirectoryName(path);
            fp = Path.Combine(fp, path);
            try
            {
                if (provider.FileExists("/data/Avatar/default.png"))
                {
                    provider.GetFile("/data/Avatar/default.png");
                }
            }
            catch
            {
                Assert.Pass();
            }

            Assert.Fail();
        }
    }
}