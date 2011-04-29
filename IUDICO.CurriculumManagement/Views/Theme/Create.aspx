﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" 
Inherits="System.Web.Mvc.ViewPage<IUDICO.CurriculumManagement.Models.ViewDataClasses.CreateThemeModel>" %>

<%@ Assembly Name="IUDICO.CurriculumManagement" %>

<asp:Content ID="Content0" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="/Scripts/jquery/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/Scripts/Microsoft/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/Microsoft/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="/Scripts/Microsoft/MicrosoftMvcValidation.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%=IUDICO.CurriculumManagement.Localization.getMessage("CreateTheme") %>:</h2>
    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm("Create", "Theme"))
       {%>
        <%: Html.ValidationSummary(true, "Please correct the following error(s) and try again:")%>

        <fieldset>
            <legend><%=IUDICO.CurriculumManagement.Localization.getMessage("Fields")%></legend>

            <%= Html.EditorFor(item => item.ThemeName) %>

            <div class="editor-label">
                <%: Html.Label(IUDICO.CurriculumManagement.Localization.getMessage("ChooseCourseForTheme") + ":")%>
            </div>
            <div>
                <%: Html.DropDownListFor(x => x.CourseId, Model.Courses)%>
            </div>
            <div class="editor-label">
                <%: Html.Label(IUDICO.CurriculumManagement.Localization.getMessage("ChooseThemeType") + ":")%>
            </div>
            <div>
                <%: Html.DropDownListFor(x => x.ThemeTypeId, Model.ThemeTypes)%>
            </div>
            <p>
                <input type="submit" value=<%=IUDICO.CurriculumManagement.Localization.getMessage("Create") %> />
            </p>
        </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink(IUDICO.CurriculumManagement.Localization.getMessage("BackToList"), "Index", new { StageId = Model.StageId })%>
    </div>
</asp:Content>