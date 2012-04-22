﻿using System.Collections.Generic;
using System.Linq;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared;
using IUDICO.Common.Models.Shared.CurriculumManagement;
using System;
using IUDICO.Common.Models.Shared.DisciplineManagement;

namespace IUDICO.CurriculumManagement.Models.Storage
{
    public class DatabaseCurriculumStorage : ICurriculumStorage
    {
        protected readonly ILmsService _lmsService;
        protected readonly LinqLogger _logger;

        protected virtual IDataContext GetDbContext()
        {
            var db = new DBDataContext();

#if DEBUG
            db.Log = _logger;
#endif

            return db;
        }

        public DatabaseCurriculumStorage(ILmsService lmsService, LinqLogger logger)
        {
            _lmsService = lmsService;
            _logger = logger;
        }

        public DatabaseCurriculumStorage(ILmsService lmsService)
        {
            _lmsService = lmsService;
        }

        #region IStorageInterface Members

        #region External methods

        public User GetCurrentUser()
        {
            return _lmsService.FindService<IUserService>().GetCurrentUser();
        }

        public IList<Course> GetCourses()
        {
            return _lmsService.FindService<ICourseService>().GetCourses(GetCurrentUser()).ToList();
        }

        public Course GetCourse(int id)
        {
            return _lmsService.FindService<ICourseService>().GetCourse(id);
        }

        public Group GetGroup(int id)
        {
            return _lmsService.FindService<IUserService>().GetGroup(id);
        }

        public IList<Group> GetGroups()
        {
            return _lmsService.FindService<IUserService>().GetGroups().ToList();
        }

        public IList<Group> GetGroupsByUser(User user)
        {
            return _lmsService.FindService<IUserService>().GetGroupsByUser(user).ToList();
        }

        public IList<Chapter> GetChapters(int disciplineId)
        {
            return _lmsService.FindService<IDisciplineService>().GetChapters(disciplineId);
        }

        public IList<Topic> GetTopicsByChapterId(int chapterId)
        {
            return _lmsService.FindService<IDisciplineService>().GetTopicsByChapterId(chapterId);
        }

        public IList<Discipline> GetDisciplines(User user)
        {
            return _lmsService.FindService<IDisciplineService>().GetDisciplines(user);
        }

        public Discipline GetDiscipline(int id)
        {
            return _lmsService.FindService<IDisciplineService>().GetDiscipline(id);
        }

        public Chapter GetChapter(int id)
        {
            return _lmsService.FindService<IDisciplineService>().GetChapter(id);
        }

        public Topic GetTopic(int id)
        {
            return _lmsService.FindService<IDisciplineService>().GetTopic(id);
        }

        #endregion

        #region Curriculum methods

        private static Curriculum GetCurriculum(IDataContext db, int id)
        {
            return db.Curriculums.SingleOrDefault(item => item.Id == id && !item.IsDeleted);
        }

        public Curriculum GetCurriculum(int id)
        {
            return GetCurriculum(GetDbContext(), id);
        }

        public IList<Curriculum> GetCurriculums()
        {
            return GetCurriculums(item => true);
        }

        public IList<Curriculum> GetCurriculums(IEnumerable<int> ids)
        {
            return GetDbContext().Curriculums.Where(item => ids.Contains(item.Id) && !item.IsDeleted).ToList();
        }

        public IList<Curriculum> GetCurriculums(User user)
        {
            var disciplines = GetDisciplines(GetCurrentUser());
            return disciplines.SelectMany(discipline => GetCurriculums(c => c.DisciplineRef == discipline.Id))
                .OrderBy(item => item.DisciplineRef)
                .ToList();
        }

        public IList<Curriculum> GetCurriculums(Func<Curriculum, bool> predicate)
        {
            return GetDbContext().Curriculums.Where(item => !item.IsDeleted).Where(predicate).ToList();
        }

        public int AddCurriculum(Curriculum curriculum)
        {
            var db = GetDbContext();
            curriculum.IsDeleted = false;
            curriculum.IsValid = true;

            db.Curriculums.InsertOnSubmit(curriculum);
            db.SubmitChanges();

            //add corresponding curriculum chapters
            var chapters = GetChapters(curriculum.DisciplineRef);
            foreach (var chapter in chapters)
            {
                var curriculumChapter = new CurriculumChapter
                {
                    ChapterRef = chapter.Id,
                    CurriculumRef = curriculum.Id
                };
                AddCurriculumChapter(curriculumChapter);
            }

            return curriculum.Id;
        }

