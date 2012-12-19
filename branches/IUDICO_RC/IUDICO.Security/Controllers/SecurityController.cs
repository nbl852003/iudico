﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.Common.Controllers;
using IUDICO.Security.ViewModels;
using IUDICO.Common.Models.Attributes;
using IUDICO.Common.Models;
using IUDICO.Security.Models.Storages;
using IUDICO.Security.ViewModels.Security;

namespace IUDICO.Security.Controllers
{
    public class SecurityController : PluginController
    {
        // GET: /Security/

        [Allow(Role = Role.Admin)]
        public ActionResult Index()
        {
            return RedirectToAction("Index", "Ban");
        }
    }
}