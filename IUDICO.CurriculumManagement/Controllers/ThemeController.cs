﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.CurriculumManagement.Models.Storage;
using IUDICO.CurriculumManagement.Models;
using IUDICO.CurriculumManagement.Models.ViewDataClasses;
using IUDICO.Common.Models.Attributes;

namespace IUDICO.CurriculumManagement.Controllers
{
    public class ThemeController : CurriculumBaseController
    {
        public ThemeController(ICurriculumStorage curriculumStorage)
            : base(curriculumStorage)
        {

        }

        [Allow(Role = Role.Teacher)]
        public ActionResult Index(int stageId)
        {
            try
            {
                var themes = Storage.GetThemesByStageId(stageId);
                Stage stage = Storage.GetStage(stageId);

                ViewData["StageName"] = stage.Name;
                ViewData["CurriculumId"] = stage.CurriculumRef;
                return View(themes);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpGet]
        [Allow(Role = Role.Teacher)]
        public ActionResult Create(int stageId)
        {
            try
            {
                LoadValidationErrors();

                var model = new CreateThemeModel(stageId, Storage.GetCourses(), 0, Storage.GetThemeTypes(), 0);
                //{
                //    StageId = stageId,
                //    Courses = from course in Storage.GetCourses()
                //              select new SelectListItem { Text = course.Name, Value = course.Id.ToString(), Selected = false },
                //    ThemeTypes = from themeType in Storage.GetThemeTypes()
                //                 select new SelectListItem { Text = themeType.Name, Value = themeType.Id.ToString(), Selected = false }
                //};

                return View(model);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public ActionResult Create(int stageId, CreateThemeModel model)
        {
            try
            {
                Theme theme = new Theme
                {
                    CourseRef = model.CourseId,
                    StageRef = model.StageId,
                    ThemeTypeRef = model.ThemeTypeId,
                };

                AddValidationErrorsToModelState(Validator.ValidateTheme(theme).Errors);

                if (ModelState.IsValid)
                {
                    Course course = Storage.GetCourse(model.CourseId);
                    theme.Name = course.Name;
                    Storage.AddTheme(theme);

                    return RedirectToAction("Index", new { StageId = model.StageId });
                }
                else
                {
                    SaveValidationErrors();

                    return RedirectToAction("Create");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpGet]
        [Allow(Role = Role.Teacher)]
        public ActionResult Edit(int themeId)
        {
            try
            {
                LoadValidationErrors();

                var theme = Storage.GetTheme(themeId);
                var model = new CreateThemeModel(theme.StageRef, Storage.GetCourses(), theme.CourseRef, Storage.GetThemeTypes(), theme.ThemeTypeRef);
                //{
                //    StageId = theme.StageRef,
                //    //ThemeId = themeId,
                //    Courses = Storage.GetCourses()
                //              .Select(item => new SelectListItem
                //              {
                //                  Text = item.Name,
                //                  Value = item.Id.ToString(),
                //                  Selected = item.Id == theme.CourseRef ? true : false
                //              }),
                //    ThemeTypes = Storage.GetThemeTypes()
                //                 .Select(item => new SelectListItem
                //                 {
                //                     Text = item.Name,
                //                     Value = item.Id.ToString(),
                //                     Selected = item.Id == theme.ThemeTypeRef ? true : false
                //                 }),
                //    CourseId=theme.CourseRef,
                //    ThemeTypeId=theme.ThemeTypeRef
                //};

                return View(model);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public ActionResult Edit(int themeId, CreateThemeModel model)
        {
            try
            {
                //TODO:rewrite this
                Theme theme = Storage.GetTheme(themeId);
                theme.CourseRef = model.CourseId;
                theme.ThemeTypeRef = model.ThemeTypeId;

                AddValidationErrorsToModelState(Validator.ValidateTheme(theme).Errors);

                if(ModelState.IsValid)
                {
                    Course course = Storage.GetCourse(model.CourseId);
                    theme.Name = course.Name;
                    Storage.UpdateTheme(theme);

                    return RedirectToRoute("Themes", new { action = "Index", StageId = theme.StageRef });
                }
                else
                {
                    SaveValidationErrors();

                    return RedirectToAction("Edit");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public JsonResult DeleteItem(int themeId)
        {
            try
            {
                Storage.DeleteTheme(themeId);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        [HttpPost]
        [Allow(Role = Role.Teacher)]
        public JsonResult DeleteItems(int[] themeIds)
        {
            try
            {
                Storage.DeleteThemes(themeIds);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        [Allow(Role = Role.Teacher)]
        public ActionResult ThemeUp(int themeId)
        {
            try
            {
                var theme = Storage.ThemeUp(themeId);

                return RedirectToRoute("Themes", new { Action = "Index", StageId = theme.StageRef });
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [Allow(Role = Role.Teacher)]
        public ActionResult ThemeDown(int themeId)
        {
            try
            {
                var theme = Storage.ThemeDown(themeId);

                return RedirectToRoute("Themes", new { Action = "Index", StageId = theme.StageRef });
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
