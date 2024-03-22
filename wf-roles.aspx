<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-roles.aspx.cs" Inherits="ServiceDesk3d.wf_roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <script type="text/javascript">
        function showClearPrompt(sender, args) {
            var answer = confirm("Filled up information will be clear, are you sure?");
            if (answer) {
                sender.click();
            }
            else args.set_cancel(true);
        }
        function showRemovePrompt(sender, args) {
            var answer = confirm("Are you sure you want to remove this role?");
            if (answer) {
                sender.click();
            }
            else args.set_cancel(true);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" OnClientClicking="showRemovePrompt" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" CssClass="GreyButton" OnClientClicking="showClearPrompt" />
        <telerik:RadLabel ID="lblc" runat="server" Visible="true"></telerik:RadLabel>
    </div>
    <table>
        <tr>
            <td>Role ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRoleID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            <td>Role&nbsp; Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRoleName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Title</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtProjectMainTitle" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Contract Approval</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radHasContractApproval" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Can Edit Asset</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToAssetWrite" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Delete Asset</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToAssetDelete" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Can Only Change Status</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToStatusUpdate" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Only Change Location</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToLocationUpdate" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Can Only Change Ticket</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToChangeTicket" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can See Prices</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToSeePrices" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
             <td>Can Delete Administrative Data</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radCanDeleteData" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td hidden="hidden">Can SLA Receive Notifications</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadRadioButtonList runat="server" ID="radToRecieveNotifications" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
           
        </tr>
        <tr>
            <td>Can Modify Administrative Data</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radCanEditData" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Schedule Preventive Maintainence Receive Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToPMRecieveNotifications" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>

        </tr>
        <tr>
            <td>Can Receive Asset Rental Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanRecieveArNotifications" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Receive Asset Stock Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanRecieveStockNotification" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Can Receive Preventive Maintainence Start Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanRecievePMStartNotification" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Receive SLA Internal Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanSlaIntRecieveNotifications" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Can Only Edit Tasks</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanOnlyEditTasks" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>Can Only Edit Incident Details</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanOnlyEditIncidentDetails" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
        </tr>
        <tr>
             <td>Can Receive SLA Notifications</td>
            <td>:</td>
            <td>
                <telerik:RadRadioButtonList runat="server" ID="radToCanSlaRecieveNotifications" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">
                    <Items>
                        <telerik:ButtonListItem Text="Yes" Value="1" />
                        <telerik:ButtonListItem Text="No" Value="0" />
                    </Items>
                </telerik:RadRadioButtonList>
            </td>
            <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Access Module</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTreeView RenderMode="Lightweight" runat="server" ID="RadTreeView1" DataValueField="menuid" DataFieldID="menuid" DataFieldParentID="uppermenuid" CheckBoxes="true">
                    <DataBindings>
                        <telerik:RadTreeNodeBinding ValueField="menuid" TextField="menudescription"></telerik:RadTreeNodeBinding>
                        <telerik:RadTreeNodeBinding Depth="0" Checkable="false" ValueField="menuid" TextField="menudescription" Expanded="true"
                            CssClass="rootNode"></telerik:RadTreeNodeBinding>
                    </DataBindings>
                </telerik:RadTreeView>
            </td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Role List" Selected="True">
                <TabTemplate>
                    Role List
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
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <telerik:RadGrid ID="GridView1" ClientSettings-EnablePostBackOnRowClick="true" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged" PageSize="99">
                        <GroupingSettings CollapseAllTooltip="Collapse all groups" />
                        <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                        <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" PageSize="10">
                            <Columns>
                                <telerik:GridTemplateColumn HeaderText="Role ID">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("roleid") %>'
                                            CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("roleid") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="rolename" HeaderText="Role Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="projectmaintitle" HeaderText="Title"></telerik:GridBoundColumn>
                            </Columns>
                            <ItemStyle Height="13px" />
                            <AlternatingItemStyle BackColor="#EEEEEE" Height="13px" />
                            <PagerStyle PageSizeControlType="None" />
                            <HeaderStyle Height="14px" />
                        </MasterTableView>
                    </telerik:RadGrid>
                </ContentTemplate>
                <Triggers>
                </Triggers>
            </asp:UpdatePanel>
            <input id="scrollPos" runat="server" type="hidden" value="0" />
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <h3>
                <asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server" AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <h3>
                <asp:Label runat="server" ID="lblDelete" Text="Delete Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewDeleteTrail" runat="server" AllowSorting="true" Visible="true" OnSortCommand="GridViewDeleteTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="GridViewDeleteTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Deleted by"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
</asp:Content>
