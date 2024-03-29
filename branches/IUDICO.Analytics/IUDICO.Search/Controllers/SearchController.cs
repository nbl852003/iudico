﻿using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Linq;
using IUDICO.Common.Controllers;
//using IUDICO.Common.Messages.CourseMgt;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Shared;
using IUDICO.Search.Models.SearchResult;
using Lucene.Net.Store;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Standard;
using Version = Lucene.Net.Util.Version;
using Lucene.Net.Index;
using Lucene.Net;
using Lucene.Net.Documents;
using Lucene.Net.Search;
using Lucene.Net.QueryParsers;
using IUDICO.Common.Models.Services;
using System.Diagnostics;

using IUDICO.Common.Models.Shared.CurriculumManagement;

using IUDICO.Search.Models.ViewDataClasses;
using IUDICO.Search.Models;


namespace IUDICO.Search.Controllers
{
    [Authorize]
    public class SearchController : PluginController
    {

        private ICourseService _CourseService;
        private ICurriculumService _CurriculmService;
        private IUserService _UserService;

        public SearchController()
        {
            _CourseService = LmsService.FindService<ICourseService>();
            _CurriculmService = LmsService.FindService<ICurriculumService>();
            _UserService = LmsService.FindService<IUserService>();
        }

        [HttpPost]
        public ActionResult SearchSimple(String query)
        {
            var model = new SearchModel
            {
                SearchText = query,
                CheckBoxes = GetAvailableCheckBoxes()
            };
            MakeSearch(model);
            return View("Search", model);
        }

        [HttpPost]
        public ActionResult Search(SearchModel model)
        {
            MakeSearch(model);
            return View("Search", model);
        }

        private List<CheckBoxModel> GetAvailableCheckBoxes()
        {
            var roles = _UserService.GetCurrentUserRoles();
            var result = new List<CheckBoxModel>();
            result.Add(new CheckBoxModel(SearchType.Topics ));
            if (roles.Contains(Role.Teacher))
            {
                result.Add(new CheckBoxModel(SearchType.Users));
                result.Add(new CheckBoxModel(SearchType.Courses));
                result.Add(new CheckBoxModel(SearchType.Disciplines));
                result.Add(new CheckBoxModel(SearchType.Groups));
            }
            else if (roles.Contains(Role.Admin))
            {
                result.Add(new CheckBoxModel(SearchType.Users ));
                result.Add(new CheckBoxModel(SearchType.Groups));
            }
            return result;
        }

        private void MakeSearch(SearchModel model)
        {
            string query = model.SearchText + "~";

            DateTime datastart = DateTime.Now;
            Directory directory = FSDirectory.Open(new System.IO.DirectoryInfo(Server.MapPath("~/Data/Index")));
            IndexSearcher searcher = new IndexSearcher(directory, true);
            Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_29);

            List<string> strings = new List<string>();            

            foreach (var checkBox in model.CheckBoxes)
            {
                if (checkBox.IsChecked)
                {
                    if (checkBox.SearchType == SearchType.Courses)
                    {
                        //make filtration here...
                        strings.Add("Name");
                        strings.Add("Content");
                    }
                    if (checkBox.SearchType == SearchType.Topics)
                    {
                        //make filtration here...
                        strings.Add("Topic");
                    }
                    if (checkBox.SearchType == SearchType.Users)
                    {
                        //make filtration here...
                        strings.Add("User");
                    }
                    if (checkBox.SearchType == SearchType.Disciplines)
                    {
                        //make filtration here...
                        strings.Add("Discipline");
                    }
                    //make filtration here...
                }
            }

            MultiFieldQueryParser queryParser = new MultiFieldQueryParser(
                    Version.LUCENE_29,
                    strings.ToArray(),
                    //new String[] { "Name", "Content", "Discipline", "User", "Group", "Topic" },
                    analyzer
                );

            ScoreDoc[] scoreDocs = searcher.Search(queryParser.Parse(query), 100).scoreDocs;

            Hits hit = searcher.Search(queryParser.Parse(query));
            int total = hit.Length();

            List<Discipline> disciplines123 = _CurriculmService.GetDisciplines(_UserService.GetCurrentUser()).ToList();
            List<Course> courses123 = _CourseService.GetCourses(_UserService.GetCurrentUser()).ToList();
            List<TopicDescription> topics123 = _CurriculmService.GetTopicsAvailableForUser(_UserService.GetCurrentUser()).ToList();

