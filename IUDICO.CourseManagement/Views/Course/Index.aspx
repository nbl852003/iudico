﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IUDICO.Common.Models.Course>>" %>

<asp:Content ID="Content0" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%= Html.ResolveUrl("/Scripts/Microsoft/MicrosoftAjax.js")%>" type="text/javascript"></script>
    <script src="<%= Html.ResolveUrl("/Scripts/Microsoft/MicrosoftMvcAjax.js")%>" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $("#DeleteMany").click(function () {
                var ids = $("td input:checked").map(function () {
                    return $(this).attr('id');
                });

                if (ids.length == 0) {
                    alert("Please select courses to delete");
                    
                    return false;
                }

                var answer = confirm("Are you sure you want to delete " + ids.length + " selected courses?");

                if (answer == false) {
                    return false;
                }

                $.ajax({
                    type: "post",
                    url: "/Course/Delete",
                    data: { courseIds: ids },
                    success: function (r) {
                        if (r.success) {
                            $("td input:checked").parents("tr").remove();
                        }
                        else {
                            alert("Error occured during proccessing request");
                        }
                    }
                });
            });

        });
        function removeRow(data) {
            window.location = window.location;
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <p>
        
        <%: Html.ActionLink("Create New", "Create", "Course")%> |
        <%: Html.ActionLink("Import", "Import") %> |
        <a id="DeleteMany" href="#">Delete Selected</a>
    </p>
    <h2>My courses:</h2>
    <table>
        <tr>
            <th></th>
            <th>
                №
            </th>
            <th>
                Name
            </th>
            <th>
                Created
            </th>
            <th>
                Updated
            </th>
            <th></th>
        </tr>
    <% var index = 1; %>
    <% foreach (var item in Model.Where(i => i.Owner == HttpContext.Current.User.Identity.Name)) { %>
    
        <tr>
            <td>
                <input type="checkbox" id="<%= item.Id %>" />
            </td>
            <td>
                <%: index++ %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Created) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Updated) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", "Course", new { CourseID = item.Id }, null)%> |
                <% if (item.Locked == null || item.Locked.Value == false) { %>
                <%:Html.ActionLink("Details", "Index", "Node", new {CourseID = item.Id}, null)%> |
                <% } else {%>
                <%:Html.ActionLink("Unlock", "Parse", "Course", new {CourseID = item.Id}, null) %> |
                <%}%>
                <%: Html.ActionLink("Export", "Export", new { CourseID = item.Id }) %> |
                <%: Ajax.ActionLink("Delete", "Delete", new { CourseID = item.Id }, new AjaxOptions { Confirm = "Are you sure you want to delete \"" + item.Name + "\"?", HttpMethod = "Delete", OnSuccess="removeRow" })%>
            </td>
        </tr>
    
    <% } %>
    </table>

    <h2>Courses shared with me:</h2>
    <table>
        <tr>
            <th></th>
            <th>
                №
            </th>
            <th>
                Name
            </th>
            <th>
                Owner
            </th>
            <th>
                Created
            </th>
            <th>
                Updated
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model.Where(i => i.Owner != HttpContext.Current.User.Identity.Name)) { %>
    
        <tr>
            <td>
                <input type="checkbox" id="<%= item.Id %>" />
            </td>
            <td>
                <%: index++ %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.Owner %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Created) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Updated) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", "Course", new { CourseID = item.Id }, null)%> |
                <%: Html.ActionLink("Details", "Index", "Node", new { CourseID = item.Id }, null) %> |
                <%: Html.ActionLink("Export", "Export", new { CourseID = item.Id }) %> |
                <%: Ajax.ActionLink("Delete", "Delete", new { CourseID = item.Id }, new AjaxOptions { Confirm = "Are you sure you want to delete \"" + item.Name + "\"?", HttpMethod = "Delete", OnSuccess="removeRow" })%>
            </td>
        </tr>
    
    <% } %>

    </table>



</asp:Content>
