﻿using System.Collections.Generic;
using IUDICO.Common.Models.Shared.CurriculumManagement;

namespace IUDICO.Common.Models.Services
{
    public interface ICurriculumService : IService
    {
        #region Curriculum methods

        IEnumerable<Curriculum> GetCurriculums();
        IEnumerable<Curriculum> GetCurriculums(IEnumerable<int> ids);
        Curriculum GetCurriculum(int id);

        #endregion

        #region Stage methods

        IEnumerable<Stage> GetStages(int curriculumId);
        IEnumerable<Stage> GetStages(IEnumerable<int> ids);
        Stage GetStage(int id);

        #endregion

        #region Theme methods

        IEnumerable<Theme> GetThemesByStageId(int stageId);
        IEnumerable<Theme> GetThemesByCurriculumId(int curriculumId);
        IEnumerable<Theme> GetThemes(IEnumerable<int> ids);
        IEnumerable<ThemeDescription> GetThemesAvailableForUser(User user);
        Theme GetTheme(int id);

        #endregion

        #region Assignment methods

        IEnumerable<Curriculum> GetCurriculumsByGroupId(int groupId);
        IEnumerable<Theme> GetThemesByGroupId(int groupId);

        #endregion
    }
}