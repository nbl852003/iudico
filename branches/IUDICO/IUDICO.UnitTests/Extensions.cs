﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using IUDICO.Common.Models;

namespace IUDICO.UnitTests
{
    public static class AdvAssert
    {
        public static void AreEqual(Curriculum expected, Curriculum actual)
        {
            Assert.AreEqual(expected.Name, actual.Name);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.Id, actual.Id);
        }

        public static void AreEqual(Stage expected, Stage actual)
        {
            Assert.AreEqual(expected.Name, actual.Name);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.CurriculumRef, actual.CurriculumRef);
        }

        public static void AreEqual(List<Stage> expected,List<Stage> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            int i = 0;
            foreach (Stage item in expected)
            {
                Assert.AreEqual(item.Name, actual[i].Name);
                Assert.AreEqual(item.IsDeleted, actual[i].IsDeleted);
                Assert.AreEqual(item.Id, actual[i].Id);
                Assert.AreEqual(item.CurriculumRef, actual[i].CurriculumRef);
                i++;
            }
        }

        public static void AreEqual(Theme expected, Theme actual)
        {
            Assert.AreEqual(expected.Name, actual.Name);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.CourseRef,expected.CourseRef);
            Assert.AreEqual(expected.ThemeTypeRef, expected.ThemeTypeRef);
            Assert.AreEqual(expected.StageRef, expected.StageRef);
        }

        public static void AreEqual(List<Theme> expected, List<Theme> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            int i = 0;
            foreach (Theme item in expected)
            {
                Assert.AreEqual(item.Name, actual[i].Name);
                Assert.AreEqual(item.IsDeleted, actual[i].IsDeleted);
                Assert.AreEqual(item.Id, actual[i].Id);
                Assert.AreEqual(item.StageRef, actual[i].StageRef);
                Assert.AreEqual(item.CourseRef, expected[i].CourseRef);
                Assert.AreEqual(item.ThemeTypeRef, expected[i].ThemeTypeRef);
                i++;
            }
        }

        public static void AreEqual(CurriculumAssignment actual, CurriculumAssignment expected)
        {
            Assert.AreEqual(expected.UserGroupRef, actual.UserGroupRef);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.CurriculumRef, actual.CurriculumRef);
        }

        public static void AreEqual(List<CurriculumAssignment> expected, List<CurriculumAssignment> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            int i = 0;
            foreach (CurriculumAssignment item in expected)
            {
                Assert.AreEqual(item.Id, actual[i].Id);
                Assert.AreEqual(item.IsDeleted, actual[i].IsDeleted);
                Assert.AreEqual(item.CurriculumRef, actual[i].CurriculumRef);
                Assert.AreEqual(item.UserGroupRef, actual[i].UserGroupRef);
                i++;
            }
        }

        public static void AreEqual(Timeline actual, Timeline expected)
        {
            Assert.AreEqual(expected.EndDate, actual.EndDate);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.CurriculumAssignmentRef, actual.CurriculumAssignmentRef);
            Assert.AreEqual(expected.StageRef, actual.StageRef);
            Assert.AreEqual(expected.StartDate, actual.StartDate);
        }

        public static void AreEqual(List<Timeline> expected, List<Timeline> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            int i = 0;
            foreach (Timeline item in expected)
            {
                Assert.AreEqual(item.Id, actual[i].Id);
                Assert.AreEqual(item.IsDeleted, actual[i].IsDeleted);
                Assert.AreEqual(item.CurriculumAssignmentRef, actual[i].CurriculumAssignmentRef);
                Assert.AreEqual(item.EndDate, actual[i].EndDate);
                Assert.AreEqual(item.StartDate, actual[i].StartDate);
                i++;
            }
        }

        public static void AreEqual(List<Group> expected, List<Group> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            int i = 0;
            foreach (Group item in expected)
            {
                Assert.AreEqual(item.Id, actual[i].Id);
                Assert.AreEqual(item.Name, actual[i].Name);
                Assert.AreEqual(item.Deleted, actual[i].Deleted);
                Assert.AreEqual(item.GroupUsers, actual[i].GroupUsers);
                i++;
            }
        }
    }
    
    
    public static class Extensions
    {

    }
}
