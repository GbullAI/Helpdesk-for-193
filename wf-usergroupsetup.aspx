<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-usergroupsetup.aspx.cs" Inherits="ServiceDesk3d.wf_usergroupsetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><asp:Label id="lblH2" runat="server"></asp:Label></h3>
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="333px"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" CssClass="GreyButton" />
    </div>
    <div>
        <table >
            <tr>
                            <td><asp:Label id="lblID" runat="server"></asp:Label></td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtID" runat="server" Width="250px" ReadOnly="True" Enabled="false"></telerik:RadTextBox>
                            </td>
                            <td>Status</td>
                            <td>:</td>
                            <td>
                                <telerik:RadCheckBox runat="server" ID="cbxIsActive" Text="Yes"></telerik:RadCheckBox>
                            </td>
                        </tr>
            <tr>
                            <td><asp:Label id="lblDesc" runat="server"></asp:Label></td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtDesc" runat="server" Width="550px"></telerik:RadTextBox>
                            </td>
               <%-- <td>Supervisor</td>
                <td>:</td>
                <td><telerik:RadCheckBox runat="server" ID="cbxIsSupervisor" Text="Yes"></telerik:RadCheckBox></td>--%>
                        </tr>
            <tr runat="server" id="rowDD">
                <td><asp:Label id="lblDD" runat="server"></asp:Label></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpDD" runat="server" Width="250px"></telerik:RadComboBox>
                            </td>
                <td>Level</td>
                <td>:</td>
                <td><telerik:RadComboBox ID="drpNextLevel" runat="server" Width="250px"></telerik:RadComboBox></td>
            </tr>
        </table>
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="List" Selected="True">
                <TabTemplate>
                   List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Log">
                <TabTemplate>
                  Event Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID" ItemStyle-Width="88px" HeaderStyle-Width="88px" >
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("txtID") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("txtID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="txtDesc" HeaderText="Descriptions"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="IsActive" HeaderText="Is Active?"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="fKey" HeaderText="Department" Visible="false" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="nextlevel" HeaderText="Level"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="adminaudittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="auditnotes" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="datetime" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
               <h3><asp:Label runat="server" ID="lblDelete" Text="Delete Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewDeleteTrail" runat="server"  AllowSorting="true" Visible="true"  OnSortCommand="GridViewDeleteTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewDeleteTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="adminaudittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="adminaudittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Deleted by"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView> 
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
