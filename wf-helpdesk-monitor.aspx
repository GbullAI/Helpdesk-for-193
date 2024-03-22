<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk-monitor.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="ServiceDesk3d.wf_helpdesk_monitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css?version=2" rel="stylesheet" />
    <link href="styles/base.css?version=2" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 232px;
        }

        .rsAdvancedEdit {
            top: 110px !important;
            left: 100px !important;
        }

        .rsAdvDragCue {
            display: none !important;
        }

        .rsAllDayWrapper {
            visibility: hidden !important;
        }

        .RadTabStrip_Bootstrap .rtsLevel1 .rtsSelected .rtsLink {
            border-color: #dedede !important;
            color: white !important;
            background-color: #008CBA !important;
        }

        .RadTabStrip_Bootstrap .rtsLevel1 .rtsLink {
            border-color: #dedede !important;
            color: #000 !important;
            background-color: white !important;
        }

        .BlueButton {
            background-color: #008CBA !important;
            color: white !important;
        }

        .RedButton {
            background-color: #f44336 !important;
            color: white !important;
        }

        .GreenButton {
            background-color: #4CAF50 !important;
            color: white !important;
        }

        .GreyButton {
            background-color: #808080 !important;
            color: white !important;
        }

        .PurpleButton {
            background-color: #6A0DAD !important;
            color: white !important;
        }

        .BrownButton {
            background-color: brown !important;
            color: white !important;
        }

        .YellowButton {
            background-color: #ff9800 !important;
            color: white !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblSlaOutside" Width="300px" Height="150px">
    </telerik:RadNotification>

    <asp:UpdatePanel runat="server" ID="updTimer">
        <ContentTemplate>
            <asp:Timer ID="Xtimer" runat="server" Enabled="false" Interval="6666" OnTick="Xtimer_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <table>
        <tr>
            <%--<td>Country</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCountryAccess_SelectedIndexChanged"></telerik:RadComboBox>
            </td>--%>
            <td></td>
            <td></td>
            <td>
                <telerik:RadTextBox runat="server" ID="txtSearchSRID" TextMode="SingleLine" Width="11px" Visible="false"></telerik:RadTextBox>
                <telerik:RadButton ID="RadButton33" runat="server" Text="New Ticket" OnClick="RadButton33_Click" CssClass="GreenButton" Width="222px"></telerik:RadButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr hidden="hidden">
            <td>Group</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpLevel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpLevel_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td hidden="hidden">Level</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadComboBox ID="drpGroup" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpGroup_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Sort By</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSort" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="True" OnSelectedIndexChanged="drpSort_SelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Value="inc_inclidentid" Text="SR ID" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_reportdatetime" Text="Log Date" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_status" Text="Status" />
                        <telerik:RadComboBoxItem runat="server" Value="requesttype" Text="Request Type" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_priority" Text="Priority" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_duedatetime" Text="Target Resolution Date" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_customerid" Text="Customer" />
                        <telerik:RadComboBoxItem runat="server" Value="inc_assignedto" Text="Engineer" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Individual" Selected="true" CssClass="tabStyle">
                <TabTemplate>
                    Individual
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Group" CssClass="tabStyle">
                <TabTemplate>
                    Group 
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="New" CssClass="tabStyle">
                <TabTemplate>
                    New
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Open" CssClass="tabStyle">
                <TabTemplate>
                    Open
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="In Progress" Visible="false" CssClass="tabStyle">
                <TabTemplate>
                    In Progress
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="5" runat="server" Text="Pending" CssClass="tabStyle">
                <TabTemplate>
                    Pending
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="Solved" CssClass="tabStyle">
                <TabTemplate>
                    Solved
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="Closed" CssClass="tabStyle">
                <TabTemplate>
                    Closed
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="High Priority" CssClass="tabStyle">
                <TabTemplate>
                    High Priority
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Follow Up" CssClass="tabStyle">
                <TabTemplate>
                    Follow Up
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="10" runat="server" Text="Search Ticket" CssClass="tabStyle">
                <TabTemplate>
                    Search Ticket
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="11" runat="server" Text="SLA Overdue" CssClass="tabStyle">
                <TabTemplate>
                    SLA Overdue
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="12" runat="server" Text="Dashboard" CssClass="tabStyle">
                <TabTemplate>
                    Dashboard
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0" ID="tabIndividuals">
            <telerik:RadButton ID="RadButton1" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton2" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton3" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridIndividual" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" OnSortCommand="RadGridIndividual_SortCommand" AllowSorting="true" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridIndividual_PageIndexChanged" OnPreRender="RadGridIndividual_PreRender" OnItemCreated="RadGridIndividual_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%-- <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("customerid") %>'
                                    CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseIndividual" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseIndividual_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllIndividual" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClick="btnCloseAllIndividual_Click" OnClientClicking="StandardConfirm">
            </telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadButton ID="RadButton7" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton8" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton9" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridGroup" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="RadGridGroup_SortCommand" OnPreRender="RadGridGroup_PreRender" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridGroup_PageIndexChanged" OnItemCreated="RadGridGroup_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" runat="server" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_inclidentid" HeaderText="Ticket ID" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                       <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseGroup" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseGroup_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllGroup" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllGroup_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
            <telerik:RadButton ID="RadButton10" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton11" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton12" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridAssignedx" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridAssignedx_PageIndexChanged" OnPreRender="RadGridAssignedx_PreRender" OnSortCommand="RadGridAssignedx_SortCommand" OnItemCreated="RadGridAssignedx_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" DataKeyNames="inc_inclidentid">
                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--  <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseAssignedx" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseAssignedx_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllAssignedx" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllAssignedx_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <telerik:RadButton ID="RadButton13" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton14" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton15" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridOverdue" runat="server" Visible="true" AllowSorting="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" OnSortCommand="RadGridOverdue_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridOverdue_PageIndexChanged" OnPreRender="RadGridOverdue_PreRender" OnItemCreated="RadGridOverdue_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_inclidentid" HeaderText="InclidentID" Visible="false" UniqueName="InclidentID"></telerik:GridBoundColumn>
                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--    <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseOverdue" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseOverdue_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllOverdue" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllOverdue_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <telerik:RadButton ID="RadButton16" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton17" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton18" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridInProgress" runat="server" Visible="true" AllowSorting="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" OnSortCommand="RadGridInProgress_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPreRender="RadGridInProgress_PreRender" OnPageIndexChanged="RadGridInProgress_PageIndexChanged" OnItemCreated="RadGridInProgress_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--       <telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--  <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>


                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseInProgress" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseInProgress_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllInProgress" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllInProgress_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <telerik:RadButton ID="RadButton19" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton20" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton21" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridPending" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnPreRender="RadGridPending_PreRender" OnSortCommand="RadGridPending_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridPending_PageIndexChanged" OnItemCreated="RadGridPending_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--    <telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--    <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                          <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnClosePending" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnClosePending_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllPending" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllPending_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            <telerik:RadButton ID="RadButton22" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton23" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton24" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridResovled" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="RadGridResovled_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPreRender="RadGridResovled_PreRender" OnPageIndexChanged="RadGridResovled_PageIndexChanged" OnItemCreated="RadGridResovled_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#cccccc" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--          <telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--<telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>

                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseResovled" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseResovled_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllResovled" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllResovled_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="7">
            <telerik:RadButton ID="RadButton25" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton26" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton27" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridClosed" runat="server" Visible="true" ClientSettings-Selecting-AllowRowSelect="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="RadGridClosed_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPreRender="RadGridClosed_PreRender" OnPageIndexChanged="RadGridClosed_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="8">
            <telerik:RadButton ID="RadButton5" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton6" Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton28" Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridHighPriority" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="RadGridHighPriority_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridHighPriority_PageIndexChanged" OnPreRender="RadGridHighPriority_PreRender" OnItemCreated="RadGridHighPriority_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%-- <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="btnCloseHighPriority" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseHighPriority_Click"></telerik:RadButton>
            <telerik:RadButton ID="btnCloseAllHighPriority" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllHighPriority_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="9">
            <telerik:RadGrid ID="grdFollowUp" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="grdFollowUp_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridGroup_PageIndexChanged" OnPreRender="grdFollowUp_PreRender" OnItemCreated="RadGridGroup_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>

                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--<telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inclidentid" HeaderText="Incident id" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="mainincidentid" HeaderText="Parent Ticket ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>

            <!--Old calendar code-->
            <div id="hideCalendar" style="display: none">
                <telerik:RadButton ID="rbViewBy" runat="server" Text="" Visible="False"></telerik:RadButton>
                <table>
                    <tr>
                        <td>My Calendar</td>
                        <td>:</td>
                        <td>
                            <telerik:RadButton ID="rbMyCal" runat="server" Text="My Calendar" OnClick="rbMyCal_Click">
                            </telerik:RadButton>
                        </td>
                        <td>All Calendar</td>
                        <td>:</td>
                        <td>
                            <telerik:RadButton ID="rbAllCal" runat="server" Text="By Group Access" OnClick="rbAllCal_Click">
                            </telerik:RadButton>
                        </td>
                    </tr>
                    <tr>
                        <td>By Group</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="ddldepartment" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddldepartment_SelectedIndexChanged"></telerik:RadComboBox>
                        </td>
                        <td>Individual</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpAssignIndividual" runat="server" AutoPostBack="True" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpAssignIndividual_SelectedIndexChanged" Width="250px">
                            </telerik:RadComboBox>
                        </td>
                    </tr>
                </table>
                <telerik:RadScheduler RenderMode="Lightweight" runat="server" ID="RadScheduler1" DayStartTime="08:00:00" StartInsertingInAdvancedForm="true" StartEditingInAdvancedForm="true"
                    DayEndTime="20:00:00" GroupBy="Engineer" GroupingDirection="Horizontal" ColumnWidth="170px" OnAppointmentInsert="RadScheduler1_AppointmentInsert"
                    OnAppointmentUpdate="RadScheduler1_AppointmentUpdate" OnAppointmentDelete="RadScheduler1_AppointmentDelete" OnAppointmentDataBound="RadScheduler1_AppointmentDataBound"
                    DataKeyField="AID" DataSubjectField="Subject" DataStartField="startdt" DataEndField="enddt" EnableRecurrenceSupport="false" EnableCustomAttributeEditing="True" OnFormCreated="RadScheduler1_FormCreated" DisplayDeleteConfirmation="true" ShowAllDayRow="False" OnAppointmentCreated="RadScheduler1_AppointmentCreated">
                    <ExportSettings>
                        <Pdf PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in" PageTopMargin="1in" />
                    </ExportSettings>
                    <AdvancedForm Modal="true" EnableCustomAttributeEditing="True"></AdvancedForm>
                    <TimelineView UserSelectable="true"></TimelineView>
                    <TimeSlotContextMenuSettings EnableDefault="true"></TimeSlotContextMenuSettings>
                    <AppointmentContextMenuSettings EnableDefault="true"></AppointmentContextMenuSettings>
                    <Reminders Enabled="false"></Reminders>
                    <ResourceHeaderTemplate>
                        <%#  Eval("Text").ToString()  %>
                    </ResourceHeaderTemplate>
                    <AppointmentTemplate>
                        <div class="rsCustomAppointmentContainer">
                            <%# Eval("Subject") %>
                            <div>
                                <a href='wf-helpdesk2.aspx?inclidentid=<%# Eval("Description") %>'><%# ((string)Eval("Description") == "") ? "" : "Goto Ticket" %></a>
                            </div>
                        </div>
                    </AppointmentTemplate>
                </telerik:RadScheduler>
            </div>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="10">
            <telerik:RadButton ID="RadButton4" runat="server" Text="Search" OnClick="RadButton4_Click1" Visible="false"></telerik:RadButton>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceCustomer"
                ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT customername,customerid FROM tblcustomer ORDER By customername" OnSelecting="SqlDataSourceCustomer_Selecting" />
            <asp:SqlDataSource runat="server" ID="SqlDataSourceAsset"
                ProviderName="MySql.Data.MySqlClient" />
            <table>
                <tr>
                </tr>
                <tr>
                    <td class="auto-style1">Request Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpRequestType" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td class="auto-style1">Request Log Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtRequestLogDate" runat="server">
                            <DateInput DateFormat="dd/MM/yyyy" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy">
                            </DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Department</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssignLevel" AutoPostBack="true" runat="server" Filter="StartsWith" Width="250px" OnSelectedIndexChanged="drpAssignLevel_SelectedIndexChanged"></telerik:RadComboBox>
                    </td>
                    <td class="auto-style1">Request ID</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtRequestID" runat="server" TextMode="SingleLine" Width="250px"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Group</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssignGroup" runat="server" Width="250px" Filter="Contains" AutoPostBack="true" MarkFirstMatch="true" OnSelectedIndexChanged="drpAssignGroup_SelectedIndexChanged"></telerik:RadComboBox>
                    </td>
                    <td class="auto-style1">Summary</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox runat="server" ID="txtSummary" TextMode="SingleLine" Width="250px"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Individual</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssignTo" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpCustomer" runat="server" AutoPostBack="true" Filter="Contains" MarkFirstMatch="true" Width="250px"
                            EmptyMessage="0-Please Select"
                            DataSourceID="SqlDataSourceCustomer"
                            DataTextField="customername"
                            DataValueField="customerid"
                            EnableAutomaticLoadOnDemand="true"
                            ShowMoreResultsBox="false"
                            EnableVirtualScrolling="true"
                            ItemsPerRequest="5" OnSelectedIndexChanged="drpCustomer_SelectedIndexChanged">
                        </telerik:RadComboBox>
                    </td>
                </tr>
                <tr hidden="hidden">
                    <td class="auto-style1">Assset #</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSystemSerialNo" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px"
                            EmptyMessage="0-Please Select"
                            DataSourceID="SqlDataSourceAsset"
                            DataTextField="AssetEquipmentId"
                            DataValueField="AssetID"
                            EnableAutomaticLoadOnDemand="true"
                            ShowMoreResultsBox="false"
                            EnableVirtualScrolling="true"
                            ItemsPerRequest="15">
                        </telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Branch</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpsearchsiteid" runat="server" Filter="StartsWith" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Created By</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpCreatedBy" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <telerik:RadButton ID="RadButton32" runat="server" OnClick="RadButton32_Click" Text="Search"></telerik:RadButton>
                        <telerik:RadButton ID="btnClearSearch" runat="server" OnClick="btnClearSearch_Click" Text="Clear"></telerik:RadButton>
                    </td>
                </tr>
            </table>
            <telerik:RadGrid ID="RadGridSearch" runat="server" Visible="true" ClientSettings-Selecting-AllowRowSelect="true" ItemStyle-BackColor="Red" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="RadGridSearch_SortCommand"  AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridSearch_PageIndexChanged" OnPreRender="RadGridSearch_PreRender" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                               <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <%-- <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>

                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                       <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="11">
            <telerik:RadGrid ID="RadGridSla" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" OnSortCommand="RadGridSla_SortCommand" AllowSorting="true" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPreRender="RadGridSla_PreRender" OnPageIndexChanged="RadGridSla_PageIndexChanged" OnItemCreated="RadGridSla_ItemCreated" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                                </telerik:GridClientSelectColumn>
                                <%--<telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                                <telerik:GridTemplateColumn HeaderText="Ticket ID">
                                    <ItemTemplate>
                                        <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                               <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <%--<telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="Ticket ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_siteid" HeaderText="Branch"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="inc_assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>

            &nbsp;
            &nbsp;
            <br />
            <telerik:RadButton ID="RadButton29" Visible="true" runat="server" Text="Close" CssClass="RedButton" OnClick="btnCloseIndividual_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton30" Visible="true" runat="server" Text="Close All" CssClass="RedButton" OnClientClicking="StandardConfirm" OnClick="btnCloseAllIndividual_Click"></telerik:RadButton>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="12">
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="13">

            <!--Old tab code-->
            <table>
                <tr>
                    <td>
                        <telerik:RadHtmlChart runat="server" ID="RadChartOpenClosed" Width="400" Height="400">
                            <PlotArea>
                                <Series>
                                    <telerik:AreaSeries Name="Open">
                                        <Appearance>
                                            <FillStyle BackgroundColor="Blue"></FillStyle>
                                        </Appearance>
                                        <LabelsAppearance Position="Above"></LabelsAppearance>
                                        <LineAppearance Width="1"></LineAppearance>
                                        <MarkersAppearance MarkersType="Circle" BackgroundColor="White" Size="6" BorderColor="Blue"
                                            BorderWidth="2"></MarkersAppearance>
                                        <TooltipsAppearance Color="White"></TooltipsAppearance>
                                        <SeriesItems>
                                        </SeriesItems>
                                    </telerik:AreaSeries>
                                    <telerik:AreaSeries Name="Closed">
                                        <Appearance>
                                            <FillStyle BackgroundColor="Red"></FillStyle>
                                        </Appearance>
                                        <LabelsAppearance Position="Above"></LabelsAppearance>
                                        <LineAppearance Width="1"></LineAppearance>
                                        <MarkersAppearance MarkersType="Circle" BackgroundColor="White" Size="6" BorderColor="Red"
                                            BorderWidth="2"></MarkersAppearance>
                                        <TooltipsAppearance Color="White"></TooltipsAppearance>
                                        <SeriesItems>
                                        </SeriesItems>
                                    </telerik:AreaSeries>
                                </Series>
                                <Appearance>
                                    <FillStyle BackgroundColor="Transparent"></FillStyle>
                                </Appearance>
                                <XAxis AxisCrossingValue="0" Color="black" MajorTickType="Outside" MinorTickType="Outside" Reversed="false">
                                    <Items>
                                    </Items>
                                    <TitleAppearance Position="Center" RotationAngle="0" Text="Last 7 Days"></TitleAppearance>
                                    <LabelsAppearance RotationAngle="0" Skip="0" Step="1">
                                    </LabelsAppearance>
                                </XAxis>
                                <YAxis AxisCrossingValue="0" Color="black" MajorTickSize="4" MajorTickType="Outside"
                                    MaxValue="160" MinorTickType="None" MinValue="0" Reversed="false"
                                    Step="10">
                                    <LabelsAppearance DataFormatString="{0}" RotationAngle="0" Skip="0" Step="1">
                                    </LabelsAppearance>
                                    <TitleAppearance RotationAngle="0" Position="Center" Text="Tickets"></TitleAppearance>
                                </YAxis>
                            </PlotArea>
                            <Appearance>
                                <FillStyle BackgroundColor="Transparent"></FillStyle>
                            </Appearance>
                            <ChartTitle Text="Open Vs Closed">
                                <Appearance Align="Center" BackgroundColor="Transparent" Position="Top">
                                </Appearance>
                            </ChartTitle>
                            <Legend>
                                <Appearance BackgroundColor="Transparent" Position="Bottom">
                                </Appearance>
                            </Legend>
                        </telerik:RadHtmlChart>
                    </td>
                    <td>
                        <telerik:RadHtmlChart runat="server" ID="PieChartByStatus" Width="400" Height="400" Transitions="true" Skin="Silk">
                            <ChartTitle Text="UnClosed Ticket By Status">
                                <Appearance Align="Center" Position="Top">
                                </Appearance>
                            </ChartTitle>
                            <Legend>
                                <Appearance Position="Right" Visible="true">
                                </Appearance>
                            </Legend>
                            <PlotArea>
                                <Series>
                                    <telerik:PieSeries StartAngle="90">
                                        <LabelsAppearance Position="OutsideEnd" DataFormatString="{0}">
                                        </LabelsAppearance>
                                        <TooltipsAppearance Color="White" DataFormatString="{0}">
                                            <ClientTemplate> 
                                 #=category#
                                            </ClientTemplate>
                                        </TooltipsAppearance>
                                        <SeriesItems>
                                        </SeriesItems>
                                    </telerik:PieSeries>
                                </Series>
                            </PlotArea>
                        </telerik:RadHtmlChart>
                    </td>
                    <td style="text-align: left">
                        <span style="font-weight: bold">MTD : % Of Resolved Within SLA</span><br />
                        <telerik:RadRadialGauge runat="server" ID="RadRadialGauge1" Width="320" Height="320">
                            <Pointer Value="32">
                                <Cap Size="0.1" />
                            </Pointer>
                            <Scale Min="0" Max="100" MajorUnit="10">
                                <Labels Format="{0}%" />
                                <Ranges>
                                    <telerik:GaugeRange Color="Red" From="0" To="40.99" />
                                    <telerik:GaugeRange Color="Yellow" From="41" To="80.99" />
                                    <telerik:GaugeRange Color="Green" From="81" To="100" />
                                </Ranges>
                            </Scale>
                        </telerik:RadRadialGauge>

                    </td>
                </tr>
                <tr>
                    <td>
                        <telerik:RadHtmlChart runat="server" ID="PieChartByTotalAssetCount" Width="400" Height="400" Transitions="true" Skin="Silk">
                            <ChartTitle Text="Total Asset Count">
                                <Appearance Align="Center" Position="Top">
                                </Appearance>
                            </ChartTitle>
                            <Legend>
                                <Appearance Position="Right" Visible="true">
                                </Appearance>
                            </Legend>
                            <PlotArea>
                                <Series>
                                    <telerik:PieSeries StartAngle="90">
                                        <LabelsAppearance Position="OutsideEnd" DataFormatString="{0}">
                                        </LabelsAppearance>
                                        <TooltipsAppearance Color="White" DataFormatString="{0}">
                                            <ClientTemplate> 
                                                #=category#
                                            </ClientTemplate>
                                        </TooltipsAppearance>
                                        <SeriesItems>
                                        </SeriesItems>
                                    </telerik:PieSeries>
                                </Series>
                            </PlotArea>
                        </telerik:RadHtmlChart>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">

                        <telerik:RadHtmlChart runat="server" ID="ColumnChartByAssetCategory" Transitions="true" Skin="Silk" Width="100%">
                            <PlotArea>
                                <Series>
                                    <telerik:ColumnSeries Stacked="false" Gap="1.5" Spacing="0.4">
                                        <Appearance>
                                            <FillStyle BackgroundColor="#d5a2bb"></FillStyle>
                                        </Appearance>
                                        <LabelsAppearance RotationAngle="90" DataFormatString="{0}" Position="OutsideEnd">
                                            <ClientTemplate> 
                                #=category#
                                            </ClientTemplate>
                                        </LabelsAppearance>
                                        <TooltipsAppearance DataFormatString="{0}" Color="White">
                                            <ClientTemplate> 
                                #=category#
                                            </ClientTemplate>
                                        </TooltipsAppearance>
                                        <SeriesItems>
                                        </SeriesItems>
                                    </telerik:ColumnSeries>

                                </Series>
                                <Appearance>
                                    <FillStyle BackgroundColor="Transparent"></FillStyle>
                                </Appearance>
                                <XAxis AxisCrossingValue="0" Color="black" MajorTickType="Outside" MinorTickType="Outside"
                                    Reversed="false">
                                    <Items>
                                    </Items>
                                    <LabelsAppearance DataFormatString="{0}" RotationAngle="60" Skip="0">
                                    </LabelsAppearance>
                                    <TitleAppearance Position="Center" RotationAngle="0" Text="Asset Category">
                                    </TitleAppearance>
                                </XAxis>
                                <YAxis AxisCrossingValue="0" Color="black" MajorTickSize="1" MajorTickType="Outside"
                                    MinorTickType="None" Reversed="false">
                                    <LabelsAppearance DataFormatString="{0}" RotationAngle="0" Skip="0"></LabelsAppearance>
                                    <TitleAppearance Position="Center" RotationAngle="0" Text="Equipment Info">
                                    </TitleAppearance>
                                </YAxis>
                            </PlotArea>
                            <Appearance>
                                <FillStyle BackgroundColor="Transparent"></FillStyle>
                            </Appearance>
                            <ChartTitle Text="Total Equipment">
                                <Appearance Align="Center" BackgroundColor="Transparent" Position="Top">
                                </Appearance>
                            </ChartTitle>
                            <Legend>
                                <Appearance BackgroundColor="Transparent" Position="Bottom">
                                </Appearance>
                            </Legend>
                        </telerik:RadHtmlChart>
                    </td>
                </tr>

            </table>
        </telerik:RadPageView>

    </telerik:RadMultiPage>
    <div runat="server" id="divDashboard" visible="false">
        <telerik:RadGrid ID="RadGridDashboard" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridDashboard_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPreRender="RadGridDashboard_PreRender" OnPageIndexChanged="RadGridGroup_PageIndexChanged" OnItemCreated="RadGridGroup_ItemCreated" AllowMultiRowSelection="true">
            <ClientSettings EnableRowHoverStyle="false">
                <Selecting AllowRowSelect="true" />
            </ClientSettings>
            <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                <Columns>
                    <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                    </telerik:GridClientSelectColumn>
                    <%--<telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                    <telerik:GridTemplateColumn HeaderText="Ticket ID" DataField="inclidentid">
                        <ItemTemplate>
                            <asp:LinkButton ID="useLinkButton4" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command4" Text='<%# Eval("inclidentid") %>'></asp:LinkButton>
                            <%--<a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>&type=show&show=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inclidentid")%></a>--%>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridBoundColumn DataField="reportdatetime" HeaderText="Ticket Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="status" HeaderText="Status"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                     <telerik:GridBoundColumn DataField="SiteID" HeaderText="Branch"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="priority" HeaderText="Priority"></telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="serviceagreementid" HeaderText="SLA"></telerik:GridBoundColumn>--%>
                    <telerik:GridBoundColumn DataField="requestsummary" HeaderText="Ticket Title"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="duedatetime" HeaderText="Due Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="customerid" HeaderText="Customer Name"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="followupdate" HeaderText="Follow Up Date"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="assignedto" HeaderText="Assigned To Primary"></telerik:GridBoundColumn>
                     <telerik:GridBoundColumn DataField="assignedto2" HeaderText="Assigned To Secondary"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="inc_closeddt" HeaderText="Closed Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ticketage" HeaderText="Ticket Age"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="mainincidentid" HeaderText="Parent Ticket ID"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="inc_childtickets" HeaderText="Child Tickets" ItemStyle-ForeColor="Green"></telerik:GridBoundColumn>

                    <telerik:GridTemplateColumn HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>

                </Columns>
                <PagerStyle PageSizeControlType="None" />
            </MasterTableView>
        </telerik:RadGrid>

    </div>
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            function OnClientFormCreated(sender, eventArgs) {
                $telerik.$(".rsAdvancedEdit").css("top", "300px");
                $telerik.$(".rsAdvancedEdit").css("left", "100px");
            }

        </script>
    </telerik:RadCodeBlock>

    <script type="text/javascript">
        function StandardConfirm(sender, args) {
            args.set_cancel(!window.confirm("Are you sure you want to close all tickets?"));
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
