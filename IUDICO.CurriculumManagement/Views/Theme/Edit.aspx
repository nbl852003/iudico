﻿<%@ Assembly Name="IUDICO.CurriculumManagement" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.CurriculumManagement.Models.ThemeModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Choose a course for theme:</h2>
    <% using (Html.BeginForm("Edit", "Theme"))
       {%>
        <%: Html.ValidationSummary(true)%>
        <fieldset>
            <legend>Choose a course</legend>
            <%: Html.DropDownListFor(x => x.CourseId, Model.Courses)%>
            <p>
                <input type="submit" value="Update" />
            </p>
        </fieldset>
    <% } %>
    <div>
        <%: Html.RouteLink("Back to list", "Themes", new { action = "Index", StageId = Model.StageId })%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
