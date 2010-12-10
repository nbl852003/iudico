﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.CurriculumManagement.Models.Storage;
using MvcContrib.PortableAreas;

namespace IUDICO.CurriculumManagement
{
    public class CurriculumManagementRegistration : PortableAreaRegistration
    {
        public override void RegisterArea(AreaRegistrationContext context, IApplicationBus bus)
        {
            context.MapRoute(
                "Curriculum",
                "Curriculum/{CurriculumID}/{action}",
                new { controller = "Curriculum" }
            );

            context.MapRoute(
                "Curriculums",
                "Curriculum/{action}",
                new { controller = "Curriculum", action = "Index" }
            );

            context.MapRoute(
               "Stage",
               "Stage/{StageId}/{action}",
               new { controller = "Stage" }
            );

            context.MapRoute(
                "Stages",
                "Curriculum/{CurriculumId}/Stage/{action}",
                new { controller = "Stage" }
            );

            context.MapRoute(
                "Groups",
                "Curriculum/{CurriculumId}/CurriculumAssignment/{action}",
                new { controller = "CurriculumAssignment" }
                );      

            context.MapRoute(
               "Theme",
               "Theme/{ThemeId}/{action}",
               new { controller = "Theme" }
            );

            context.MapRoute(
                "Themes",
                "Stage/{StageId}/Theme/{action}",
                new { controller = "Theme" }
            );



            RegisterAreaEmbeddedResources();

            //HttpContext.Current.Application["CurriculumStorage"] = CurriculumStorageFactory.CreateStorage(CurriculumStorageType.Mixed);
        }

        public override string AreaName
        {
            get { return "CurriculumManagement"; }
        }
    }
}