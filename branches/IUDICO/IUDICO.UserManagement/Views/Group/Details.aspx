﻿<%@ Assembly Name="IUDICO.UserManagement" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.Common.Models.Shared.Group>" %>
<%@ Import Namespace="IUDICO.UserManagement" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
        <script type="text/javascript" language="javascript">
            $(document).ready(function () {

                $('#groupUsersTable').dataTable({
                    "bJQueryUI": true,
                    "sPaginationType": "full_numbers",
                    iDisplayLength: 50,
                    "bSort": true,
                    "aoColumns": [
                    null,
                    null,
                    { "bSortable": false }
                ]
                });

            });

    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=Localization.GetMessage("DetailsOfGroup")%> <%:Model.Name%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%=Localization.GetMessage("DetailsOfGroup")%> <%:Model.Name%></h2>

    <fieldset>
        <legend><%=Localization.GetMessage("Users")%></legend>

        <table id="groupUsersTable">
            <thead>
                <tr>
                    <th>
                        <%=Localization.GetMessage("Username")%>
                    </th>
                    <th>
                        <%=Localization.GetMessage("Name")%>
                    </th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (Model.GroupUsers.GetEnumerator().MoveNext())
                    {
                        foreach (var groupUser in Model.GroupUsers)
                        {%>
                <tr>
                    <td>
                        <%:groupUser.User.Username%>
                    </td>
                    <td>
                        <%:groupUser.User.Name%>
                    </td>
                    <td>
                        <%:Html.ActionLink(Localization.GetMessage("RemoveUser"), "RemoveUser",
                                                              new {id = Model.Id, userRef = groupUser.User.Id})%>
                    </td>
                </tr>
            <%
                        }
                    }
                    else
                    {%>
                <tr>
                    <td><%=Localization.GetMessage("NoData")%></td>
                    <td><%=Localization.GetMessage("NoData")%></td>
                    <td><%=Localization.GetMessage("NoActions")%></td>
                </tr>
            <%
                    }%>
            </tbody>
        </table>

    </fieldset>
    <p>

        <%:Html.ActionLink(Localization.GetMessage("Edit"), "Edit", new {id = Model.Id})%> |
        <%:Html.ActionLink(Localization.GetMessage("AddUser"), "AddUsers", new {id = Model.Id})%> |
        <%:Html.ActionLink(Localization.GetMessage("BackToList"), "Index")%>
    </p>

</asp:Content>


