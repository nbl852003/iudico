﻿<%@ Assembly Name="IUDICO.DisciplineManagement" %>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IUDICO.Common.Models.Shared.Chapter>" %>
<%@ Import Namespace="System.Web.Mvc.Ajax" %>

<% Html.EnableClientValidation(); %>

<% using (Ajax.BeginForm("Edit", "Chapter", new { }, new AjaxOptions() { OnFailure = "onFailure", OnSuccess = "onEditChapterSuccess" })) { %>
    <%: Html.ValidationSummary(true, IUDICO.DisciplineManagement.Localization.getMessage("CorrectFollowingErrorAndTryAgain") + ":")%>

      <fieldset>
        <legend><%=IUDICO.DisciplineManagement.Localization.getMessage("Fields")%></legend>
            
        <%= Html.EditorForModel() %>

    </fieldset>

<% } %>