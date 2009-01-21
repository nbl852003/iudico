﻿using System;
using System.Collections.Generic;
using System.Web.Security;
using System.Web.UI.WebControls;
using IUDICO.DataModel;
using IUDICO.DataModel.DB;
using IUDICO.DataModel.ImportManagers;
using IUDICO.DataModel.Security;

public partial class ThemeResultControl : System.Web.UI.UserControl
{
    public int ThemeId { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        var theme = ServerModel.DB.Load<TblThemes>(ThemeId);
        themeName.Text = theme.Name;


        var userId = ((CustomUser) Membership.GetUser()).ID;
        var pages = ServerModel.DB.Load <TblPages>(ServerModel.DB.LookupIds<TblPages>(theme));

        foreach (var page in pages)
        {
            if (page.PageTypeRef == (int)FX_PAGETYPE.Practice)
            {
                var pageNameCell = new TableCell();
                var passStatusCell = new TableCell();
                var pageRankCell = new TableCell();
                var userRankCell = new TableCell();

                SetPageNameAndRank(page, pageNameCell, pageRankCell);
                SetPageResult(page, userId, passStatusCell, userRankCell);

                var row = new TableRow();
                row.Cells.AddRange(new []{pageNameCell, passStatusCell, userRankCell, pageRankCell});
                resultTable.Rows.Add(row);
            }
        }
        
    }

    private static int CalculateUserRank(TblQuestions question, int userId)
    {
        int userRank = 0;

        var userAnswers = ServerModel.DB.Load<TblUserAnswers>(ServerModel.DB.LookupIds<TblUserAnswers>(question));

        if (userAnswers != null)
        {
            var currUserAnswers = FindUserAnswers(userAnswers, userId);
            if (currUserAnswers.Count != 0)
            {
                var latestUserAnswer = FindLatestUserAnswer(currUserAnswers);

                if (latestUserAnswer.UserAnswer == question.CorrectAnswer)
                    userRank += (int) question.Rank;
            }
            else
            {
                userRank = -1;
            }
        }
        
        return userRank;
    }

    private static TblUserAnswers FindLatestUserAnswer(IList<TblUserAnswers> userAnswers)
    {
        var latestUserAnswer = userAnswers[0];
        foreach (var o in userAnswers)
        {
            if (o.Date > latestUserAnswer.Date)
                latestUserAnswer = o;
        }

        return latestUserAnswer;
    }

    private static void SetPageResult(TblPages page, int userId, TableCell passStatusCell, TableCell userRankCell)
    {
        int userRank = GetUserRank(page, userId);

        if (userRank < 0)
        {
            userRankCell.Text = "NO RANK";
            passStatusCell.Text = "NO RESULT";
        }
        else
        {
            userRankCell.Text = userRank.ToString();
            passStatusCell.Text = userRank >= (int)page.PageRank ? "pass" : "fail";
        }
    }

    private static int GetUserRank(TblPages page, int userId)
    {
        var questionsIDs = ServerModel.DB.LookupIds<TblQuestions>(page);
        var questions = ServerModel.DB.Load<TblQuestions>(questionsIDs);

        int userRank = 0;

        foreach (var question in questions)
        {
            userRank += CalculateUserRank(question, userId);
        }
        return userRank;
    }

    private static void SetPageNameAndRank(TblPages page, TableCell pageNameCell, TableCell pageRankCell)
    {
        pageNameCell.Text =  page.PageName;

        pageRankCell.Text = page.PageRank.ToString();
    }

    private static IList<TblUserAnswers> FindUserAnswers(IList<TblUserAnswers> userAnswers, int userId)
    {
        var currentUserAnswers = new List<TblUserAnswers>();

        foreach (var o in userAnswers)
        {
            if (o.UserRef == userId)
                currentUserAnswers.Add(o);
        }

        return currentUserAnswers;
    }
}
