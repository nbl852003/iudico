﻿using System.Collections.Generic;
using IUDICO.Common.Models;

namespace IUDICO.CurriculumManagement.Models.Storage
{
    public interface ICurriculumStorage
    {
        #region Helper methods

        void RefreshState();
        IEnumerable<Course> GetCourses();
        Course GetCourse(int id);

        #endregion

        #region Curriculum methods

        IEnumerable<Curriculum> GetCurriculums();
        IEnumerable<Curriculum> GetCurriculums(IEnumerable<int> ids);
        Curriculum GetCurriculum(int id);
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

        IEnumerable<Theme> GetThemes(int stageId);
        IEnumerable<Theme> GetThemes(IEnumerable<int> ids);
        Theme GetTheme(int id);
        int AddTheme(Theme theme, Course course);
        void UpdateTheme(Theme theme, Course course);
        void DeleteTheme(int id);
        void DeleteThemes(IEnumerable<int> ids);
        Theme ThemeUp(int themeId);
        Theme ThemeDown(int themeId);

        #endregion

        #region Assignment methods

        IEnumerable<CurriculumAssignment> GetCurrAssignments(IEnumerable<int> ids);
        CurriculumAssignment GetCurrAssignment(int currAssignmentId);
        IEnumerable<CurriculumAssignment> GetCurrAssignmnetsForCurriculum(int currId);
        IEnumerable<CurriculumAssignment> GetCurrAssignmentsForGroup(int groupId);
        CurriculumAssignment GetCurrAssignmentForCurriculumForGroup(int currId, int groupId);
        void DeleteCurriculumAssignment(int id);
        IEnumerable<Group> GetAssignmentGroups(int curriculumId);
        IEnumerable<Group> GetAllNotAssignmentGroups(int curriculumId);
        int AddCurriculumAssignment(CurriculumAssignment currAssignment);
        IEnumerable<Timeline> GetTimeline(int curriculumId, int groupId);
        int AddTimeline(Timeline timeline);

        IEnumerable<Curriculum> GetCurriculumsByGroupId(int groupId);
        IEnumerable<Theme> GetThemesByCurriculumId(int curriculumId);

        #endregion
    }
}
