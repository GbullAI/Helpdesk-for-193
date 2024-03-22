<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-adminaudittrail.aspx.cs" Inherits="ServiceDesk3d.wf_adminaudittrail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        <asp:Label runat="server" ID="lblAuditTrail" Text="Audit Trail"></asp:Label></h3>
    <div>
        <table>
            <tr>
                <td>User ID</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpUserID" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
                <td>Module Name</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpModule" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td colspan="5"></td>
                <td>
                    <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="GreenButton" />
                    <telerik:RadButton ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="GreyButton" />
                </td>
            </tr>
        </table>
    </div>
    <telerik:RadGrid ID="GridViewAuditTrail" runat="server" AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
        <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
        <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
            <Columns>
                <telerik:GridBoundColumn DataField="ID" HeaderText="Trail ID"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="description" HeaderText="Trail Description"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="modulename" HeaderText="Module"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="actionby" HeaderText="Action By"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="credatetime" HeaderText="Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
