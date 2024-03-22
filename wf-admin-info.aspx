<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-admin-info.aspx.cs" Inherits="ServiceDesk3d.wf_admin_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
       <h2>System</h2>
    </div>
    <table>
        <tr>
            <td>License</td>
            <td></td>
            <td>
                Activate
                <%--<telerik:RadButton ID="btnLicense" CssClass="btn btn-sky shiny" runat="server" Width="100px" Enabled="true" Text="Activate"></telerik:RadButton>--%>
            </td>
             <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Version</td>
            <td></td>
            <td>
                1.6.1
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>
     <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="infomodules" HeaderText="Modules"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="infoproductcode" HeaderText="Product Code"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="infodescription" HeaderText="Description"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="infoquantity" HeaderText="Quantity"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
