﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Xml.Serialization;
using IUDICO.Common.Models.Shared;
using IUDICO.Common.Models.Services;
using IUDICO.DisciplineManagement.Helpers;
using IUDICO.DisciplineManagement.Models.Storage;
using System.IO;
using System.Web;

namespace IUDICO.DisciplineManagement.Models
{
    public class ImportExportDiscipline
    {
        private readonly IDisciplineStorage storage;
        private readonly ICourseService courseService;

        private static string BasePath
        {
            get
            {
                try
                {
                    return HttpContext.Current == null ? Path.Combine(Environment.CurrentDirectory, "Site") : HttpContext.Current.Request.PhysicalApplicationPath;
                }
                catch (Exception ex)
                {
                    var path = (new System.Uri(Assembly.GetExecutingAssembly().CodeBase)).AbsolutePath;
                    path = path.Replace("Plugins/IUDICO.DisciplineManagement.DLL", string.Empty);
                    return path;
                }
            }
        }

        public ImportExportDiscipline(IDisciplineStorage storage)
        {
            this.storage = storage;

            FieldInfo fld = storage.GetType().GetField("storage", BindingFlags.Instance | BindingFlags.NonPublic);
            var databaseStorage = fld.GetValue(this.storage);
            FieldInfo field = databaseStorage.GetType().GetField("lmsService", BindingFlags.Instance | BindingFlags.NonPublic);
            this.courseService = (field.GetValue(databaseStorage) as ILmsService).FindService<ICourseService>();
        }

        #region Private helpers

        private static string GetFolderPath()
        {
            return Path.Combine(BasePath, @"Data\Disciplines");
        }

        private static string GetTempFileName(int disciplineId)
        {
            return string.Format("{0}-{1}.disc", disciplineId, Guid.NewGuid());
        }

        private static string GetImportFileName(string fileName)
        {
            return string.Format("{0}-{1}.zip", fileName, Guid.NewGuid());
        }

        private void Serialize(string path, int disciplineId)
        {
            var discipline = this.storage.GetDiscipline(disciplineId);
            var disciplineDto = new DisciplineDto
            {
                Name = discipline.Name,
                Chapters = this.storage.GetChapters(item => item.DisciplineRef == discipline.Id)
                    .Select(chapter => new ChapterDto
                    {
                        Name = chapter.Name,
                        Topics = this.storage.GetTopics(item => item.ChapterRef == chapter.Id)
                            .OrderBy(item => item.SortOrder)
                            .Select(topic => new TopicDto
                                {
                                    Name = topic.Name,
                                    TestCourseName = topic.TestCourseRef == null ?
                                                                         string.Empty :
                                                                         string.Format("{0}-Test_{1}", this.courseService.GetCourse((int)topic.TestCourseRef).Name, (int)topic.TestCourseRef),
                                    TestTopicTypeRef = topic.TestTopicTypeRef,
                                    TheoryCourseName = topic.TheoryCourseRef == null ?
                                                                         string.Empty :
                                                                         string.Format("{0}-Theory_{1}", this.courseService.GetCourse((int)topic.TheoryCourseRef).Name, (int)topic.TheoryCourseRef),
                                    TheoryTopicTypeRef = topic.TheoryTopicTypeRef
                                }).ToList()
                    }).ToList()
            };

            Stream writer = new FileStream(path, FileMode.Create);
            var serializer = new XmlSerializer(disciplineDto.GetType());
            serializer.Serialize(writer, disciplineDto);
            writer.Close();
        }

        private void Deserialize(string path)
        {
            var discFile = Directory.GetFiles(path, "*.disc").FirstOrDefault();
            var reader = new FileStream(discFile, FileMode.Open);
            var serializer = new XmlSerializer(typeof(DisciplineDto));
            var disciplineDto = (DisciplineDto)serializer.Deserialize(reader);
            var currentUser = this.storage.GetCurrentUser().Username;

            var disciplineId = this.storage.AddDiscipline(
                new Discipline
                {
                    Name = disciplineDto.Name,
                    Owner = currentUser
                });

            foreach (var chapterDto in disciplineDto.Chapters)
            {
                var chapterId = this.storage.AddChapter(
                    new Chapter
                    {
                        Name = chapterDto.Name,
                        DisciplineRef = disciplineId
                    });

                foreach (var topicDto in chapterDto.Topics)
                {
                    var topic = new Topic
                          {
                              Name = topicDto.Name,
                              ChapterRef = chapterId,
                              TestTopicTypeRef = topicDto.TestTopicTypeRef,
                              TheoryTopicTypeRef = topicDto.TheoryTopicTypeRef
                          };

                    if (topicDto.TestCourseName != string.Empty)
                    {
                        var testCourseName = topicDto.TestCourseName.Remove(topicDto.TestCourseName.IndexOf("-Test_"));
                        this.courseService.Import(Path.Combine(path, topicDto.TestCourseName + ".zip"), testCourseName, currentUser);
                        var id = this.courseService.GetCourses(this.storage.GetCurrentUser()).Where(c => c.Name == testCourseName).Max(c => c.Id);
                        this.courseService.Unlock(id);
                        topic.TestCourseRef = id;
                    }

                    if (topicDto.TheoryCourseName != string.Empty)
                    {
                        var theoryCourseName = topicDto.TheoryCourseName.Remove(topicDto.TheoryCourseName.IndexOf("-Theory_"));
                        this.courseService.Import(Path.Combine(path, topicDto.TheoryCourseName + ".zip"), theoryCourseName, currentUser);
                        var id = this.courseService.GetCourses(this.storage.GetCurrentUser()).Where(c => c.Name == theoryCourseName).Max(c => c.Id);
                        this.courseService.Unlock(id);
                        topic.TheoryCourseRef = id;
                    }
                    this.storage.AddTopic(topic);
                }
            }
        }