        public void UpdateCurriculum(Curriculum curriculum)
        {
            var db = GetDbContext();
            var oldCurriculum = GetCurriculum(db, curriculum.Id);

            oldCurriculum.UserGroupRef = curriculum.UserGroupRef;
            oldCurriculum.StartDate = curriculum.StartDate;
            oldCurriculum.EndDate = curriculum.EndDate;
            oldCurriculum.IsValid = true;

            db.SubmitChanges();
        }

        public void DeleteCurriculum(int id)
        {
            var db = GetDbContext();
            var curriculum = GetCurriculum(db, id);

            //delete corresponding curriculum chapters
            var curriculumChapterIds = GetCurriculumChapters(item => item.CurriculumRef == id).Select(item => item.Id).ToList();
            DeleteCurriculumChapters(curriculumChapterIds);

            curriculum.IsDeleted = true;
            db.SubmitChanges();
        }

        public void DeleteCurriculums(IEnumerable<int> ids)
        {
            ids.ForEach(DeleteCurriculum);
        }

        public IList<TopicDescription> GetTopicDescriptions(User user)
        {
            var result = new List<TopicDescription>();
            var groups = GetGroupsByUser(user).ToList(); //get groups for user
            var dateNow = DateTime.Now;
            var curriculums = groups
                .SelectMany(group => GetCurriculums(c => c.UserGroupRef == group.Id))
                .Where(curriculum => dateNow.Between(curriculum.StartDate, curriculum.EndDate))
                .ToList();
            var curriculumChapters = curriculums
                .SelectMany(curriculum => GetCurriculumChapters(item => item.CurriculumRef == curriculum.Id))
                .Where(curriculumChapter => dateNow.Between(curriculumChapter.StartDate, curriculumChapter.EndDate))
                .ToList();
            var curriculumChapterTopics = curriculumChapters
                .SelectMany(curriculumChapter => GetCurriculumChapterTopics(item => item.CurriculumChapterRef == curriculumChapter.Id));
            //.Where(curriculumChapterTopic => dateNow.Between(curriculumChapterTopic.StartDate, curriculumChapterTopic.EndDate))
            //.ToList();

            var blockedCurriculumIds = new List<int>();
            foreach (var curriculumChapterTopic in curriculumChapterTopics)
            {
                TopicDescription testTopicDescription = null;
                TopicDescription theoryTopicDescription = null;
                if (curriculumChapterTopic.Topic.TestCourseRef.HasValue && dateNow.Between(curriculumChapterTopic.TestStartDate, curriculumChapterTopic.TestEndDate))
                {
                    testTopicDescription = new TopicDescription
                    {
                        CourseId = curriculumChapterTopic.Topic.TestCourseRef,
                        CurriculumChapterTopicId = curriculumChapterTopic.Id,
                        Topic = curriculumChapterTopic.Topic,
                        TopicType = Converter.ToTopicType(curriculumChapterTopic.Topic.TestTopicType),
                        TopicPart = TopicPart.Test,
                        Chapter = curriculumChapterTopic.CurriculumChapter.Chapter,
                        Discipline = curriculumChapterTopic.CurriculumChapter.Curriculum.Discipline,
                        Curriculum = curriculumChapterTopic.CurriculumChapter.Curriculum,
                        StartDate = curriculumChapterTopic.TestStartDate.Value,
                        EndDate = curriculumChapterTopic.TestEndDate.Value
                    };
                }
                if (curriculumChapterTopic.Topic.TheoryCourseRef.HasValue && dateNow.Between(curriculumChapterTopic.TheoryStartDate, curriculumChapterTopic.TheoryEndDate))
                {
                    theoryTopicDescription = new TopicDescription
                    {
                        CourseId = curriculumChapterTopic.Topic.TheoryCourseRef,
                        CurriculumChapterTopicId = curriculumChapterTopic.Id,
                        Topic = curriculumChapterTopic.Topic,//???
                        TopicType = Converter.ToTopicType(curriculumChapterTopic.Topic.TheoryTopicType),//???
                        TopicPart = TopicPart.Theory,
                        Chapter = curriculumChapterTopic.CurriculumChapter.Chapter,//???
                        Discipline = curriculumChapterTopic.CurriculumChapter.Curriculum.Discipline,//???
                        Curriculum = curriculumChapterTopic.CurriculumChapter.Curriculum,//???
                        StartDate = curriculumChapterTopic.TheoryStartDate.Value,
                        EndDate = curriculumChapterTopic.TheoryEndDate.Value
                    };
                }

                var blockTopicAtTesting = false;
                if (testTopicDescription != null)
                {
                    blockTopicAtTesting = curriculumChapterTopic.BlockTopicAtTesting;
                    if (curriculumChapterTopic.BlockCurriculumAtTesting)
                    {
                        blockedCurriculumIds.Add(curriculumChapterTopic.CurriculumChapter.CurriculumRef); //???
                    }
                    result.Add(testTopicDescription);
                }

                if (theoryTopicDescription != null && !blockTopicAtTesting)
                {
                    result.Add(theoryTopicDescription);
                }
            }
            result = result
                .Where(item => !blockedCurriculumIds.Contains(item.Curriculum.Id) || item.TopicPart != TopicPart.Theory)
                    .ToList();

            return result;
        }

