﻿using System.Collections.Generic;
using System.Web.UI.WebControls;
using IUDICO.DataModel.Common;
using IUDICO.DataModel.Common.StatisticUtils;
using IUDICO.DataModel.Controllers.Student;
using IUDICO.DataModel.DB;
using System.Linq;
using System;
using System.Collections;

namespace IUDICO.DataModel.Controllers
{
    public class StatisticShowController : BaseTeacherController
    {
        [ControllerParameter]
        public int GroupID;
        [ControllerParameter]
        public int CurriculumID;

        TblCurriculums curriculum;
        TblGroups group;

        //"magic words"
        private const string pageCaption = "Statistic.";
        private const string pageDescription = "This is statisic for group: {0} based on curriculum: {1}. This statistaic is based on passed pages count.";
        private const string studentStr = "Student";
        private const string totalStr = "Total";
        private const string noStudents = "Theare are no students in this group.";

        public Label NotifyLabel { get; set; }
        public Table StatisticTable { get; set; }

        public override void Loaded()
        {
            base.Loaded();

            curriculum = ServerModel.DB.Load<TblCurriculums>(CurriculumID);
            group = ServerModel.DB.Load<TblGroups>(GroupID);

            Caption.Value = pageCaption;
            Description.Value = pageDescription.
                Replace("{0}", group.Name).
                Replace("{1}", curriculum.Name);
            Title.Value = Caption.Value;

            fillStatisticTable();
        }

        private void fillStatisticTable()
        {
            StatisticTable.Rows.Clear();

            TableHeaderRow headerRow = new TableHeaderRow();

            TableHeaderCell headerCell = new TableHeaderCell();
            headerCell.Text = studentStr;
            headerRow.Cells.Add(headerCell);

            foreach (TblStages stage in TeacherHelper.StagesOfCurriculum(curriculum))
            {
                foreach (TblThemes theme in TeacherHelper.ThemesOfStage(stage))
                {
                    headerCell = new TableHeaderCell();
                    headerCell.Text = theme.Name;
                    headerRow.Cells.Add(headerCell);
                }
            }
            headerCell = new TableHeaderCell();
            headerCell.Text = totalStr;
            headerRow.Cells.Add(headerCell);

            StatisticTable.Rows.Add(headerRow);

            foreach (TblUsers student in TeacherHelper.GetStudentsOfGroup(group))
            {
                var studentRow = new TableRow();
                TableCell studentCell = new TableHeaderCell {Text = student.DisplayName};

                studentRow.Cells.Add(studentCell);

                int pasedCurriculum = 0;
                int totalCurriculum = 0;
                foreach (TblStages stage in TeacherHelper.StagesOfCurriculum(curriculum))
                {
                    foreach (TblThemes theme in TeacherHelper.ThemesOfStage(stage))
                    {
                        int result = 0;
                        int totalresult = 0;
                        foreach(TblLearnerAttempts attempt in TeacherHelper.AttemptsOfTheme(theme) )
                        {

                          if(attempt.ID == TeacherHelper.GetLastLearnerAttempt(student.ID,theme.ID))
                          foreach(TblLearnerSessions session in TeacherHelper.SessionsOfAttempt(attempt))
                            {
                              
                                string res = "";

                                CmiDataModel cmiDataModel = new CmiDataModel(session.ID, student.ID, false);
                                for (int i = 0; i < int.Parse(cmiDataModel.GetValue("interactions._count")); i++)
                                {
                                    
                                    res = cmiDataModel.GetValue(String.Format("interactions.{0}.result", i));
                                    totalresult += 1;
                                    if (res == "correct")
                                    {
                                        result += 1;
                                        
                                    }
                                  
                                }
                  
                          
                            
                            }
                        }
                    
                
                        studentCell = new TableCell{HorizontalAlign = HorizontalAlign.Center};
                         
                        studentCell.Controls.Add(new HyperLink
                                                     {
                                                         Text = result+"/"+totalresult,
                                                         NavigateUrl = ServerModel.Forms.BuildRedirectUrl(new ThemeResultController
                                                         {
                                                             BackUrl = string.Empty,
                                                             LearnerAttemptId = TeacherHelper.GetLastLearnerAttempt(student.ID, theme.ID),
                                                             //CurriculumnName = ServerModel.DB.Load<TblCurriculums>((int) stage.CurriculumRef).Name,
                                                             //StageName = stage.Name,
                                                         })
                                                     });

                        pasedCurriculum += result;
                        totalCurriculum += totalresult;
                        studentRow.Cells.Add(studentCell);
                    }
                }

                studentCell = new TableCell
                                  {
                                      HorizontalAlign = HorizontalAlign.Center,
                                      Text = pasedCurriculum + "/" + totalCurriculum
                                  };
                studentRow.Cells.Add(studentCell);
                StatisticTable.Rows.Add(studentRow);
            }

            if (StatisticTable.Rows.Count == 1)
            {
                StatisticTable.Visible = false;
                Message.Value = noStudents;
            }
        }

    }
}
