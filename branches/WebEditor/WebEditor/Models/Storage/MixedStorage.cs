﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Security.AccessControl;

namespace WebEditor.Models.Storage
{
    public class MixedStorage : IStorage
    {
        protected ButterflyDB db = ButterflyDB.Instance;

        #region IStorageInterface Members

        #region Course methods

        public List<Course> GetCourses()
        {
            try
            {
                return db.Courses.Where(c => c.Deleted == false).ToList();
            }
            catch
            {
                return null;
            }
        }

        public Course GetCourse(int id)
        {
            try
            {
                return db.Courses.Single(c => c.Id == id);
            }
            catch
            {
                return null;
            }
        }

        public int? AddCourse(Course course)
        {
            try
            {
                course.Created = DateTime.Now;
                course.Updated = DateTime.Now;

                db.Courses.InsertOnSubmit(course);
                db.SubmitChanges();

                string path = GetCoursePath(course.Id);
                @Directory.CreateDirectory(path);

                return course.Id;
            }
            catch
            {
                return null;
            }
        }

        public bool UpdateCourse(int id, Course course)
        {
            try
            {
                Course oldCourse = db.Courses.Single(c => c.Id == id);

                oldCourse.Name = course.Name;
                oldCourse.Owner = course.Owner;
                oldCourse.Updated = DateTime.Now;

                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        [Obsolete("Directory.Delete gives exception when files are present: http://stackoverflow.com/questions/329355/cannot-delete-directory-with-directory-deletepath-true. Set CASCADE on DELETE & UPDATE action in foreign index CourseID")]
        public bool DeleteCourse(int id)
        {
            try
            {
                Course course = db.Courses.Single(c => c.Id == id);

                course.Deleted = true;

                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeleteCourses(List<int> ids)
        {
            try
            {
                var courses = (from n in db.Courses where ids.Contains(n.Id) select n);

                foreach (Course course in courses)
                {
                    course.Deleted = true;
                }

                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public string Export(int id)
        {
            try
            {
                Course course = this.GetCourse(id);

                string path = HttpContext.Current.Request.PhysicalApplicationPath;
                path = Path.Combine(path, @"Data\WorkFolder");
                path = Path.Combine(path, Guid.NewGuid().ToString());
                path = Path.Combine(path, course.Name);
                Directory.CreateDirectory(path);
                List<Node> nodes = this.GetNodes(id);
                for (int i = 0; i < nodes.Count; i++)
                {
                    if (nodes[i].IsFolder == false)
                    {
                        FileStream fs = File.Create(Path.Combine(path, nodes[i].Name + ".html"));
                        fs.Close();
                    }
                    else
                    {
                        List<Node> subNodes = this.GetNodes(id, nodes[i].Id);
                        nodes.AddRange(subNodes);
                    }
                }
                WebEditor.Helpers.Zipper.CreateZip(path + ".zip", path);
                return path + ".zip";
            }
            catch
            {
                return null;
            }
        }

        public int? Import(string path)
        {
            try
            {
                Course course = new Course();
                string folderPath = path.Substring(0, path.Length - 4);
                WebEditor.Helpers.Zipper.ExtractZipFile(path, folderPath);
                course.Name = folderPath.Split('\\').Last();
                course.Owner = "Imported";
                return this.AddCourse(course);
            }
            catch
            {
                return null;
            }
        }

        #endregion

        #region Node methods

        public List<Node> GetNodes(int courseId)
        {
            return GetNodes(courseId, null);
        }

        public List<Node> GetNodes(int courseId, int? parentId)
        {
            try
            {
                db.ClearCache();

                Course course = db.Courses.SingleOrDefault(c => c.Id == courseId);
                List<Node> nodes = course.Nodes.OrderBy(n => n.Position).ToList();

                if (parentId == null)
                {
                    nodes = nodes.Where(n => n.ParentId == null).ToList();
                }
                else
                {
                    nodes = nodes.Where(n => n.ParentId == parentId).ToList();
                }

                return nodes;
            }
            catch (Exception)
            {
                return new List<Node>();
            }
        }

        public Node GetNode(int id)
        {
            return db.Nodes.SingleOrDefault(n => n.Id == id);
        }

        public int? AddNode(Node node)
        {
            try
            {
                db.Nodes.InsertOnSubmit(node);
                db.SubmitChanges();

                if (node.IsFolder)
                {
                    string path = GetNodePath(node.Id);
                    @Directory.CreateDirectory(path);
                }

                return node.Id;
            }
            catch
            {
                return null;
            }
        }

        public bool UpdateNode(int id, Node node)
        {
            try
            {
                Node oldNode = db.Nodes.SingleOrDefault(n => n.Id == id);

                oldNode.Name = node.Name;
                oldNode.ParentId = node.ParentId;
                oldNode.Position = node.Position;

                db.SubmitChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool DeleteNode(int id)
        {
            try
            {
                Node node = db.Nodes.SingleOrDefault(n => n.Id == id);

                db.Nodes.DeleteOnSubmit(node);
                db.SubmitChanges();

                @Directory.Delete(GetNodePath(id));

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool DeleteNodes(List<int> ids)
        {
            try
            {
                var nodes = (from n in db.Nodes where ids.Contains(n.Id) select n);

                db.Nodes.DeleteAllOnSubmit(nodes);
                db.SubmitChanges();

                foreach (var id in ids)
                {
                    @Directory.Delete(GetNodePath(id));
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int? CreateCopy(Node node, int? parentId, int position)
        {
            try
            {
                Node newnode = new Node
                {
                    CourseId = node.CourseId,
                    Name = node.Name,
                    ParentId = parentId,
                    IsFolder = node.IsFolder,
                    Position = position
                };

                CopyNodes(node, newnode);

                db.Nodes.InsertOnSubmit(newnode);
                db.SubmitChanges();

                if (newnode.IsFolder)
                {
                    string path = GetNodePath(newnode.Id);
                    @Directory.CreateDirectory(path);
                }

                return newnode.Id;
            }
            catch
            {
                return null;
            }
        }

        public string GetNodeContents(int id)
        {
            string nodePath = GetNodePath(id);

            return File.ReadAllText(nodePath);
        }

        protected string GetNodePath(int nodeId)
        {
            Node node = db.Nodes.SingleOrDefault(n => n.Id == nodeId);
            Node parent = node.Node1;

            string path = node.Id.ToString() + (!node.IsFolder ? ".html" : "");

            while (parent != null)
            {
                path = Path.Combine(parent.Id.ToString(), path);
                parent = parent.Node1;
            }

            path = Path.Combine(GetCoursePath(node.CourseId), path);

            return path;
        }

        protected string GetCoursePath(int courseId)
        {
            string path;

            if (HttpContext.Current == null)
            {
                path = Path.Combine(System.Environment.CurrentDirectory, "Site");
            }
            else
            {
                path = HttpContext.Current.Request.PhysicalApplicationPath;
            }

            return Path.Combine(path, @"Data\Courses", courseId.ToString());
        }

        protected void CopyNodes(Node node, Node newnode)
        {
            foreach (Node child in node.Nodes)
            {
                Node newchild = new Node
                {
                    CourseId = child.CourseId,
                    Name = child.Name,
                    IsFolder = child.IsFolder,
                };

                newnode.Nodes.Add(newchild);

                if (child.Nodes.Count > 0)
                {
                    CopyNodes(child, newchild);
                }
            }
        }

        protected void CreateFolders(Node newnode)
        {
            foreach (Node child in newnode.Nodes)
            {
                if (child.IsFolder)
                {
                    string path = GetNodePath(child.Id);
                    Directory.CreateDirectory(path);

                    CreateFolders(child);
                }
            }
        }

        #endregion

        #region Curriculum methods

        public IEnumerable<Curriculum> GetCurriculums()
        {
            try
            {
                return db.Curriculums.ToList();
            }
            catch
            {
                return null;
            }
        }

        public Curriculum GetCurriculum(int id)
        {
            try
            {
                return db.Curriculums.Single(c => c.Id == id);
            }
            catch
            {
                return null;
            }
        }

        public int? AddCurriculum(Curriculum curriculum)
        {
            try
            {
                curriculum.Created = DateTime.Now;
                curriculum.Updated = DateTime.Now;

                db.Curriculums.InsertOnSubmit(curriculum);
                db.SubmitChanges();

                return curriculum.Id;
            }
            catch
            {
                return null;
            }
        }

        public bool UpdateCurriculum(int id, Curriculum curriculum)
        {
            try
            {
                Curriculum oldCurriculum = db.Curriculums.Single(c => c.Id == id);

                oldCurriculum.Name = curriculum.Name;
                oldCurriculum.Updated = DateTime.Now;

                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeleteCurriculum(int id)
        {
            try
            {
                Curriculum curriculum = db.Curriculums.Single(c => c.Id == id);

                db.Curriculums.DeleteOnSubmit(curriculum);
                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeleteCurriculums(List<int> ids)
        {
            try
            {
                var curriculums = (from n in db.Curriculums where ids.Contains(n.Id) select n);

                db.Curriculums.DeleteAllOnSubmit(curriculums);
                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        #endregion

        #region Stage methods

        public IEnumerable<Stage> GetStages(int curriculumId)
        {
            try
            {
                return db.Stages.Where(c => c.CurriculumRef == curriculumId);
            }
            catch
            {
                return null;
            }
        }

        #endregion

        #region Theme methods

        public IEnumerable<Theme> GetThemes(int stageId)
        {
            try
            {
                return db.Themes.Where(c => c.StageRef == stageId).OrderBy(c => c.SortOrder);
            }
            catch
            {
                return null;
            }
        }

        public Theme GetTheme(int id)
        {
            try
            {
                return db.Themes.Single(c => c.Id == id);
            }
            catch
            {
                return null;
            }
        }

        public int? AddTheme(Theme theme)
        {
            try
            {
                theme.Name = GetCourse(theme.CourseRef).Name;
                theme.Created = DateTime.Now;
                theme.Updated = DateTime.Now;

                db.Themes.InsertOnSubmit(theme);
                db.SubmitChanges();

                theme.SortOrder = theme.Id;
                UpdateTheme(theme.Id, theme);

                return theme.Id;
            }
            catch
            {
                return null;
            }
        }

        public bool UpdateTheme(int id, Theme theme)
        {
            try
            {
                Theme oldTheme = db.Themes.Single(c => c.Id == id);

                oldTheme.Name = GetCourse(theme.CourseRef).Name;
                oldTheme.SortOrder = theme.SortOrder;
                oldTheme.CourseRef = theme.CourseRef;
                oldTheme.Updated = DateTime.Now;

                db.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool ThemeUp(int themeId)
        {
            try
            {
                Theme theme = db.Themes.Single(c => c.Id == themeId);
                IList<Theme> themes = (from c in db.Themes
                                       where c.StageRef == theme.StageRef
                                       orderby c.SortOrder
                                       select c).ToList();

                int index = themes.IndexOf(theme);
                if (index == -1)
                {
                    return false;
                }
                else if (index == 0)
                {
                    return true;
                }
                else
                {
                    int temp = themes[index - 1].SortOrder;
                    themes[index - 1].SortOrder = theme.SortOrder;
                    theme.SortOrder = temp;

                    db.SubmitChanges();

                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        public bool ThemeDown(int themeId)
        {
            try
            {
                Theme theme = db.Themes.Single(c => c.Id == themeId);
                IList<Theme> themes = (from c in db.Themes
                                       where c.StageRef == theme.StageRef
                                       orderby c.SortOrder
                                       select c).ToList();

                int index = themes.IndexOf(theme);
                if (index == -1)
                {
                    return false;
                }
                else if (index == themes.Count - 1)
                {
                    return true;
                }
                else
                {
                    int temp = themes[index + 1].SortOrder;
                    themes[index + 1].SortOrder = theme.SortOrder;
                    theme.SortOrder = temp;

                    db.SubmitChanges();

                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        #endregion

        #endregion
    }
}