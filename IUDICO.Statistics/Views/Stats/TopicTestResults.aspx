﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.Statistics.Models.StatisticsModels.TopicTestResultsModel>" %>

<%@ Assembly Name="IUDICO.Statistics" %>
<%@ Import Namespace="IUDICO.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%=Localization.GetMessage("Results")%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
        <%if (Model.NoData() == true)
          {%>
        <%=Localization.GetMessage("NoDataShow")%>
        <%
            }
          else
          {%>
        <legend>
            <%=Localization.GetMessage("AttemptStatistic")%></legend>
        <h2>
            <%=Localization.GetMessage("Results")%></h2>
        <p>
            <%=Localization.GetMessage("Student")%>:
            <%: Model.GetUserName()%>
        </p>
        <p>
            <%=Localization.GetMessage("Topic")%>:
            <%: Model.GetTopicName()%>
        </p>
        <p>
            <%=Localization.GetMessage("Success")%>:
            <%=Localization.GetMessage(Model.GetSuccessStatus())%>
        </p>
        <p>
            <%=Localization.GetMessage("Score")%>:
            <%: Model.GetScore()%>
        </p>
        <table id="topicResultsTable">
            <thead>
                <tr>
                    <th>
                        <%=Localization.GetMessage("NumberOfQuestion")%>
                    </th>
                    <th>
                        <%=Localization.GetMessage("StudentAnswer")%>
                    </th>
                    <th>
                        <%=Localization.GetMessage("CorrectAnswer")%>
                    </th>
                    <th>
                        <%=Localization.GetMessage("Score")%>
                    </th>
                </tr>
            </thead>
            <tbody>
                <%int i = 1; %>
                <% foreach (IUDICO.Common.Models.Shared.Statistics.AnswerResult answer in Model.GetUserAnswers())
                   {  %>
                <tr>
                    <td>
                        <%:i++%>
                    </td>
                    <td>
                        <%if (Model.GetUserAnswer(answer) == "")
                          { %>
                        <%=Localization.GetMessage("NoData")%>
                        <% 
                            }
                          else
                          { %>
                        <%: Model.GetUserAnswer(answer) %>
                        <%} %>
                    </td>
                    <td>
                        <%: answer.CorrectResponse%>
                    </td>
                    <td>
                        <%: Model.GetUserScoreForAnswer(answer)%>
                    </td>
                </tr>
                <% }
                %>
            </tbody>
        </table>
        <%
            }%>
    </fieldset>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .dataTables_wrapper
        {
        	min-height: 100px;
        }
    </style>

    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $("#topicResultsTable").dataTable({
                "bJQueryUI": true,
                "bPaginate": false,
                "bLengthChange": false,
                "bFilter": false,
                "bSort": false,
                "bInfo": false,
                "bAutoWidth": true
            });
        });
    </script>
</asp:Content>
