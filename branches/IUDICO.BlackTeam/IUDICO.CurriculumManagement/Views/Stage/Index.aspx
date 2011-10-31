﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IUDICO.Common.Models.Stage>>" %>
<%@ Assembly Name="IUDICO.CurriculumManagement" %>
<asp:Content ID="Content0" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="/Scripts/Microsoft/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/Microsoft/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $("#DeleteMany").click(function () {
                var ids = $("td input:checked").map(function () {
                    return $(this).attr('id');
                });

                if (ids.length == 0) {
                    alert("<%=IUDICO.CurriculumManagement.Localization.getMessage("PleaseSelectStagesDelete") %>");

                    return false;
                }

                var answer = confirm("<%=IUDICO.CurriculumManagement.Localization.getMessage("AreYouSureYouWantDeleteSelectedStages") %>");

                if (answer == false) {
                    return false;
                }

                $.ajax({
                    type: "post",
                    url: "/Stage/DeleteItems",
                    data: { stageIds: ids },
                    success: function (r) {
                        if (r.success) {
                            $("td input:checked").parents("tr").remove();
                        }
                        else {
                            alert("<%=IUDICO.CurriculumManagement.Localization.getMessage("ErrorOccuredDuringProcessingRequestErrorMessage") %> " + r.message);
                        }
                    }
                });
            });
        });
        function deleteItem(id) {
            var answer = confirm("<%=IUDICO.CurriculumManagement.Localization.getMessage("AreYouSureYouWantDeleteSelectedStage") %>");

            if (answer == false) {
                return;
            }

            $.ajax({
                type: "post",
                url: "/Stage/DeleteItem",
                data: { stageId: id },
                success: function (r) {
                    if (r.success == true) {
                        var item = "item" + id;
                        $("tr[id=" + item + "]").remove();
                    }
                    else {
                        alert("<%=IUDICO.CurriculumManagement.Localization.getMessage("ErrorOccuredDuringProcessingRequestErrorMessage") %> " + r.message);
                    }
                }
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%=IUDICO.CurriculumManagement.Localization.getMessage("Stages")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%=IUDICO.CurriculumManagement.Localization.getMessage("StagesFor")%></h2>
    <h4><%: ViewData["CurriculumName"] %></h4>
    <p>
        <%: Html.ActionLink(IUDICO.CurriculumManagement.Localization.getMessage("CreateNew"), "Create")%>
        <a id="DeleteMany" href="#"><%=IUDICO.CurriculumManagement.Localization.getMessage("DeleteSelected")%></a>
    </p>
    <table>
        <tr>
            <th>
            </th>
            <th>
                <%=IUDICO.CurriculumManagement.Localization.getMessage("Name") %>
            </th>
            <th>
                <%=IUDICO.CurriculumManagement.Localization.getMessage("Created") %>
            </th>
            <th>
                <%=IUDICO.CurriculumManagement.Localization.getMessage("Updated") %>
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
            <tr id="item<%: item.Id %>">
                <td>
                    <input type="checkbox" id="<%= item.Id %>" />
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
                    <%: Html.ActionLink(IUDICO.CurriculumManagement.Localization.getMessage("Edit"), "Edit", new { StageID = item.Id })%>
                    |
                    <%: Html.ActionLink(IUDICO.CurriculumManagement.Localization.getMessage("EditThemes"), "Index", "Theme", new { StageID = item.Id }, null)%>
                    |
                    <a href="#" onclick="deleteItem(<%: item.Id %>)"><%=IUDICO.CurriculumManagement.Localization.getMessage("Delete") %></a>
                </td>
            </tr>
        <% } %>
    </table>

    <div>
        <br/>
        <%: Html.RouteLink(IUDICO.CurriculumManagement.Localization.getMessage("BackToCurriculums"), "Curriculums", new { action = "Index" })%>
    </div>
</asp:Content>