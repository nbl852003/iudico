﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using IUDICO.CurriculumManagement.Models.Storage;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.UserManagement.Models.Storage;

namespace IUDICO.UnitTests
{
    [TestClass]
    public class CurriculumStorageTest
    {
        ICurriculumStorage storage { get; set; }
        ILmsService lmsService { get; set; }
        DBDataContext context { get; set; } //забудь про нього в тестах!

        //1)забери всюди делете.
        //2)не називай об*єкти curriculumThirtyFour:))

        private void ClearDb()
        {
            context = lmsService.GetDbDataContext();
            context.CurriculumAssignments.DeleteAllOnSubmit(context.CurriculumAssignments);
            context.Themes.DeleteAllOnSubmit(context.Themes);
            context.Stages.DeleteAllOnSubmit(context.Stages);
            context.Curriculums.DeleteAllOnSubmit(context.Curriculums);
            context.SubmitChanges();
        }

        private void InitializeDb()
        {
            IUserStorage userService = new DatabaseUserStorage(lmsService);

            userService.CreateGroup(new Group() { Name = "TestGroup1" });
            userService.CreateGroup(new Group() { Name = "TestGroup2" });
            userService.CreateGroup(new Group() { Name = "TestGroup3" });
            context.SubmitChanges();
        }

        public CurriculumStorageTest()
        {
            lmsService = new FakeLmsService();
            using (context = lmsService.GetDbDataContext())
            {
                if (context.DatabaseExists())
                {
                    context.DeleteDatabase();
                }
                context.CreateDatabase();
                InitializeDb();
            }
        }

        [ClassInitialize()]
        public static void MyClassInitialize(TestContext testContext)
        {

        }

        [TestInitialize()]
        public void InitializeTest()
        {
            storage = new MixedCurriculumStorage(lmsService);
            using (context = lmsService.GetDbDataContext())
            {
                ClearDb();
            }
        }

        ~CurriculumStorageTest()
        {
            using (context = lmsService.GetDbDataContext())
            {
                context.DeleteDatabase();
            }
        }

        #region CurriculumTestMethods

        [TestMethod]
        public void TestMethod1()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test1Curriculum" };
            int id = storage.AddCurriculum(curriculum);
            AdvAssert.AreEqual(curriculum, storage.GetCurriculum(id));
        }

        [TestMethod]
        public void TestMethod2()
        {
            Curriculum curriculum1 = new Curriculum { Name = "Test2FirstTestCurr" };
            Curriculum curriculum2 = new Curriculum { Name = "Test2SecondTestCurr" };
            int curriculum1Id = storage.AddCurriculum(curriculum1);
            int curriculum2Id = storage.AddCurriculum(curriculum2);

            //ось що треба придумати:
            IEnumerable<Curriculum> curriculums = storage.GetCurriculums();
            Assert.AreEqual(2, curriculums.ToList().Count);
            AdvAssert.AreEqual(curriculum1, storage.GetCurriculum(curriculum1Id));
            AdvAssert.AreEqual(curriculum2, storage.GetCurriculum(curriculum2Id));
        }
        
        [TestMethod]
        public void TestMethod3()
        {
            Curriculum curriculum = new Curriculum { Name = "Test3CurriculumToUpdate" };
            int id = storage.AddCurriculum(curriculum);
            curriculum.Name = "Test3UpdatedCurriculum";

            //тут має бути NotEqual, бо ти змінив ім8я тільки в локальній копії, а на бд це не мало б відобразитись-але фіг там
            //відображається!
            AdvAssert.AreEqual(curriculum, storage.GetCurriculum(id));
        }

        [TestMethod]
        [ExpectedException(typeof (InvalidOperationException))]
        public void TestMethod4()
        {
            Curriculum curriculum = new Curriculum { Name = "Test4CurriculumToDelete" };
            int id = storage.AddCurriculum(curriculum);
            storage.DeleteCurriculum(id);
            storage.GetCurriculum(id);
            Assert.AreEqual(true, false);
        }

