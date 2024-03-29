﻿using System.Collections.Generic;
using System.Web.Mvc;
using Castle.MicroKernel.Registration;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Plugin;
using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared;
using IUDICO.CurriculumManagement.Models.Storage;
using Action = IUDICO.Common.Models.Action;
using IUDICO.CurriculumManagement.Models;

using System.Linq;
using Castle.Windsor;
using IUDICO.Common.Models.Notifications;
using IUDICO.Common;

namespace IUDICO.CurriculumManagement
{
    public class CurriculumManagementPlugin : IWindsorInstaller, IPlugin
    {
        static ICurriculumStorage curriculumStorage { get; set; }

        #region IWindsorInstaller Members

        public void Install(Castle.Windsor.IWindsorContainer container, Castle.MicroKernel.SubSystems.Configuration.IConfigurationStore store)
        {
            container.Register(
                AllTypes
                    .FromThisAssembly()
                    .BasedOn<IController>()
                    .Configure(c => c.LifeStyle.Transient
                                        .Named(c.Implementation.Name)),
                Component.For<IPlugin>().ImplementedBy<CurriculumManagementPlugin>().LifeStyle.Is(Castle.Core.LifestyleType.Singleton),
                Component.For<ICurriculumStorage>().ImplementedBy<MixedCurriculumStorage>().LifeStyle.Is(Castle.Core.LifestyleType.Singleton),
                Component.For<ICurriculumService>().ImplementedBy<CurriculumService>().LifeStyle.Is(Castle.Core.LifestyleType.Singleton)
            );

            curriculumStorage = container.Resolve<ICurriculumStorage>();
        }

        #endregion

        #region IPlugin Members
        public string GetName()
        {
            return Localization.getMessage("CurriculumManagement");
        }

        public IEnumerable<Action> BuildActions()
        {
            return new Action[]
            {
                new Action(Localization.getMessage("CurriculumManagement"), "Curriculum/Index")
            };
        }

        public IEnumerable<MenuItem> BuildMenuItems()
        {
            return new MenuItem[]
            {
                new MenuItem(Localization.getMessage("Curriculums"), "Curriculum", "Index")
            };
        }

        public void RegisterRoutes(System.Web.Routing.RouteCollection routes)
        {
            routes.MapRoute(
                "Curriculum",
                "Curriculum/{CurriculumID}/{action}",
                new { controller = "Curriculum" }
            );

            routes.MapRoute(
                "Curriculums",
                "Curriculum/{action}",
                new { controller = "Curriculum", action = "Index" }
            );

            routes.MapRoute(
               "Stage",
               "Stage/{StageId}/{action}",
               new { controller = "Stage" }
            );

            routes.MapRoute(
                "Stages",
                "Curriculum/{CurriculumId}/Stage/{action}",
                new { controller = "Stage" }
            );

            routes.MapRoute(
               "Theme",
               "Theme/{ThemeId}/{action}",
               new { controller = "Theme" }
            );

            routes.MapRoute(
                "Themes",
                "Stage/{StageId}/Theme/{action}",
                new { controller = "Theme" }
            );

            routes.MapRoute(
                "CurriculumAssignment",
                "CurriculumAssignment/{CurriculumAssignmentId}/{action}",
                new { controller = "CurriculumAssignment" }
            );

            routes.MapRoute(
                "CurriculumAssignments",
                "Curriculum/{CurriculumId}/CurriculumAssignment/{action}",
                new { controller = "CurriculumAssignment" }
            );

            routes.MapRoute(
                "CurriculumAssignmentTimeline",
                "CurriculumAssignmentTimeline/{TimelineId}/{action}",
                new { controller = "CurriculumAssignmentTimeline" }
            );

            routes.MapRoute(
                "CurriculumAssignmentTimelines",
                "CurriculumAssignment/{CurriculumAssignmentId}/CurriculumAssignmentTimeline/{action}",
                new { controller = "CurriculumAssignmentTimeline" }
            );

            routes.MapRoute(
                "StageTimeline",
                "StageTimeline/{TimelineId}/{action}",
                new { controller = "StageTimeline" }
            );

            routes.MapRoute(
                "StageTimelines",
                "CurriculumAssignment/{CurriculumAssignmentId}/StageTimeline/{action}",
                new { controller = "StageTimeline" }
            );

            routes.MapRoute(
                "ThemeAssignment",
                "ThemeAssignment/{ThemeAssignmentId}/{action}",
                new { controller = "ThemeAssignment" }
            );

            routes.MapRoute(
                "ThemeAssignments",
                "CurriculumAssignment/{CurriculumAssignmentId}/ThemeAssignment/{action}",
                new { controller = "ThemeAssignment" }
            );
        }

        public void Update(string evt, params object[] data)
        {
            if (evt == UserNotifications.CourseDelete)
            {
                //delete connected Themes
                int courseId = ((Course)data[0]).Id;
                curriculumStorage.MakeCurriculumInvalid(courseId);
                var themeIds = curriculumStorage.GetThemesByCourseId(courseId).Select(item => item.Id);
                curriculumStorage.DeleteThemes(themeIds);
            }
            else if (evt == UserNotifications.GroupDelete)
            {
                //delete connected CurriculumAssignments
                int groupId = ((Group)data[0]).Id;
                curriculumStorage.MakeCurriculumAssignmentsInvalid(groupId);
                //var curriculumAssignmentIds = curriculumStorage.GetCurriculumAssignmentsByGroupId(groupId).Select(item => item.Id);
                //curriculumStorage.DeleteCurriculumAssignments(curriculumAssignmentIds);
            }
            else if (evt == UserNotifications.UserDelete)
            {
                //delete connected Curriculums(CurriculumAssignments)
                var curriculumIds = curriculumStorage.GetCurriculums((User)data[0]).Select(item => item.Id);
                curriculumStorage.DeleteCurriculums(curriculumIds);
            }
        }

        public void Setup(IWindsorContainer container)
        {

        }

        #endregion
    }
}