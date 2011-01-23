﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.CurriculumManagement.Models.CreateCurriculumAssignmentModel>" %>
<%@  Assembly Name="IUDICO.CurriculumManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Assignment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit Assignment</h2>

    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Choose a group</legend>
            
            <%: Html.DropDownListFor(x => x.GroupId,Model.Groups)%>
            
            <p>
                <input type="submit" value="Update" />
            </p>
        </fieldset>
    <% } %>

    <div>
        <br />
        <%: Html.RouteLink("Back to list", "CurriculumAssignments", new { action = "Index", CurriculumId = HttpContext.Current.Session["CurriculumId"] })%>
    </div>
</asp:Content>