        //TODO: FatTony: get rid of this method!
        public IEnumerable<TopicDescription> GetTopicDescriptionsByTopics(IEnumerable<Topic> topics, User user)
        {
            var result = new List<TopicDescription>();
            var groups = GetGroupsByUser(user).ToList();
            var dateNow = DateTime.Now;

            var curriculums = groups
                .SelectMany(group => GetCurriculums(c => c.UserGroupRef == group.Id))
                .Where(curriculum => dateNow.Between(curriculum.StartDate, curriculum.EndDate))
                .ToList();

            var curriculumChapters = curriculums
                .SelectMany(curriculum => GetCurriculumChapters(item => item.CurriculumRef == curriculum.Id))
                .Where(curriculumChapter => dateNow.Between(curriculumChapter.StartDate, curriculumChapter.EndDate))
                .ToList();

            var curriculumChapterTopics = curriculumChapters
                .SelectMany(curriculumChapter => GetCurriculumChapterTopics(item => item.CurriculumChapterRef == curriculumChapter.Id))
                .Where(cc => topics.Select(t => t.Id).Contains(cc.TopicRef));

            var blockedCurriculumIds = new List<int>();

            foreach (var curriculumChapterTopic in curriculumChapterTopics)
            {
                TopicDescription testTopicDescription = null;
                TopicDescription theoryTopicDescription = null;

                if (curriculumChapterTopic.Topic.TestCourseRef.HasValue && dateNow.Between(curriculumChapterTopic.TestStartDate, curriculumChapterTopic.TestEndDate))
                {
                    testTopicDescription = new TopicDescription
                    {
                        CourseId = curriculumChapterTopic.Topic.TestCourseRef,
                        CurriculumChapterTopicId = curriculumChapterTopic.Id,
                        Topic = curriculumChapterTopic.Topic,
                        TopicType = Converter.ToTopicType(curriculumChapterTopic.Topic.TestTopicType),
                        TopicPart = TopicPart.Test,
                        Chapter = curriculumChapterTopic.CurriculumChapter.Chapter,
                        Discipline = curriculumChapterTopic.CurriculumChapter.Curriculum.Discipline,
                        Curriculum = curriculumChapterTopic.CurriculumChapter.Curriculum,
                        StartDate = curriculumChapterTopic.TestStartDate.Value,
                        EndDate = curriculumChapterTopic.TestEndDate.Value
                    };
                }

                if (curriculumChapterTopic.Topic.TheoryCourseRef.HasValue && dateNow.Between(curriculumChapterTopic.TheoryStartDate, curriculumChapterTopic.TheoryEndDate))
                {
                    theoryTopicDescription = new TopicDescription
                    {
                        CourseId = curriculumChapterTopic.Topic.TheoryCourseRef,
                        CurriculumChapterTopicId = curriculumChapterTopic.Id,
                        Topic = curriculumChapterTopic.Topic,//???
                        TopicType = Converter.ToTopicType(curriculumChapterTopic.Topic.TheoryTopicType),//???
                        TopicPart = TopicPart.Theory,
                        Chapter = curriculumChapterTopic.CurriculumChapter.Chapter,//???
                        Discipline = curriculumChapterTopic.CurriculumChapter.Curriculum.Discipline,//???
                        Curriculum = curriculumChapterTopic.CurriculumChapter.Curriculum,//???
                        StartDate = curriculumChapterTopic.TheoryStartDate.Value,
                        EndDate = curriculumChapterTopic.TheoryEndDate.Value
                    };
                }

                var blockTopicAtTesting = false;

                if (testTopicDescription != null)
                {
                    blockTopicAtTesting = curriculumChapterTopic.BlockTopicAtTesting;

                    if (curriculumChapterTopic.BlockCurriculumAtTesting)
                    {
                        blockedCurriculumIds.Add(curriculumChapterTopic.CurriculumChapter.CurriculumRef);
                    }

                    result.Add(testTopicDescription);
                }

                if (theoryTopicDescription != null && !blockTopicAtTesting)
                {
                    result.Add(theoryTopicDescription);
                }
            }

            result = result.Where(item => !blockedCurriculumIds.Contains(item.Curriculum.Id) || item.TopicPart != TopicPart.Theory).ToList();

            return result;
        }