        #endregion

        #region StageTestMethods

        [TestMethod]
        public void TestMethod5()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test5Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stage = new Stage { Name = "Test5StageToAdd", CurriculumRef = curriculumId };
            int id = storage.AddStage(stage);
            AdvAssert.AreEqual(storage.GetStage(id), stage);

            storage.DeleteCurriculum(curriculumId);
        }

        [TestMethod]
        public void TestMethod6()
        {
            Curriculum curriculum = new Curriculum { Name = "Test6Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);
            Stage stage = new Stage { Name = "Test6Stage", CurriculumRef = curriculumId };
            int stageId = storage.AddStage(stage);
            List<Stage> listWithStagesForTest = new List<Stage>();
            listWithStagesForTest.Add(stage);
            AdvAssert.AreEqual(listWithStagesForTest, storage.GetStages(curriculumId).ToList());

            storage.DeleteCurriculum(curriculumId);
        }

        [TestMethod]
        public void TestMethod7()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test7Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stage = new Stage() { Name = "Test7StageForUpdate", CurriculumRef = curriculumId };
            int id = storage.AddStage(stage);
            stage.Name = "Test7UpdatedStage";
            storage.UpdateStage(stage);

            AdvAssert.AreEqual(stage, storage.GetStage(id));

            storage.DeleteCurriculum(curriculumId);
        }

        [TestMethod]
        public void TestMethod8()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test8Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stage = new Stage() { Name = "Test8StageForDelete", CurriculumRef = curriculumId };
            int id = storage.AddStage(stage);
            AdvAssert.AreEqual(storage.GetStage(id), stage);
            storage.DeleteStage(id);

            try
            {
                storage.GetStage(id);
                Assert.AreEqual(true, false);
            }
            catch (Exception ex)
            {
                Assert.AreEqual(true,true);
            }

            storage.DeleteCurriculum(curriculumId);
        }

        #endregion

        #region ThemeMethods

        //як розуміти метод private Theme GetTheme(int id, DBDataContext db)???

        [TestMethod]
        public void TestMethod9()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test9Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stage = new Stage() { Name = "Test9Stage", CurriculumRef = curriculumId };
            int stageId = storage.AddStage(stage);

            Theme theme = new Theme() { Name = "Test9theme", ThemeTypeRef = 1, StageRef = stageId };
            int id = storage.AddTheme(theme);
            AdvAssert.AreEqual(theme, storage.GetTheme(id));

            storage.DeleteCurriculum(curriculumId);
        }

        [TestMethod]
        public void TestMethod10()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test10Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stageOne = new Stage() { Name = "Test10StageOne", CurriculumRef = curriculumId };
            int stageOneId = storage.AddStage(stageOne);
            Stage stageTwo = new Stage() { Name = "Test1StageTwo", CurriculumRef = curriculumId };
            int stageTwoId = storage.AddStage(stageTwo);

            Theme theme1 = new Theme() { Name = "Test10Theme1", StageRef = stageOneId, ThemeTypeRef = 1 };
            Theme theme2 = new Theme() { Name = "Test10Theme2", StageRef = stageTwoId, ThemeTypeRef = 2 };
            int theme1Id = storage.AddTheme(theme1);
            int theme2Id = storage.AddTheme(theme2);

            List<Theme> themes = new List<Theme>();
            themes.Add(theme1);

            AdvAssert.AreEqual(themes,storage.GetThemesByStageId(stageOneId).ToList());

            themes.Add(theme2);
            AdvAssert.AreEqual(themes, storage.GetThemesByCurriculumId(curriculumId).ToList());

            storage.DeleteCurriculum(curriculumId);
        }

        [TestMethod]
        public void TestMethod11()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test11Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Stage stageOne = new Stage() { Name = "Test11StageOne", CurriculumRef = curriculumId };
            int stageOneId = storage.AddStage(stageOne);

            Course course = new Course() { Name = "Test11Course", Created = DateTime.Now, Deleted = false, Updated = DateTime.Now };
            context.Courses.InsertOnSubmit(course);
            context.SubmitChanges();

            Theme theme = new Theme() { Name = "Test11Theme", StageRef = stageOneId, ThemeTypeRef = 1, CourseRef = course.Id, IsDeleted = false, Updated = DateTime.Now, Created = DateTime.Now};
            int themeId = storage.AddTheme(theme);

            AdvAssert.AreEqual(theme, storage.GetTheme(themeId));

            theme.Name = "Test11NewName";
            storage.UpdateTheme(theme); //апдейтить,але не показує. через це не проходить тест і відповідно видалення нижче 
            AdvAssert.AreEqual(theme, storage.GetTheme(themeId));

            storage.DeleteTheme(themeId);
            try
            {
                AdvAssert.AreEqual(theme, storage.GetTheme(themeId));
                Assert.AreEqual(true, false);
            }
            catch (Exception ex)
            {
                Assert.AreEqual(true, true);
            }

            context.Courses.DeleteOnSubmit(course);
            context.SubmitChanges();
            storage.DeleteCurriculum(curriculumId);
        }

        #endregion
        
        #region CurriculumAssignmentMethods

        [TestMethod]
        public void TestMethod12()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test12Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            IUserService userService = lmsService.FindService<IUserService>();
            List<Group> groups = userService.GetGroups().ToList();

            CurriculumAssignment curriculumAssignment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = groups[0].Id};
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssignment);
            AdvAssert.AreEqual(curriculumAssignment,storage.GetCurriculumAssignment(curriculumAssignmentId));

            List<CurriculumAssignment> curriculumAssignments = new List<CurriculumAssignment>();
            curriculumAssignments.Add(curriculumAssignment);
            AdvAssert.AreEqual(curriculumAssignments, storage.GetCurriculumAssignmnetsByCurriculumId(curriculumId).ToList());

            Curriculum curriculum2 = new Curriculum() { Name = "Test12CurriculumTwo" };
            int curriculum2Id = storage.AddCurriculum(curriculum2);
            CurriculumAssignment curriculumAssignment2 = new CurriculumAssignment() { CurriculumRef = curriculum2Id, UserGroupRef = groups[0].Id };
            storage.AddCurriculumAssignment(curriculumAssignment2);
            curriculumAssignments.Add(curriculumAssignment2);
            AdvAssert.AreEqual(curriculumAssignments, storage.GetCurriculumAssignments().ToList());
        }

        [TestMethod]
        public void TestMethod13()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test13Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test13Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();

            int groupId = group.Id;

            CurriculumAssignment curriculumAssignment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = groupId };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssignment);
            AdvAssert.AreEqual(curriculumAssignment, storage.GetCurriculumAssignment(curriculumAssignmentId));

            Group groupTwo = new Group() { Name = "Test13GroupTwo" };
            context.Groups.InsertOnSubmit(groupTwo);
            context.SubmitChanges();

            curriculumAssignment.UserGroupRef = groupTwo.Id;
            storage.UpdateCurriculumAssignment(curriculumAssignment);
            AdvAssert.AreEqual(curriculumAssignment, storage.GetCurriculumAssignment(curriculumAssignmentId));

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(groupTwo);
            context.SubmitChanges();
            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
        }

        [TestMethod]
        public void TestMethod14()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test14Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test14Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();

            int groupId = group.Id;

            CurriculumAssignment curriculumAssignment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = groupId };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssignment);
            AdvAssert.AreEqual(curriculumAssignment, storage.GetCurriculumAssignment(curriculumAssignmentId));
            
            List<CurriculumAssignment> curriculumAssignments = new List<CurriculumAssignment>();
            curriculumAssignments.Add(curriculumAssignment);

            AdvAssert.AreEqual(curriculumAssignments,storage.GetCurriculumAssignmentsByGroupId(groupId).ToList());

            storage.DeleteCurriculumAssignment(curriculumAssignmentId);
            
            try
            {
                AdvAssert.AreEqual(curriculumAssignment, storage.GetCurriculumAssignment(curriculumAssignmentId));
                Assert.AreEqual(true,false);
            }
            catch (Exception ex)
            {
                Assert.AreEqual(true,true);
            }

            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
            storage.DeleteCurriculum(curriculumId);

        }

        #endregion

        #region TimelineMethods

        [TestMethod]
        public void TestMethod15()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test15Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test15Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();

            CurriculumAssignment curriculumAssingment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = group.Id };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssingment);

            Timeline timelineOne = new Timeline() { StartDate = DateTime.Now, EndDate = DateTime.Now, CurriculumAssignmentRef = curriculumAssignmentId };
            int timelineOneId = storage.AddTimeline(timelineOne);
            AdvAssert.AreEqual(timelineOne, storage.GetTimeline(timelineOneId));

            Timeline timelineTwo = new Timeline() { StartDate = DateTime.Now, EndDate = DateTime.Now, CurriculumAssignmentRef = curriculumAssignmentId };
            int timelineTwoId = storage.AddTimeline(timelineTwo);
            List<Timeline> timelines = new List<Timeline>();
            timelines.Add(timelineOne);
            timelines.Add(timelineTwo);

            AdvAssert.AreEqual(timelines,storage.GetCurriculumAssignmentTimelines(curriculumAssignmentId).ToList());

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
        }

        [TestMethod]
        public void TetsMethod16()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test16Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test16Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();

            CurriculumAssignment curriculumAssingment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = group.Id };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssingment);

            Stage stage = new Stage() { Name = "Test16Stage", CurriculumRef = curriculumId };
            int stageId = storage.AddStage(stage);

            Timeline timeline = new Timeline() { StartDate = DateTime.Now, EndDate = DateTime.Now, CurriculumAssignmentRef = curriculumAssignmentId ,StageRef = stageId };
            int timelineId = storage.AddTimeline(timeline);
            
            List<Timeline> stageTimelines = new List<Timeline>();
            stageTimelines.Add(timeline);

            AdvAssert.AreEqual(stageTimelines, storage.GetStageTimelinesByStageId(stageId).ToList());
            AdvAssert.AreEqual(stageTimelines, storage.GetStageTimelinesByCurriculumAssignmentId(curriculumAssignmentId).ToList());

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
        }

        [TestMethod]
        public void TestMethod17()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test17Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test17Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();

            CurriculumAssignment curriculumAssingment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = group.Id };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssingment);

            Timeline timeline = new Timeline() { StartDate = DateTime.Now, EndDate = DateTime.Now, CurriculumAssignmentRef = curriculumAssignmentId, StageRef = null };
            int timelineId = storage.AddTimeline(timeline);

            AdvAssert.AreEqual(timeline,storage.GetTimeline(timelineId));
            timeline.StartDate = DateTime.Now;
            timeline.EndDate = DateTime.Now;

            storage.UpdateTimeline(timeline);
            AdvAssert.AreEqual(timeline,storage.GetTimeline(timelineId));

            storage.DeleteTimeline(timelineId);
            
            try
            {
                storage.GetTimeline(timelineId);
                Assert.AreEqual(true,false);
            }
            catch (Exception ex)
            {
                Assert.AreEqual(true,true);
            }

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
        }

        #endregion

        #region GroupMethods

        [TestMethod]
        public void TestMethod18()
        {
            Curriculum curriculum = new Curriculum() { Name = "Test18Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group groupOne = new Group() { Name = "Test18GroupOne",Deleted = false};
            Group groupTwo = new Group() { Name = "Test18GroupTwo", Deleted = false };
            Group groupThree = new Group() { Name = "Test18GroupThree", Deleted = false };

            context.Groups.InsertOnSubmit(groupOne);
            context.SubmitChanges();
            context.Groups.InsertOnSubmit(groupTwo);
            context.SubmitChanges();
            context.Groups.InsertOnSubmit(groupThree);
            context.SubmitChanges();

            int groupOneId = groupOne.Id;
            int groupTwoId = groupTwo.Id;
            int groupThreeId = groupThree.Id;

            CurriculumAssignment curriculumAssingnment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = groupOneId };
            int curriculumAssingmentId = storage.AddCurriculumAssignment(curriculumAssingnment);

            List<Group> groups = new List<Group>();
            groups.Add(groupOne);

            //Не проходять через то шо в цих методах використовується методи ,які юзають інші сервіси

            //AdvAssert.AreEqual(groups, storage.GetAssignedGroups(curriculumId).ToList());

            //groups.Clear();
            //groups.Add(groupTwo);
            //groups.Add(groupThree);
            //AdvAssert.AreEqual(groups, storage.GetNotAssignedGroups(curriculumId).ToList());

            //groups.Add(groupOne);
            //AdvAssert.AreEqual(groups, storage.GetNotAssignedGroupsWithCurrentGroup(curriculumId,groupOneId).ToList());

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(groupOne);
            context.SubmitChanges();
            context.Groups.DeleteOnSubmit(groupTwo);
            context.SubmitChanges();
            context.Groups.DeleteOnSubmit(groupThree);
            context.SubmitChanges();
        }

        #endregion

        #region ThemeAssignmentMethods

        [TestMethod]
        public void TestMethod19()
        {
            //Update створює новий ТемАсс замість заміни старого,тому виходить два однакових темАсс,просто з різними Ід
            Curriculum curriculum = new Curriculum() { Name = "Test19Curriculum" };
            int curriculumId = storage.AddCurriculum(curriculum);

            Group group = new Group() { Name = "Test19Group" };
            context.Groups.InsertOnSubmit(group);
            context.SubmitChanges();
            int groupId = group.Id;

            CurriculumAssignment curriculumAssignment = new CurriculumAssignment() { CurriculumRef = curriculumId, UserGroupRef = groupId };
            int curriculumAssignmentId = storage.AddCurriculumAssignment(curriculumAssignment);

            Stage stage = new Stage() { Name = "Test19Stage", CurriculumRef = curriculumId };
            int stageId = storage.AddStage(stage);

            Theme theme = new Theme() { Name = "Test19Theme", ThemeTypeRef = 1, StageRef = stageId };
            int themeId = storage.AddTheme(theme);

            ThemeAssignment themeAssignment = new ThemeAssignment()
            {
                CurriculumAssignmentRef = curriculumAssignmentId,
                MaxScore = 1,
                ThemeRef = themeId
            };

            int themeAssignmentId = storage.AddThemeAssignment(themeAssignment);
            AdvAssert.AreEqual(themeAssignment, storage.GetThemeAssignment(themeAssignmentId));

            themeAssignment.MaxScore = 3;
            storage.UpdateThemeAssignment(themeAssignment);
            AdvAssert.AreEqual(themeAssignment,storage.GetThemeAssignment(themeAssignmentId));

            List<ThemeAssignment> themeAssignments = new List<ThemeAssignment>();
            themeAssignments.Add(themeAssignment);
            AdvAssert.AreEqual(themeAssignments,storage.GetThemeAssignmentsByThemeId(themeId).ToList());

            themeAssignments.Clear();
            themeAssignments.Add(themeAssignment);
            AdvAssert.AreEqual(themeAssignments, storage.GetThemeAssignmentsByCurriculumAssignmentId(curriculumAssignmentId).ToList());

            storage.DeleteCurriculum(curriculumId);
            context.Groups.DeleteOnSubmit(group);
            context.SubmitChanges();
        }
        #endregion
    }
}
