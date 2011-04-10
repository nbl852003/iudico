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
            Assert.AreEqual(expected.Created, actual.Created);
            Assert.AreEqual(expected.Updated, actual.Updated);
        }

        public static void AreEqual(List<Curriculum> expected, List<Curriculum> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
            }
        }

        public static void AreEqual(Stage expected, Stage actual)
        {
            Assert.AreEqual(expected.Name, actual.Name);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.CurriculumRef, actual.CurriculumRef);
            Assert.AreEqual(expected.Created, actual.Created);
            Assert.AreEqual(expected.Updated, actual.Updated);
        }

        public static void AreEqual(List<Stage> expected,List<Stage> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
            }
        }

        public static void AreEqual(Theme expected, Theme actual)
        {
            Assert.AreEqual(expected.Name, actual.Name);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.CourseRef,actual.CourseRef);
            Assert.AreEqual(expected.ThemeTypeRef, actual.ThemeTypeRef);
            Assert.AreEqual(expected.StageRef, actual.StageRef);
        }

        public static void AreEqual(List<Theme> expected, List<Theme> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
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

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
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

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
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

        public static void AreEqual(ThemeAssignment actual, ThemeAssignment expected)
        {
            Assert.AreEqual(expected.ThemeRef, actual.ThemeRef);
            Assert.AreEqual(expected.Id, actual.Id);
            Assert.AreEqual(expected.IsDeleted, actual.IsDeleted);
            Assert.AreEqual(expected.CurriculumAssignmentRef, actual.CurriculumAssignmentRef);
            Assert.AreEqual(expected.MaxScore, actual.MaxScore);
        }

        public static void AreEqual(List<ThemeAssignment> expected, List<ThemeAssignment> actual)
        {
            Assert.AreEqual(expected.Count, actual.Count);

            for (int i = 0; i < expected.Count; i++)
            {
                AreEqual(expected[i], actual[i]);
            }
        }
    }    
    
    public static class Extensions
    {

    }
}