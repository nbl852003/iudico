﻿<%@ Page Title="Create Multiple Users" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>
<%@ Import Namespace="IUDICO.DataModel.Controllers"%>
<%@ Import Namespace="IUDICO.DataModel"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:CreateUserWizard 
        ID="CreateUserWizard1" 
        FinishDestinationPageUrl="~/Login.aspx" 
        CancelDestinationPageUrl="~/Login.aspx" 
        ContinueDestinationPageUrl="~/Admin/Users.aspx"
        LoginCreatedUser="False"
        runat="server" >
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    <asp:LinkButton runat="server" ID="lbCreateMultiple" Text="Create multiple" />
</asp:Content>

