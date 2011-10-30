﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IUDICO.Common.Controllers;
using System.Web.Mvc;
using IUDICO.Security.ViewModels.Ban;

namespace IUDICO.Security.Controllers
{
    public class BanController : PluginController
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddComputers()
        {
            return View(new AddComputerViewModel());
        }

        [HttpPost]
        public ActionResult AddComputers(AddComputerViewModel viewModel)
        {
            return View(viewModel);
        }

        public ActionResult AddRoom()
        {
            return View(new AddRoomViewModel());
        }

        [HttpPost]
        public ActionResult AddRoom(AddRoomViewModel viewModel)
        {
            return View(viewModel);
        }

        public ActionResult EditComputer()
        {
            return View();
        }

        public ActionResult EditRoom()
        {   
            return View(new RoomsViewModel());
        }
    }
}