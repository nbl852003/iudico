﻿using System;
using System.Collections.Generic;
using System.Linq;

using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared.Statistics;
using IUDICO.Common.Models.Shared;

namespace IUDICO.Statistics.Models.StatisticsModels
{
    /// <summary>
    /// This class contain all information that need for displaying of Stats/TopicInfo page
    /// </summary>
    public class TopicInfoModel
    {
        #region Fields

        /// <summary>
        /// Id of selected Curriculum
        /// </summary>
        private readonly int curriculumId;

        private readonly List<AttemptResult> lastAttempts;
        private readonly IEnumerable<User> selectedGroupStudents;
        private readonly IEnumerable<CurriculumChapterTopic> selectedCurriculumChapterTopics;

        #endregion

        public TopicInfoModel(int groupId, int curriculumId, ILmsService lmsService)
        {
            this.lastAttempts = new List<AttemptResult>();

            this.curriculumId = curriculumId;

            var group = lmsService.FindService<IUserService>().GetGroup(groupId);
            this.selectedGroupStudents = lmsService.FindService<IUserService>().GetUsersByGroup(group);

            this.selectedCurriculumChapterTopics = lmsService.FindService<ICurriculumService>().GetCurriculumChapterTopicsByCurriculumId(this.curriculumId);
            foreach (var temp in from student in this.selectedGroupStudents
                                 from curriculumChapterTopic in this.selectedCurriculumChapterTopics
                                 select lmsService.FindService<ITestingService>().GetResults(student, curriculumChapterTopic) into temp 
                                 where temp != null 
                                 select temp)
            {
                var filteredTemp = temp.OrderBy(attempt => attempt.StartTime);
                if (filteredTemp.Count() != 0)
                    this.lastAttempts.Add(filteredTemp.First());
            }
        }

        public IEnumerable<CurriculumChapterTopic> SelectedCurriculumChapterTopics
        {
            get
            {
                return this.selectedCurriculumChapterTopics;
            }
        }

        public IEnumerable<User> SelectedStudents
        {
            get
            {
                return this.selectedGroupStudents;
            }
        }

        public double GetStudentResultForTopic(User student, CurriculumChapterTopic curriculumChapterTopic)
        {
            if (this.AllAttempts.Count != 0)
            {
                var attemptResult =
                    this.AllAttempts.SingleOrDefault(
                        x => x.User.Id == student.Id && x.CurriculumChapterTopic.Id == curriculumChapterTopic.Id);
                if (attemptResult != null)
                {
                    var result = attemptResult.Score.ToPercents();
                    
                    return result.HasValue ? Math.Round((double)result, 2) : 0;
                }
                
                return 0;
            }
            
            return 0;
        }

        public double GetStudentResultForAllTopicsInSelectedDiscipline(User student)
        {
            double result = 0;

            if (this.lastAttempts.Count != 0)
            {
                foreach (var curriculumChapterTopic in this.SelectedCurriculumChapterTopics)
                {
                    if (this.lastAttempts.Count(x => x.User.Id == student.Id && x.CurriculumChapterTopic.Id == curriculumChapterTopic.Id) != 0)
                    {
                        var value = this.lastAttempts.First(x => x.User.Id == student.Id & x.CurriculumChapterTopic.Id == curriculumChapterTopic.Id).Score.ToPercents();
                        
                        if (value.HasValue)
                        {
                            result += Math.Round((double)value, 2);
                        }
                    }
                }
            }

            return result;
        }

        public double GetAllTopicsInSelectedDisciplineMaxMark()
        {
            return 100 * this.selectedCurriculumChapterTopics.Count();
        }

        public double GetMaxResutForTopic(CurriculumChapterTopic curriculumChapterTopic)
        {
            return 100;
        }

        public char Ects(double percent)
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

        public bool ContainsResult(User student, CurriculumChapterTopic curriculumChapterTopic)
        {
            return this.lastAttempts.Count(x => x.User.Id == student.Id & x.CurriculumChapterTopic.Id == curriculumChapterTopic.Id) > 0;
        }

        public long GetAttempId(User student, CurriculumChapterTopic curriculumChapterTopic)
        {
            var res = this.lastAttempts.Find(x => x.User.Id == student.Id & x.CurriculumChapterTopic.Id == curriculumChapterTopic.Id);
            
            return res != null ? res.AttemptId : -1;
        }

        public List<AttemptResult> AllAttempts
        {
            get
            {
                return this.lastAttempts;
            }
        }
    }
}