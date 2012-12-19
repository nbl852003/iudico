﻿<%@ Assembly Name="IUDICO.Search" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.Search.Models.ViewDataClasses.SearchModel>" %>

<%@ Import Namespace="IUDICO.Common" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=Localization.GetMessage("SearchResults")%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form action="/Search/SearchSimple" method="post">
        <%= Html.TextBoxFor(model=> model.SearchText)%>
        <%--    <%= Html.TextBox("query",  ViewData["SearchString"])%>--%>
        <input type="submit" value='<%=Localization.GetMessage("Search")%>' />
        <div>
   
        </div>
        <div>
            Кількість результатів:
            <%= Html.Label(Model.Total.ToString())  %>. Час пошуку:
            <%= Html.Label(Model.Score.ToString())  %>ms.
        </div>
        <br />

        <h2>Users</h2>
        <ul>
           <% foreach (var user in Model.Users) { %>
           <li><%= Html.ActionLink(user.Username, "Details", "User", new { id = user.Id }, null) %></li>
           <% } %>
        </ul>
    
        <h2>Disciplines</h2>
        <ul>
           <% foreach (var discipline in Model.Disciplines) { %>
           <li><%= discipline.Name %></li>
           <% } %>
        </ul>

        <h2>Courses</h2>
        <ul>
           <% foreach (var course in Model.Courses) { %>
           <li><a href="/Course/<%= course.Id %>/Node"> <%= course.Name %> </a></li>
           <% } %>
        </ul>

        <h2>Topics</h2>
        <ul>
           <% foreach (var topic in Model.Topics) { %>
           <li><%= topic.Name %></li>
           <% } %>
        </ul>

        <h2>Nodes</h2>
        <ul>
           <% foreach (var node in Model.Nodes) { %>
           <li><%= node.Name %></li>
           <% } %>
        </ul>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>