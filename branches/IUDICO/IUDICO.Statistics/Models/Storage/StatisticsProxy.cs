﻿using System;
using System.Collections.Generic;
using System.Linq;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared.Statistics;

namespace IUDICO.Statistics.Models.Storage
{
    public class StatisticsProxy : IStatisticsProxy, IStatisticsService
    {
        private readonly ILmsService _LmsService;

        #region Constructors

        /// <summary>
        /// Default constructor .
        /// </summary>
        public StatisticsProxy()
        {

        }

        /// <summary>
        /// Constructor with parameters .
        /// </summary>
        /// <param name="lmsService">ILmsService service .</param>
        public StatisticsProxy(ILmsService lmsService)
        {
            _LmsService = lmsService;
        }

        #endregion

        #region StatisticsMethods

        /// <summary>
        /// Gets all groups, using method GetGroups() from IUserService .
        /// </summary>
        /// <returns>IEnumerable<IUDICO.Common.Models.Group> All groups .</returns>
        public IEnumerable<Group> GetAllGroups()
        {
            return _LmsService.FindService<IUserService>().GetGroups();
        }

        /// <summary>
        /// Gets all curriculum dy group id using method GetCurriculumsByGroupId(int groupId) from ICurriculumService .
        /// </summary>
        /// <param name="groupId">int Selected group id .</param>
        /// <returns>IEnumerable<Curriculum> Curriculums by group id .</returns>
        public IEnumerable<Curriculum> GetCurrilulumsByGroupId(int groupId)
        {
            return _LmsService.FindService<ICurriculumService>().GetCurriculumsByGroupId(groupId);
        }

        /// <summary>
        /// Gets all theme by curriculum id using method GetThemesByCurriculumId(int curriculumId) from ICurriculumService .
        /// </summary>
        /// <param name="curriculumsId">int Selected curriculum id .</param>
        /// <returns>IEnumerable<IUDICO.Common.Models.Theme> Themes .</returns>
        public IEnumerable<Theme> GetThemesByCurriculumId(int curriculumId)
        {
            return _LmsService.FindService<ICurriculumService>().GetThemesByCurriculumId(curriculumId);
        }

        /// <summary>
        /// Gets AttemptResult (result) by user, theme using method GetResults(User user, Theme theme) from IUserService .
        /// </summary>
        /// <param name="user">IUDICO.Common.Models.User Selected user .</param>
        /// <param name="theme">IUDICO.Common.Models.Theme Selected theme .</param>
        /// <returns>IEnumerable<AttemptResult> User theme results .</returns>
        public IEnumerable<AttemptResult> GetResults(User user, Theme theme)
        {
            return _LmsService.FindService<ITestingService>().GetResults(user, theme);
        }

        #endregion

    }

    public class ThemeInfoModel
    {
        private readonly ILmsService _LmsService;
        public int CurriculumId;
        private readonly List<AttemptResult> _LastAttempts;
        public IEnumerable<User> SelectStudents;
        public IEnumerable<Theme> SelectCurriculumThemes;

        private ThemeInfoModel() 
        {
            List<AttemptResult> testAttemptList = new List<AttemptResult>();
            List<User> testUserList = new List<User>();
            List<Theme> testThemeList = new List<Theme>();
            float? attemptScore;
            AttemptResult testAttempt;

            User testUser1 = new User();
            testUser1.Name = "user1";
            Theme testTheme1 = new Theme();
            testTheme1.Name = "theme1";
            User testUser2 = new User();
            testUser2.Name = "user2";
            Theme testTheme2 = new Theme();
            testTheme2.Name = "theme2";

            attemptScore = (float?)0.55;
            testAttempt = new AttemptResult(1, testUser1, testTheme1, new CompletionStatus(), new AttemptStatus(), new SuccessStatus(), attemptScore);
            testAttemptList.Add(testAttempt);
            
            attemptScore = (float?)0.65;
            testAttempt = new AttemptResult(1, testUser1, testTheme2, new CompletionStatus(), new AttemptStatus(), new SuccessStatus(), attemptScore);
            testAttemptList.Add(testAttempt);

            attemptScore = (float?)0.85;
            testAttempt = new AttemptResult(1, testUser2, testTheme1, new CompletionStatus(), new AttemptStatus(), new SuccessStatus(), attemptScore);
            testAttemptList.Add(testAttempt);

            attemptScore = (float?)0.95;
            testAttempt = new AttemptResult(1, testUser2, testTheme2, new CompletionStatus(), new AttemptStatus(), new SuccessStatus(), attemptScore);
            testAttemptList.Add(testAttempt);

            testUserList.Add(testUser1);
            testThemeList.Add(testTheme1);
            testUserList.Add(testUser2);
            testThemeList.Add(testTheme2);

            this._LastAttempts = testAttemptList;
            this.SelectStudents = testUserList;
            this.SelectCurriculumThemes = testThemeList;
        }