        //public void MakeCurriculumsInvalid(int groupId)
        //{
        //    var db = GetDbContext();
        //    var curriculums = GetCurriculumsByGroupId(db, groupId);
        //    foreach (var curriculum in curriculums)
        //    {
        //        curriculum.IsValid = false;
        //    }
        //    db.SubmitChanges();
        //}

        #endregion

        #region CurriculumChapters methods

        private static CurriculumChapter GetCurriculumChapter(IDataContext db, int id)
        {
            return db.CurriculumChapters.SingleOrDefault(item => !item.IsDeleted && item.Id == id);
        }

        public CurriculumChapter GetCurriculumChapter(int id)
        {
            return GetCurriculumChapter(GetDbContext(), id);
        }

        //public IList<CurriculumChapter> GetCurriculumChaptersByCurriculumId(int curriculumId)
        //{
        //    return GetDbContext().CurriculumChapters.Where(item => !item.IsDeleted && item.CurriculumRef == curriculumId).ToList();
        //}

        //public IList<CurriculumChapter> GetCurriculumChaptersByChapterId(int chapterId)
        //{
        //    return GetDbContext().CurriculumChapters.Where(item => !item.IsDeleted && item.ChapterRef == chapterId).ToList();
        //}

        public IList<CurriculumChapter> GetCurriculumChapters(Func<CurriculumChapter, bool> predicate)
        {
            return GetDbContext().CurriculumChapters.Where(item => !item.IsDeleted).Where(predicate).ToList();
        }

        public int AddCurriculumChapter(CurriculumChapter curriculumChapter)
        {
            var db = GetDbContext();

            curriculumChapter.IsDeleted = false;

            db.CurriculumChapters.InsertOnSubmit(curriculumChapter);
            db.SubmitChanges();

            //add corresponding curriculum chapter topics
            var topics = GetTopicsByChapterId(curriculumChapter.ChapterRef);
            foreach (var topic in topics)
            {
                var curriculumChapterTopic = new CurriculumChapterTopic
                {
                    CurriculumChapterRef = curriculumChapter.Id,
                    TopicRef = topic.Id,
                    MaxScore = Constants.DefaultTopicMaxScore,
                    BlockTopicAtTesting = false,
                    BlockCurriculumAtTesting = false
                };
                AddCurriculumChapterTopic(curriculumChapterTopic);
            }

            return curriculumChapter.Id;
        }

        public void UpdateCurriculumChapter(CurriculumChapter curriculumChapter)
        {
            var db = GetDbContext();
            var oldCurriculumChapter = GetCurriculumChapter(db, curriculumChapter.Id);

            oldCurriculumChapter.StartDate = curriculumChapter.StartDate;
            oldCurriculumChapter.EndDate = curriculumChapter.EndDate;

            db.SubmitChanges();
        }

        public void DeleteCurriculumChapter(int id)
        {
            var db = GetDbContext();
            var curriculumChapter = GetCurriculumChapter(db, id);

            //delete corresponding curriculum chapter topics
            var curriculumChapterTopicIds = GetCurriculumChapterTopics(item => item.CurriculumChapterRef == id)
                .Select(item => item.Id)
                .ToList();
            DeleteCurriculumChapterTopics(curriculumChapterTopicIds);

            curriculumChapter.IsDeleted = true;
            db.SubmitChanges();
        }

        public void DeleteCurriculumChapters(IEnumerable<int> ids)
        {
            ids.ForEach(DeleteCurriculumChapter);
        }

        #endregion

        #region CurriculumChapterTopic methods

