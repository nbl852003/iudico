﻿using System.Collections.Generic;
using IUDICO.Common.Models;
using System;

namespace IUDICO.CurriculumManagement.Models.Storage
{
    public interface ICurriculumStorage
    {
        #region Helper methods

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

        #region ThemeType methods

        IEnumerable<ThemeType> GetThemeTypes();

        #endregion

        #region Assignment methods

        IEnumerable<CurriculumAssignment>       GetCurriculumAssignments(IEnumerable<int> ids);
        IEnumerable<CurriculumAssignment>       GetCurriculumAssignmnetsByCurriculumId(int curriculumId);
        IEnumerable<CurriculumAssignment>       GetCurriculumAssignmentsByGroupId(int groupId);
        CurriculumAssignment                    GetCurriculumAssignment(int curriculumAssignmentId);
        CurriculumAssignment                    GetCurriculumAssignmentByCurriculumIdByGroupId(int curriculumId, int groupId);

        void                                    UpdateCurriculumAssignment(CurriculumAssignment curriculumAssignment);
        void                                    UpdateTimeline(Timeline timeline);

        IEnumerable<Group>                      GetAssignedGroups(int curriculumId);
        IEnumerable<Group>                      GetNotAssignedGroups(int curriculumId);

        IEnumerable<Timeline>                   GetTimelines(int curriculumId, int groupId);
        IEnumerable<Timeline>                   GetTimelines(IEnumerable<int> TimelineIds);
        IEnumerable<Timeline>                   GetCurriculumAssignmentTimelines(int curriculumAssignmentId); //!!
        IEnumerable<Timeline>                   GetStageTimelines(int curriculumAssignmentId);//!!
        IEnumerable<Timeline>                   GetTimelines(int stageId, int curriculumId, int groupId);
        Timeline                                GetTimeline(int TimelineId);//!!

        IEnumerable<Operation>                  GetOperations();

        void                                    DeleteCurriculumAssignment(int id);
        void                                    DeleteCurriculumAssignments(IEnumerable<int> curriculumAssignmentIds);
        void                                    DeleteTimeline(int Timelineid);
        void                                    DeleteTimelines(IEnumerable<int> Timelineids);
        
        int                                     AddCurriculumAssignment(CurriculumAssignment currAssignment);
        int                                     AddTimeline(Timeline timeline);
       
        IEnumerable<Curriculum>                 GetCurriculumsByGroupId(int groupId);
        IEnumerable<Theme>                      GetThemesByCurriculumId(int curriculumId);
        IEnumerable<Theme>                      GetThemesByGroupId(int groupId);

        #endregion
    }
}