        public ThemeInfoModel(int groupId, int curriculumId, ILmsService lmsService)
        {
            _LmsService = lmsService;
            _LastAttempts = new List<AttemptResult>();

            CurriculumId = curriculumId;
            
            SelectStudents = _LmsService.FindService<IUserService>().GetUsersByGroup(_LmsService.FindService<IUserService>().GetGroup(groupId));
            
            SelectCurriculumThemes = _LmsService.FindService<ICurriculumService>().GetThemesByCurriculumId(CurriculumId);
            
            foreach (var temp in from student in SelectStudents
                                 from theme in SelectCurriculumThemes
                                 select _LmsService.FindService<ITestingService>().GetResults(student, theme)
                                 into temp where temp != null select temp)
            {
                _LastAttempts.Add(temp.First());
            }
        }

        public static ThemeInfoModel ThemeInfoModelTestObject()
        {
            return new ThemeInfoModel();
        }

        public double? GetStudentResultForTheme(User selectStudent, Theme selectTheme)
        {
            return _LastAttempts.First(x => x.User == selectStudent & x.Theme == selectTheme).Score.ToPercents();
        }

        public double? GetStudentResultForAllThemesInSelectedCurriculum(User selectStudent)
        {
            double? result = 0;

            foreach (Theme theme in SelectCurriculumThemes)
            {
                result += _LastAttempts.First(x => x.User == selectStudent & x.Theme == theme).Score.ToPercents();
            }

            return result;
        }

        public double? GetAllThemesInSelectedCurriculumMaxMark()
        {
            return 100 * SelectCurriculumThemes.Count();
        }

        public double? GetMaxResautForTheme(Theme selectTheme)
        {
            return 100;
        }

        public char Ects(double? percent)
        {
            if (percent >= 90.0)
            {
                return 'A';
            }
            else if (percent >= 81.0)
            {
                return 'B';
            }
            else if (percent >= 71.0)
            {
                return 'C';
            }
            else if (percent >= 61.0)
            {
                return 'D';
            }
            else if (percent >= 51.0)
            {
                return 'E';
            }
            else
            {
                return 'F';
            }
        }

        public AttemptResult GetStudentAttempt(User selectStudent, Theme selectTheme)
        {
            return _LastAttempts.First(x => x.User == selectStudent & x.Theme == selectTheme);
        }

        public List<AttemptResult> GetAllAttemts()
        {
            return this._LastAttempts;
        }
    }

    public class ThemeTestResaultsModel
    {
        private ILmsService _LmsService;
        public AttemptResult Attempt;
        public IEnumerable<AnswerResult> UserAnswers;
        public ThemeTestResaultsModel(String attemptUsernameAndTheme, IEnumerable<AttemptResult> attList, ILmsService lmsService)
        {
            _LmsService = lmsService;
            Attempt = attList.First(c => c.User.Username + c.Theme.Name == attemptUsernameAndTheme);
            UserAnswers = _LmsService.FindService<ITestingService>().GetAnswers(Attempt);
        }
        public String GetUserAnswer(AnswerResult answerResult)
        {
            if (answerResult.LearnerResponse != null)
                return answerResult.LearnerResponse.ToString();
            else
                return "";
        }
        public String GetUserScoreForAnswer(AnswerResult answerResult)
        {
            if (answerResult.ScaledScore != null)
                return answerResult.ScaledScore.ToString();
            else
                return "";
        }
    }
}