        #endregion

        #region Public methods

        public string GetFileName(int disciplineId)
        {
            return string.Format("{0}.zip", this.storage.GetDiscipline(disciplineId).Name);
        }

        public string Export(int disciplineId)
        {
            var discname = this.storage.GetDiscipline(disciplineId).Name;
            var pathToDisc = Path.Combine(GetFolderPath(), Guid.NewGuid().ToString());
            var tempPath = Path.Combine(pathToDisc, discname);
            Directory.CreateDirectory(tempPath);


            foreach (var chapter in this.storage.GetDiscipline(disciplineId).Chapters)
            {
                foreach (var topic in chapter.Topics)
                {
                    if (topic.TheoryCourseRef != null)
                    {
                        File.Copy(this.courseService.Export((int)topic.TheoryCourseRef), Path.Combine(tempPath, string.Format("{0}-Theory_{1}.zip", this.courseService.GetCourse((int)topic.TheoryCourseRef).Name, (int)topic.TheoryCourseRef)));
                    }
                    if (topic.TestCourseRef != null)
                    {
                        File.Copy(this.courseService.Export((int)topic.TestCourseRef), Path.Combine(tempPath, string.Format("{0}-Test_{1}.zip", this.courseService.GetCourse((int)topic.TestCourseRef).Name, (int)topic.TestCourseRef)));
                    }
                }
            }

            this.Serialize(Path.Combine(tempPath, string.Format("{0}.disc", discname)), disciplineId);
            Zipper.CreateZip(Path.Combine(pathToDisc, discname + ".zip"), tempPath);

            return Path.Combine(pathToDisc, discname + ".zip");
        }


        public void Import(HttpPostedFileBase file)
        {
            var fileName = GetImportFileName(Path.GetFileNameWithoutExtension(file.FileName));
            var path = Path.Combine(GetFolderPath(), fileName);
            Directory.CreateDirectory(GetFolderPath());
            file.SaveAs(path);

            var pathToExtract = Path.Combine(GetFolderPath(), Guid.NewGuid().ToString());
            Zipper.ExtractZipFile(path, pathToExtract);
            this.Deserialize(pathToExtract);
        }

        public void Import(string path)
        {
            var pathToExtract = Path.Combine(GetFolderPath(), Guid.NewGuid().ToString());
            Zipper.ExtractZipFile(path, pathToExtract);
            this.Deserialize(pathToExtract);
        }

        public bool Validate(HttpPostedFileBase file)
        {
            var fileName = GetImportFileName(Path.GetFileNameWithoutExtension(file.FileName));
            var path = Path.Combine(GetFolderPath(), fileName);
            Directory.CreateDirectory(GetFolderPath());
            file.SaveAs(path);
            var pathToExtract = Path.Combine(GetFolderPath(), Guid.NewGuid().ToString());
            Zipper.ExtractZipFile(path, pathToExtract);

            foreach (var courseFile in Directory.GetFiles(pathToExtract, "*.zip"))
            {
                if (!PackageValidator.Validate(courseFile).Contains("Package is valid."))
                {
                    return false;
                }
            }
            if (Directory.GetFiles(pathToExtract, "*.disc").Count() == 0)
            {
                return false;
            }

            return true;
        }

        public bool Validate(string path)
        {
            var pathToExtract = Path.Combine(GetFolderPath(), Guid.NewGuid().ToString());
            Zipper.ExtractZipFile(path, pathToExtract);

            foreach (var courseFile in Directory.GetFiles(pathToExtract, "*.zip"))
            {
                if (!PackageValidator.Validate(courseFile).Contains("Package is valid."))
                {
                    return false;
                }
            }
            if (Directory.GetFiles(pathToExtract, "*.disc").Count() == 0)
            {
                return false;
            }

            return true;
        }
        #endregion
    }

    [Serializable]
    public class DisciplineDto
    {
        public string Name { get; set; }
        public List<ChapterDto> Chapters { get; set; }
    }

    [Serializable]
    public class ChapterDto
    {
        public string Name { get; set; }
        public List<TopicDto> Topics { get; set; }
    }

    [Serializable]
    public class TopicDto
    {
        public string Name { get; set; }
        public string TestCourseName { get; set; }
        public int? TestTopicTypeRef { get; set; }
        public string TheoryCourseName { get; set; }
        public int? TheoryTopicTypeRef { get; set; }
    }
}