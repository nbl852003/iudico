﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.Common.Controllers;
using IUDICO.Security.ViewModels;

namespace IUDICO.Security.Controllers
{
    public class SecurityController : PluginController
    {
        //
        // GET: /Security/

        public ActionResult Index()
        {
            return View();
        }
    }
}
