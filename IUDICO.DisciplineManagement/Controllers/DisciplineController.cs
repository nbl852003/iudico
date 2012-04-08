﻿using System;
using System.Collections.Generic;
using System.Web.Mvc;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Shared;
using IUDICO.Common.Models.Attributes;
using IUDICO.DisciplineManagement.Models.Storage;

namespace IUDICO.DisciplineManagement.Controllers
{
    public class DisciplineController : DisciplineBaseController
    {
        public DisciplineController(IDisciplineStorage disciplineStorage)
            : base(disciplineStorage)
        {

        }

        [Allow(Role = Role.Teacher)]
        public ActionResult Index()
        {

			IEnumerable<Discipline> list = Storage.GetDisciplines(item => item.Owner == Storage.GetCurrentUser().Username);

			return View(list);
        }

        [HttpGet]
        [Allow(Role = Role.Teacher)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public ActionResult Create(Discipline discipline)
        {
            if (ModelState.IsValid)
            {
                Storage.AddDiscipline(discipline);
                return RedirectToAction("Index");
            }
            return View(discipline);
        }

        [HttpGet]
        [Allow(Role = Role.Teacher)]
        public ActionResult Edit(int disciplineId)
        {
            var discipline = Storage.GetDiscipline(disciplineId);

            return View(discipline);
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public ActionResult Edit(int disciplineId, Discipline discipline)
        {
            discipline.Id = disciplineId;
            Storage.UpdateDiscipline(discipline);

            return RedirectToAction("Index");
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public JsonResult DeleteItem(int disciplineId)
        {
            try
            {
                Storage.DeleteDiscipline(disciplineId);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public JsonResult DeleteItems(int[] disciplineIds)
        {
            try
            {
                Storage.DeleteDisciplines(disciplineIds);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }
    }
}