            //List<Discipline> topics123 = _CurriculmService.GetDisciplinesWithTopicsOwnedByUser(_UserService.GetCurrentUser()).ToList();
            //foreach(Discipline curr in disciplines123){
            //    topics123.InsertRange(topics123.Count - 1, _CurriculmService.GetTopicsByDisciplineId(curr.Id));
            //}

            List<ISearchResult> results = new List<ISearchResult>();
            Stopwatch sw = new Stopwatch();
            sw.Start();

            foreach (ScoreDoc doc in scoreDocs)
            {
                ISearchResult result;
                Document document = searcher.Doc(doc.doc);
                String type = document.Get("Type").ToLower();

                switch (type)
                {
                    case "node":

                        Node node = new Node();
                        node.Id = Convert.ToInt32(document.Get("NodeID"));
                        node.Name = document.Get("Name");
                        node.CourseId = Convert.ToInt32(document.Get("NodeCourseID"));
                        node.IsFolder = Convert.ToBoolean(document.Get("isFolder"));

                        result = new NodeResult(node, _CourseService.GetCourse(node.CourseId).Name, document.Get("Content"), _CourseService.GetCourse(node.CourseId).Updated.ToString());
                        results.Add(result);
                        break;

                    case "course":

                        Course course = new Course();
                        course.Id = Convert.ToInt32(document.Get("CourseID"));
                        course.Name = document.Get("Name");
                        foreach (Course cour in courses123)
                        {
                            if (cour.Id == course.Id)
                            {
                                result = new CourseResult(course, _CourseService.GetCourse(course.Id).Updated.ToString(), _CourseService.GetCourse(course.Id).Owner);
                                results.Add(result);
                                break;
                            }
                        }
                        break;

                    case "discipline":

                        Discipline discipline = new Discipline();
                        discipline.Id = Convert.ToInt32(document.Get("DisciplineID"));
                        discipline.Name = document.Get("Discipline");
                        discipline.Owner = document.Get("Owner");

                        string str = _CurriculmService.GetDiscipline(discipline.Id).Owner;
                        foreach (Discipline curr in disciplines123)
                        {
                            if (curr.Owner.Equals(discipline.Owner))
                            {
                                result = new DisciplineResult(discipline, _CurriculmService.GetDiscipline(discipline.Id).Updated.ToString());
                                results.Add(result);
                                break;
                            }
                        }
                        break;

                    case "user":

                        User user = new User();
                        user.Id = Guid.Parse(document.Get("UserID"));
                        user.Name = document.Get("User");
                        //user.Roles
                        /*user.RoleId = Convert.ToInt32(document.Get("RoleId"));*/

                        result = new UserResult(user);
                        results.Add(result);
                        break;

                    case "group":

                        Group group = new Group();
                        group.Id = int.Parse(document.Get("GroupID"));
                        group.Name = document.Get("Group");
                        result = new GroupResult(group);
                        results.Add(result);
                        break;

                    case "topic":

                        Topic topic = new Topic();
                        topic.Id = Convert.ToInt32(document.Get("TopicID"));
                        topic.Name = document.Get("Topic");
                        if (document.Get("CourseRef") == "null")
                        {
                            topic.TestCourseRef = null;
                        }
                        else
                        {
                            topic.TestCourseRef = Convert.ToInt32(document.Get("CourseRef"));
                        }

                        foreach (TopicDescription themdesc in topics123)
                        {
                            if (themdesc.Topic.Id == topic.Id)
                            {
                                result = new TopicResult(topic, _CourseService.GetCourse(topic.TestCourseRef.Value).Name);
                                results.Add(result);
                                break;
                            }
                        }
                        break;

                    default:
                        throw new Exception("Unknown result type");
                }  
            }
            sw.Stop();

            DateTime dataend = DateTime.Now;
            analyzer.Close();
            searcher.Close();
            directory.Close();

            //ViewData["SearchString"] = query;
            //ViewData["score"] = Math.Abs(dataend.Millisecond - datastart.Millisecond); //sw.ElapsedMilliseconds.ToString();
            //ViewData["total"] = total;


            model.SearchResult = results;
            
            model.Total = total;
            model.Score = Math.Abs(dataend.Millisecond - datastart.Millisecond);
        }
    }
}