        private static CurriculumChapterTopic GetCurriculumChapterTopic(IDataContext db, int id)
        {
            return db.CurriculumChapterTopics.SingleOrDefault(item => item.Id == id && !item.IsDeleted);
        }

        public CurriculumChapterTopic GetCurriculumChapterTopic(int id)
        {
            return GetCurriculumChapterTopic(GetDbContext(), id);
        }

        //public IList<CurriculumChapterTopic> GetCurriculumChapterTopicsByCurriculumChapterId(int curriculumChapterId)
        //{
        //    return GetDbContext().CurriculumChapterTopics.Where(item => item.CurriculumChapterRef == curriculumChapterId && !item.IsDeleted).ToList();
        //}

        //public IList<CurriculumChapterTopic> GetCurriculumChapterTopicsByTopicId(int topicId)
        //{
        //    return GetDbContext().CurriculumChapterTopics.Where(item => item.TopicRef == topicId && !item.IsDeleted).ToList();
        //}

        public IList<CurriculumChapterTopic> GetCurriculumChapterTopics(Func<CurriculumChapterTopic, bool> predicate)
        {
            return GetDbContext().CurriculumChapterTopics.Where(item => !item.IsDeleted).Where(predicate).ToList();
        }

        public int AddCurriculumChapterTopic(CurriculumChapterTopic curriculumChapterTopic)
        {
            var db = GetDbContext();

            curriculumChapterTopic.IsDeleted = false;

            db.CurriculumChapterTopics.InsertOnSubmit(curriculumChapterTopic);
            db.SubmitChanges();
            return curriculumChapterTopic.Id;
        }

        public void UpdateCurriculumChapterTopic(CurriculumChapterTopic curriculumChapterTopic)
        {
            var db = GetDbContext();
            var oldTopicAssignment = GetCurriculumChapterTopic(db, curriculumChapterTopic.Id);

            oldTopicAssignment.MaxScore = curriculumChapterTopic.MaxScore;
            oldTopicAssignment.BlockCurriculumAtTesting = curriculumChapterTopic.BlockCurriculumAtTesting;
            oldTopicAssignment.BlockTopicAtTesting = curriculumChapterTopic.BlockTopicAtTesting;
            oldTopicAssignment.TheoryStartDate = curriculumChapterTopic.TheoryStartDate;
            oldTopicAssignment.TheoryEndDate = curriculumChapterTopic.TheoryEndDate;
            oldTopicAssignment.TestStartDate = curriculumChapterTopic.TestStartDate;
            oldTopicAssignment.TestEndDate = curriculumChapterTopic.TestEndDate;

            db.SubmitChanges();
        }

        public void DeleteCurriculumChapterTopic(int id)
        {
            var db = GetDbContext();
            var curriculumChapterTopic = GetCurriculumChapterTopic(db, id);

            curriculumChapterTopic.IsDeleted = true;

            db.SubmitChanges();
        }

        public void DeleteCurriculumChapterTopics(IEnumerable<int> ids)
        {
            ids.ForEach(DeleteCurriculumChapterTopic);
        }

        public bool CanPassCurriculumChapterTopic(User user, CurriculumChapterTopic curriculumChapterTopic, TopicTypeEnum topicType)
        {
            // TODO: implement in more sophisticated and performance-proof maner

            var descriptions = GetTopicDescriptions(user);

            var selectedDescriptions =
                descriptions.Where(desc => desc.CurriculumChapterTopicId == curriculumChapterTopic.Id
                                           && desc.TopicType == topicType);

            return selectedDescriptions.Count() == 1;
        }

        #endregion

        //#region Group methods

        //public IList<Group> GetAssignedGroups(int disciplineId)
        //{
        //    return GetCurriculumsByDisciplineId(disciplineId).Select(item => GetGroup(item.UserGroupRef)).ToList();
        //}

        //public IList<Group> GetNotAssignedGroups(int disciplineId)
        //{
        //    var assignedGroupIds = GetAssignedGroups(disciplineId).Select(item => item.Id);
        //    return GetGroups().Where(item => !assignedGroupIds.Contains(item.Id)).ToList();
        //}

        //public IList<Group> GetNotAssignedGroupsWithCurrentGroup(int disciplineId, int currentGroupId)
        //{
        //    var groups = GetNotAssignedGroups(disciplineId);
        //    groups.Add(GetGroup(currentGroupId));
        //    return groups;
        //}

        //#endregion

        #endregion
    }
}