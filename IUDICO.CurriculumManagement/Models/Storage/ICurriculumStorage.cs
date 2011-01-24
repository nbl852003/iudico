﻿using System.Collections.Generic;
using IUDICO.Common.Models;

namespace IUDICO.CurriculumManagement.Models.Storage
{
    public interface ICurriculumStorage
    {
        #region External methods

        void RefreshState();
        IEnumerable<Course> GetCourses();
        Course GetCourse(int id);
        Group GetGroup(int id);
        IEnumerable<Group> GetGroups();

        #endregion

        #region Curriculum methods

        IEnumerable<Curriculum> GetCurriculums();
        IEnumerable<Curriculum> GetCurriculums(IEnumerable<int> ids);
        Curriculum GetCurriculum(int id);
        IEnumerable<Curriculum> GetCurriculumsByGroupId(int groupId);
        int AddCurriculum(Curriculum curriculum);
        void UpdateCurriculum(Curriculum curriculum);
        void DeleteCurriculum(int id);
        void DeleteCurriculums(IEnumerable<int> ids);

        #endregion

        #region Stage methods

        IEnumerable<Stage> GetStages(int curriculumId);
        IEnumerable<Stage> GetStages(IEnumerable<int> ids);
        int AddStage(Stage stage);
        Stage GetStage(int id);
        void UpdateStage(Stage stage);
        void DeleteStage(int id);
        void DeleteStages(IEnumerable<int> ids);

        #endregion

        #region Theme methods

        Theme GetTheme(int id);
        IEnumerable<Theme> GetThemes(int stageId);
        IEnumerable<Theme> GetThemes(IEnumerable<int> ids);
        IEnumerable<Theme> GetThemesByCurriculumId(int curriculumId);
        IEnumerable<Theme> GetThemesByGroupId(int groupId);
        int AddTheme(Theme theme, Course course);
        void UpdateTheme(Theme theme, Course course);
        void DeleteTheme(int id);
        void DeleteThemes(IEnumerable<int> ids);
        Theme ThemeUp(int themeId);
        Theme ThemeDown(int themeId);

        #endregion

        #region ThemeType methods

        IEnumerable<ThemeType> GetThemeTypes();

        #endregion

        #region CurriculumAssignment methods

        CurriculumAssignment GetCurriculumAssignment(int curriculumAssignmentId);
        IEnumerable<CurriculumAssignment> GetCurriculumAssignments(IEnumerable<int> ids);
        IEnumerable<CurriculumAssignment> GetCurriculumAssignmnetsByCurriculumId(int curriculumId);
        IEnumerable<CurriculumAssignment> GetCurriculumAssignmentsByGroupId(int groupId);
        IEnumerable<CurriculumAssignment> GetCurriculumAssignmnets();
        int AddCurriculumAssignment(CurriculumAssignment curriculumAssignment);
        void UpdateCurriculumAssignment(CurriculumAssignment curriculumAssignment);
        void DeleteCurriculumAssignment(int id);
        void DeleteCurriculumAssignments(IEnumerable<int> curriculumAssignmentIds);

        #endregion

        #region ThemeAssignment methods

        IEnumerable<ThemeAssignment> GetThemeAssignmentsByCurriculumAssignmentId(int curriculumAssignmentId);
        ThemeAssignment GetThemeAssignment(int themeAssignmentId);

        int AddThemeAssignment(ThemeAssignment themeAssignment);

        void UpdateThemeAssignment(ThemeAssignment themeAssignment);

        #endregion

        #region Timeline methods

        Timeline GetTimeline(int TimelineId);
        IEnumerable<Timeline> GetTimelines(IEnumerable<int> timelineIds);
        IEnumerable<Timeline> GetCurriculumAssignmentTimelines(int curriculumAssignmentId);
        IEnumerable<Timeline> GetStageTimelines(int curriculumAssignmentId);
        int AddTimeline(Timeline timeline);
        void UpdateTimeline(Timeline timeline);
        void DeleteTimeline(int timelineId);
        void DeleteTimelines(IEnumerable<int> timelineIds);

        #endregion

        #region Operation methods

        IEnumerable<Operation> GetOperations();

        #endregion

        #region Group methods

        IEnumerable<Group> GetAssignedGroups(int curriculumId);
        IEnumerable<Group> GetNotAssignedGroups(int curriculumId);

        #endregion
    }
}
