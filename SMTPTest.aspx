<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SMTPTest.aspx.cs" Inherits="ServiceDesk3d.SMTPTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>To</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtTo" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            <td></td>
            <td></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>Content</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtContent" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Response</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtResponse" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true"></telerik:RadTextBox>
            </td>
        </tr>
    </table>
    <telerik:RadButton ID="btnSend" runat="server" Text="New" OnClick="btnSend_Click"></telerik:RadButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
