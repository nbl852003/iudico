﻿<%@ Assembly Name="IUDICO.UserManagement" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.UserManagement.Models.UserRoleModel>" %>
<%@ Import Namespace="IUDICO.UserManagement" %>
<%@ Import Namespace="IUDICO.Common" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=Localization.GetMessage("AddToRole")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%=Localization.GetMessage("AddToRole")%></h2>

    <%
        using (Html.BeginForm())
        {%>
        <%:Html.ValidationSummary(true)%>

        <fieldset>
            <legend><%=Localization.GetMessage("Fields")%></legend>
            
            <%=Html.EditorForModel()%>
            
            <p>
                <input type="submit" value=<%=Localization.GetMessage("Save")%> />
            </p>
        </fieldset>

    <%
        }%>

    <div>
        <%:Html.ActionLink(Localization.GetMessage("BackToList"), "Index")%>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>