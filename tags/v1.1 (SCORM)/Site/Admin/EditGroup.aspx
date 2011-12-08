﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditGroup.aspx.cs" Inherits="Admin_EditGroup" Title="Untitled Page" %>

<%@ Register assembly="BoxOver" namespace="BoxOver" tagprefix="boxover" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:Panel runat="server">
        <h1><asp:Label runat="server" ID="lbTitle" /></h1>
        <p class="descriptions">
            To rename group type new name and press 'Apply' button to submit changes<br />
        </p>
        <asp:Label ID="lbGroupName" Text="Group Name:" runat="server" />
        &nbsp;
        <asp:TextBox ID="tbGroupName" runat="server" />
        <boxover:BoxOver ID="BoxOver1" runat="server" Body="Enter group name!" 
            ControlToValidate="tbGroupName" Header="Help!" />
        <br />
        <asp:Button ID="btnApply" Text="Apply" runat="server" />
        <boxover:BoxOver ID="BoxOver2" runat="server" Body="Click to apply changes!" 
            ControlToValidate="btnApply" Header="Help!" />
    </asp:Panel>
    <asp:Panel runat="server">
        <h2>
            <asp:Label ID="lbGroupUsers" runat="server" Text="test" /></h2>
        <p class="descriptions">
            Press 'Exclude' button to remove user from group<br />
            Click on user's login link to reach details screen
        </p>
        <i:UserList ID="UserList" runat="server" />
    </asp:Panel>
</asp:Content>