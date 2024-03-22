<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk-monitor2.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk_monitor2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 232px;
        }
        /* Static advanced form positioning */
    .rsAdvancedEdit
    {
        top: 110px !important;
        left: 100px !important;
    }
    .rsAdvDragCue
    {
        display: none !important;
    }
    
.rsAllDayWrapper 
    { 
        visibility:hidden !important; 
    }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Default" >Loading......</telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1" ></telerik:RadAjaxManager>
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>    
    <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar1"  Width="100%" BackColor="#eeeeee">
                <Items>
                    <telerik:RadPanelItem Text="Search" Expanded="True" BackColor="#eeeeee" >
                        <ContentTemplate>
                            <table>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                        </ContentTemplate>
                    </telerik:RadPanelItem>
                 </Items>
                <ExpandAnimation Type="None" />
                <CollapseAnimation Type="None" />
            </telerik:RadPanelBar>
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
              <telerik:RadTextBox runat="server" ID="txtSearchSRID" TextMode="SingleLine"  Width="250px" Visible="false"></telerik:RadTextBox>  
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" SelectedIndex="0">        
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Un Assigned" Selected="True">                
                <TabTemplate>
                    Individual
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Overdue Completion" >
                <TabTemplate>
                    Group 
                </TabTemplate>                                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Overdue Response">                
                <TabTemplate>
                   UnAssigned
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Open/Pending">                
                <TabTemplate>
                    Overdue
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Due Today">                
                <TabTemplate>
                    In Progress
                </TabTemplate>                
            </telerik:RadTab>            
            <telerik:RadTab TabIndex="5" runat="server" Text="Resovled">                
                <TabTemplate>
                    Pending
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="Closed">                
                <TabTemplate>
                    Resovled
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="High Priority">                
                <TabTemplate>
                    Closed
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="Search Ticket">                
                <TabTemplate>
                    High Priority
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Search Ticket">                
                <TabTemplate>
                    Search Ticket
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="10" runat="server" Text="Calendar">                
                <TabTemplate>
                    Calendar
                </TabTemplate>                
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" >
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadButton ID="RadButton1" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton2"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton3"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridIndividual" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridIndividual_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"  ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadButton ID="RadButton7"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton8"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton9"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridGroup" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridGroup_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"  DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"  DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
            <telerik:RadButton ID="RadButton10"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton11"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton12"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridAssignedx" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridAssignedx_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <telerik:RadButton ID="RadButton13"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton14"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton15" Visible="false"  runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridOverdue" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridOverdue_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <telerik:RadButton ID="RadButton16"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton17"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton18"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridInProgress" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridInProgress_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <telerik:RadButton ID="RadButton19"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton20"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton21"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridPending" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridPending_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            <telerik:RadButton ID="RadButton22"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton23"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton24"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridResovled" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridResovled_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#cccccc" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="7">
            <telerik:RadButton ID="RadButton25"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton26"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton27"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridClosed" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridClosed_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>        
        <telerik:RadPageView runat="server" TabIndex="8">
            <telerik:RadButton ID="RadButton5"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton6"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton28"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridHighPriority" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridHighPriority_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>        
        <telerik:RadPageView runat="server" TabIndex="9">
            <telerik:RadButton ID="RadButton4" runat="server" Text="Search" OnClick="RadButton4_Click1"></telerik:RadButton>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceCustomer"
    ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT customername,customerid FROM tblcustomer ORDER By customername" OnSelecting="SqlDataSourceCustomer_Selecting"  />
            <asp:SqlDataSource runat="server" ID="SqlDataSourceAsset"
    ProviderName="MySql.Data.MySqlClient" />
            <table>
                <tr>
                <td class="auto-style1">Request ID</td><td>:</td><td><telerik:RadTextBox ID="txtRequestID" runat="server" TextMode="SingleLine"  Width="250px"></telerik:RadTextBox></td>
                </tr>
                <tr hidden="hidden">
                <td class="auto-style1">Assign Department</td><td>:</td><td><telerik:RadComboBox ID="drpAssignLevel" runat="server" Filter="StartsWith"  Width="250px"></telerik:RadComboBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style1">Request Type</td><td>:</td>
                <td><telerik:RadComboBox ID="drpRequestType" runat="server" Width="250px"></telerik:RadComboBox></td>
                </tr>
                <tr>
                <td class="auto-style1">Assign Group</td><td>:</td>
                <td><telerik:RadComboBox ID="drpAssignGroup" runat="server"   Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox></td>
                </tr>
                <tr>
                <td class="auto-style1">Assign Individual</td><td>:</td>
                <td><telerik:RadComboBox ID="drpAssignTo" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox></td>
                </tr>
                <tr>
                <td class="auto-style1">Status</td><td>:</td>
                <td><telerik:RadComboBox ID="drpStatus" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox></td>
                </tr>
                <tr>
                <td class="auto-style1">Customer Name</td><td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpCustomer" runat="server" AutoPostBack="true" Filter="Contains" MarkFirstMatch="true"   Width="250px" 
                        emptymessage="0-Please Select"
                        datasourceid="SqlDataSourceCustomer" 
                        datatextfield="customername" 
                        datavaluefield="customerid" 
                        EnableAutomaticLoadOnDemand="true"               
                        showmoreresultsbox="false" 
                        enablevirtualscrolling="true"
                        itemsperrequest="5" OnSelectedIndexChanged="drpCustomer_SelectedIndexChanged"></telerik:RadComboBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Assset #</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSystemSerialNo" runat="server" Filter="Contains" MarkFirstMatch="true"    Width="250px"
                        emptymessage="0-Please Select"
                        datasourceid="SqlDataSourceAsset" 
                        datatextfield="SystemSN" 
                        datavaluefield="AssetID" 
                        EnableAutomaticLoadOnDemand="true"               
                        showmoreresultsbox="false" 
                        enablevirtualscrolling="true"
                        itemsperrequest="15" >
                        </telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                <td class="auto-style1">Request Log Date</td><td>:</td>                    
                <td><telerik:RadDatePicker ID="txtRequestLogDate" runat="server" ><DateInput DateFormat="dd/MM/yyyy" runat="server"  Width="250px" DisplayDateFormat="dd/MM/yy"> 
            </DateInput></telerik:RadDatePicker></td>
                </tr>
                <tr>
                <td class="auto-style1">Summary</td><td>:</td>
                <td><telerik:RadTextBox runat="server" ID="txtSummary" TextMode="SingleLine"  Width="250px"></telerik:RadTextBox></td>
                </tr>
                <tr>
                <td class="auto-style1">Created By</td><td>:</td>
                <td><telerik:RadComboBox ID="drpCreatedBy" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <telerik:RadButton ID="RadButton32" runat="server" OnClick="RadButton32_Click" Text="Search">
                        </telerik:RadButton>
                    </td>
                </tr>
            </table>
            <telerik:RadGrid ID="RadGridSearch" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridSearch_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Date & Time"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="10">  
            <telerik:RadButton ID="rbViewBy" runat="server" Text="" Visible="False"></telerik:RadButton>          
            <table>
                <tr>
                    <td>My Calendar</td><td>:</td><td><telerik:RadButton ID="rbMyCal" runat="server" Text="My Calendar" OnClick="rbMyCal_Click">
                        </telerik:RadButton></td>
                    <td>All Calendar</td><td>:</td><td><telerik:RadButton ID="rbAllCal" runat="server" Text="By Group Access" OnClick="rbAllCal_Click">
                        </telerik:RadButton></td>
                </tr>
                <tr>
                    <td>By Group</td><td>:</td><td><telerik:RadComboBox ID="ddldepartment" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddldepartment_SelectedIndexChanged"></telerik:RadComboBox></td>
                    <td>Individual</td><td>:</td><td>
                    <telerik:RadComboBox ID="drpAssignIndividual" runat="server" AutoPostBack="True" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpAssignIndividual_SelectedIndexChanged" Width="250px">
                    </telerik:RadComboBox>
                    </td>
                </tr>
            </table>
            <telerik:RadScheduler RenderMode="Lightweight" runat="server" ID="RadScheduler1" DayStartTime="08:00:00" StartInsertingInAdvancedForm="false" StartEditingInAdvancedForm="false"
            DayEndTime="20:00:00" GroupBy="Engineer" GroupingDirection="Horizontal" ColumnWidth="170px" OnAppointmentInsert="RadScheduler1_AppointmentInsert"
            OnAppointmentUpdate="RadScheduler1_AppointmentUpdate" OnAppointmentDelete="RadScheduler1_AppointmentDelete" OnAppointmentDataBound="RadScheduler1_AppointmentDataBound" 
            DataKeyField="AID" DataSubjectField="Subject" DataStartField="startdt" DataEndField="enddt" EnableRecurrenceSupport="false" EnableCustomAttributeEditing="True" OnFormCreated="RadScheduler1_FormCreated"  DisplayDeleteConfirmation="true" ShowAllDayRow="False" OnAppointmentCreated="RadScheduler1_AppointmentCreated">
                <ExportSettings>
                    <Pdf PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in" PageTopMargin="1in" />
                </ExportSettings>
            <AdvancedForm Modal="true" EnableCustomAttributeEditing="True" ></AdvancedForm>
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
        </telerik:RadPageView>
    </telerik:RadMultiPage>

    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            function OnClientFormCreated(sender, eventArgs) {
                $telerik.$(".rsAdvancedEdit").css("top", "300px");
                $telerik.$(".rsAdvancedEdit").css("left", "100px");
            }
            </script>
    </telerik:RadCodeBlock> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>