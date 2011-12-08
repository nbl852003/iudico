﻿using System;
using System.IO;
using System.Web.Mvc;
using IUDICO.Common.Models.Services;

namespace IUDICO.Common.Controllers
{
    public class PluginController : BaseController
    {
        public static ILmsService LmsService;

        protected override ViewResult View(string viewName, string masterName, object model)
        {
            viewName = viewName ?? RouteData.GetRequiredString("action");

            if (viewName == null)
            {
                throw new ArgumentNullException("viewName", "You must provide a view name in AddinControllers");
            }

            var assembly = GetType().Assembly;
            var assemblyFileName = Path.GetFileName(assembly.Location);
            var assmblyName = assembly.GetName().Name;
            var controllerName = GetType().Name;
            
            if (!controllerName.EndsWith("Controller"))
            {
                throw new ApplicationException(
                    "Controllers must have a name ending with Controller, e.g: CustomerController");
            }

            var controllerShortenedName = controllerName.Substring(0, controllerName.Length - 10);
            var viewPath = string.Format("~/Plugins/{0}/{1}/Views/{2}/", assemblyFileName, assmblyName, controllerShortenedName);

            return base.View(viewPath + viewName + ".aspx", masterName, model);
        }
    }
}