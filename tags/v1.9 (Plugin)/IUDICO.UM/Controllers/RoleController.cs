﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.Common.Models;
using IUDICO.UM.Models;

namespace IUDICO.UM.Controllers
{
    public class RoleController : UMBaseController
    {
        //
        // GET: /Role/

        public ActionResult Index()
        {
            return View(Storage.GetRoles());
        }

        //
        // GET: /Role/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Role/Create

        [HttpPost]
        public ActionResult Create(Role role)
        {
            if (ModelState.IsValid && Storage.CreateRole(role))
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View(role);
            }
        }
        
        //
        // GET: /Role/Edit/5
 
        public ActionResult Edit(int id)
        {
            Role role = Storage.GetRole(id);
            if (role == null)
            {
                return RedirectToAction("Error");
            }
            else
            {
                return View(role);
            }
        }

        //
        // POST: /Role/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, Role role)
        {
            if (ModelState.IsValid && Storage.EditRole(id, role))
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View(role);
            }
        }

        //
        // POST: /Role/Delete/5

        [HttpDelete]
        public JsonResult Delete(int id)
        {
            return Json(new { status = Storage.DeleteRole(id) });
        }
    }
}