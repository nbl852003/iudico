﻿<%@ Assembly Name="IUDICO.Security" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IUDICO.Security.ViewModels.Ban.EditComputersViewModel>" %>
<%@ Import Namespace="IUDICO.Common" %>
<%@ Import namespace="System.Linq" %>
<%@ Import Namespace="IUDICO.Common.Models.Shared" %>

<asp:Content ID="Content0" ContentPlaceHolderID="TitleContent" runat="server">
	EditComputer
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <style type="text/css">
        h3 {color: red}
    </style>

    <fieldset>
        
    <h2>Edit Computer</h2>
    
    <% using(Html.BeginForm())
            { %> 
                <h3><%=Html.DisplayTextFor(x => x.ComputerIP) %></h3>       
                <p>Room</p> <%= Html.DropDownListFor(x => x.Room, new SelectList(Model.AllRooms),
                             Model.Room != null ? Model.Room : "Select room") %>
                <p>Banned</p> <%= Html.CheckBoxFor(x => x.Banned)%> 
                <p>Current User </p><%=Html.TextBoxFor(x => x.CurrentUser)%>
                <p>
           <input type="submit" value="<%=Localization.GetMessage("Save")%>" name="saveButton" />
       </p>

           <% }%>
    </fieldset>  
<%Writer.Write(Html.ActionLink(Localization.GetMessage("BackToList"), "EditComputers", "Ban")); %>            

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
