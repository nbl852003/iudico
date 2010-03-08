﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Share.aspx.cs" Inherits="Share" %>

<%@ Register assembly="BoxOver" namespace="BoxOver" tagprefix="boxover" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label_PageCaption" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_PageDescription" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_PageMessage" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Table ID="Table_Operations" runat="server">
                </asp:Table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button runat="server" ID="Button_Update" Text="Update" />
                <boxover:BoxOver ID="BoxOver1" runat="server" 
                    Body="Click to update information!" ControlToValidate="Button_Update" 
                    Header="Help!" />
            </td>
        </tr>
    </table>
</asp:Content>
