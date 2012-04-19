﻿<%@ Assembly Name="IUDICO.DisciplineManagement" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.Common.Models.Shared.Discipline>" %>

<asp:Content ID="Content0" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%= Html.ResolveUrl("/Scripts/jquery/jquery.validate.min.js") %>" type="text/javascript"></script>
    <script src="<%= Html.ResolveUrl("/Scripts/Microsoft/MicrosoftAjax.js") %>" type="text/javascript"></script>
    <script src="<%= Html.ResolveUrl("/Scripts/Microsoft/MicrosoftMvcAjax.js") %>" type="text/javascript"></script>
    <script src="<%= Html.ResolveUrl("/Scripts/Microsoft/MicrosoftMvcValidation.js") %>" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=IUDICO.DisciplineManagement.Localization.getMessage("CreateDiscipline")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%=IUDICO.DisciplineManagement.Localization.getMessage("CreateDiscipline")%></h2>

    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true, IUDICO.DisciplineManagement.Localization.getMessage("CorrectFollowingErrorAndTryAgain") + ":")%>

        <fieldset>
            <legend><%=IUDICO.DisciplineManagement.Localization.getMessage("Fields")%></legend>
            
            <%= Html.EditorForModel() %>
        </fieldset>
        <p>
            <input type="submit" value="<%=IUDICO.DisciplineManagement.Localization.getMessage("Create")%>" />
        </p>
    <% } %>

    <div>
        <%: Html.ActionLink(IUDICO.DisciplineManagement.Localization.getMessage("BackToList"), "Index")%>
    </div>

</asp:Content>