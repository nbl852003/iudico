﻿<%@ Assembly Name="IUDICO.Search" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IUDICO.Search.Models.SearchResult.ISearchResult>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Search Results
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Search results for "<%= ViewData["SearchString"] %>"</h2>

    <form action="/Search/Search" method="post">

        Search:
        <%= Html.TextBox("query", ViewData["SearchString"])%>
        <input type="submit" value="Search" />

    </form>
    
    <ul>
    <% foreach (var result in Model) { %>   
        <li>#<%= result.GetId() %> <a href="<%= result.GetUrl() %>"><%= result.GetName() %></a><br />
            <%= result.GetText() %>
        </li>
    <% } %>
    </ul>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>