﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.Common.Models;
using IUDICO.CurriculumManagement.Models.Storage;
using IUDICO.CurriculumManagement.Controllers;
using IUDICO.CurriculumManagement.Models;


namespace IUDICO.CurriculumManagement.Controllers
{
    public class CurriculumAssignmentController : CurriculumBaseController
    {
        public CurriculumAssignmentController(ICurriculumStorage curriculumStorage)
            : base(curriculumStorage)
        {

        }

        public ActionResult Index(int curriculumId)
        {
            try
            {
                HttpContext.Session["CurriculumId"] = curriculumId;

                var assingmentsGroups = Storage.GetAssignmentedGroups(curriculumId);

                if (assingmentsGroups != null)
                {
                    return View(assingmentsGroups);
                }
                else
                {
                    throw new Exception("Cannot read records");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpGet]
        public ActionResult Create() 
        {
            try
            {
                IEnumerable<Group> groups = Storage.GetAllNotAssignmentedGroups((int)HttpContext.Session["CurriculumId"]);

                CreateAssignmentModel createAssignmentModel = new CreateAssignmentModel()
                {
                    Groups = from item in groups
                             select new SelectListItem { Text = item.Name.ToString(), Value = item.Id.ToString(), Selected = false }
                };

                return View(createAssignmentModel);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        public ActionResult Create(CreateAssignmentModel createAssignmentModel)
        {
            try
            {
                CurriculumAssignment NewCurrAssignment = new CurriculumAssignment();
                NewCurrAssignment.UserGroupRef = createAssignmentModel.GroupId;
                NewCurrAssignment.CurriculumRef = (int)HttpContext.Session["CurriculumId"];

                Storage.AddCurriculumAssignment(NewCurrAssignment);

                return RedirectToAction("Index");

            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public ActionResult EditTimeline(int groupId)
        {
            try
            {
                HttpContext.Session["GroupId"] = groupId;

                var timelines = Storage.GetTimelines((int)HttpContext.Session["CurriculumId"], groupId);

                var courseManager = LmsService.FindService<IUDICO.Common.Models.Services.IUserService>();

                ViewData["GroupName"] = courseManager.GetGroup(groupId).Name;
                ViewData["1"] = "View";
                ViewData["2"] = "Pass";


                if (timelines != null)
                {
                    return View(timelines);
                }
                else
                {
                    throw new Exception("Cannot read records");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpGet]
        public ActionResult CreateTimeline()
        {
            try
            {
                var operations = Storage.GetOperations();

                CreateTimelineModel createTimelineModel = new CreateTimelineModel()
                {
                    Operations = from item in operations
                                 select new SelectListItem { Text = item.Name.ToString(), Value = item.Id.ToString(), Selected = false },
                    timeline = new Timeline()
                };

                return View(createTimelineModel);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        public ActionResult CreateTimeline(CreateTimelineModel createTimelineModel)
        {
            try
            {
                Timeline timeline = createTimelineModel.timeline;

                timeline.CurriculumAssignmentRef = (Storage.GetCurriculumAssignmentByCurriculumIdByGroupId((int)HttpContext.Session["CurriculumId"],
                                                                                                  ((int)HttpContext.Session["GroupId"]))).Id;
                timeline.OperationRef = createTimelineModel.OperationId;
                Storage.AddTimeline(timeline);

                return RedirectToRoute("Timelines");

            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        public JsonResult DeleteAssignmentItem(int groupId)
        {
            try
            {
                int CurrAssingmentId = Storage.GetCurriculumAssignmentByCurriculumIdByGroupId((int)HttpContext.Session["CurriculumId"], groupId).Id;
                Storage.DeleteCurriculumAssignment(CurrAssingmentId);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        [HttpPost]
        public JsonResult DeleteAssignmentItems(int[] groupIds)
        {
            try
            {
                int i = 0;
                while (i != groupIds.Length)
                {
                    int CurrAssingmentId = Storage.GetCurriculumAssignmentByCurriculumIdByGroupId((int)HttpContext.Session["CurriculumId"], groupIds[i]).Id;
                    Storage.DeleteCurriculumAssignment(CurrAssingmentId);
                    i++;
                }
                
                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        public ActionResult EditTimelineForStages()
        {
            try
            {
                var stages = Storage.GetStages((int)HttpContext.Session["CurriculumId"]);
                
                if (stages != null)
                {
                    return View(stages);
                }
                else
                {
                    throw new Exception("Cannot read records");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public ActionResult EditStageTimeline(int StageId)
        {
            try
            {
                return View();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        [HttpPost]
        public JsonResult DeleteTimelineItem(int timelineId)
        {
            try
            {
                Storage.DeleteTimeline(timelineId);

                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }

        [HttpPost]
        public JsonResult DeleteTimelineItems(int[] timelineIds)
        {
            try
            {
                Storage.DeleteTimelines(timelineIds);
                
                return Json(new { success = true });
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }
        }
    }
}