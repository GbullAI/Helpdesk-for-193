<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk-monitor-selfcare.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk_monitor_selfcare" %>
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
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>        
    <table>
        <tr>
             <td hidden="hidden">Knowledgebase</td>
             <td hidden="hidden">:</td>
             <td hidden="hidden">
                 <telerik:RadComboBox ID="drpChecklist" runat="server" Width="250px" Filter="Contains" ToolTip="To add knowledge base" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpChecklist_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false" ></telerik:RadComboBox></td>
            <td></td> 
            <td></td>
              
         </tr>  
        <tr>
            <td>Sort By</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSort" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="True" ToolTip="Select a sort by field" OnSelectedIndexChanged="drpSort_SelectedIndexChanged" AutoPostBack="True">
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
            
            <td></td>
            <td>
              <telerik:RadTextBox runat="server" ID="txtSearchSRID" TextMode="SingleLine"  Width="11px" Visible="false"></telerik:RadTextBox>  
                <telerik:RadButton ID="btnFAQ" runat="server" Text="FAQ" ToolTip="Click here to see Frequently Asked Questions(FAQ)" OnClick="btnFAQ_Click" Width="222px"></telerik:RadButton>
            <telerik:RadButton ID="RadButton33" runat="server" Text="New Ticket" ToolTip="To create a new ticket or incident" OnClick="RadButton33_Click" Width="222px"></telerik:RadButton>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Group</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpLevel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpLevel_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
            <td>Level</td>
            <td>:</td>
            <td>
               <telerik:RadComboBox ID="drpGroup" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpGroup_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <%--<tr hidden="hidden">
            <td>Country</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCountryAccess_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
            <td></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>--%>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" SelectedIndex="0">        
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="My Ticket" Selected="True">                
                <TabTemplate>
                    My Ticket
                </TabTemplate>                
            </telerik:RadTab>
            <%--<telerik:RadTab TabIndex="1" runat="server" Text="Overdue Completion" >
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
                    Resolved
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="High Priority">                
                <TabTemplate>
                    Closed
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="Search Request">                
                <TabTemplate>
                    High Priority
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Search Request">                
                <TabTemplate>
                    Search Request
                </TabTemplate>                
            </telerik:RadTab>--%>
            <%--<telerik:RadTab TabIndex="10" runat="server" Text="Calendar">                
                <TabTemplate>
                    Calendar
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="11" runat="server" Text="Dashboard">                
                <TabTemplate>
                    Dashboard
                </TabTemplate>                
            </telerik:RadTab>--%>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" >
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadButton ID="RadButton1" Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton2"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton3"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridIndividual" runat="server" Visible="true" OnSortCommand="RadGridIndividual_SortCommand" AllowSorting="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridIndividual_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" ToolTip="Click here to view this ticket" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"  ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2-selfcare.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadButton ID="RadButton7"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton8"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton9"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridGroup" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridGroup_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridGroup_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"  DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"  DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>                                                
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
            <telerik:RadButton ID="RadButton10"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton11"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton12"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridAssignedx" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridAssignedx_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridAssignedx_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <telerik:RadButton ID="RadButton13"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton14"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton15" Visible="false"  runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridOverdue" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridOverdue_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridOverdue_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <telerik:RadButton ID="RadButton16"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton17"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton18"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridInProgress" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridInProgress_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridInProgress_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <telerik:RadButton ID="RadButton19"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton20"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton21"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridPending" runat="server" Visible="true" OnSortCommand="RadGridPending_SortCommand" AllowSorting="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridPending_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            <telerik:RadButton ID="RadButton22"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton23"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton24"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridResovled" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridResovled_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridResovled_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#cccccc" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="7">
            <telerik:RadButton ID="RadButton25"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton26"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton27"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridClosed" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="RadGridClosed_SortCommand"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGridClosed_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>        
        <telerik:RadPageView runat="server" TabIndex="8">
            <telerik:RadButton ID="RadButton5"  Visible="false" runat="server" Text="Individual" OnClick="RadButton1_Click"></telerik:RadButton>
            <telerik:RadButton ID="RadButton6"  Visible="false" runat="server" Text="Group"></telerik:RadButton>
            <telerik:RadButton ID="RadButton28"  Visible="false" runat="server" Text="Level"></telerik:RadButton>
            <telerik:RadGrid ID="RadGridHighPriority" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="RadGridHighPriority_SortCommand" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridHighPriority_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>        
        <telerik:RadPageView runat="server" TabIndex="9">
            <telerik:RadButton ID="RadButton4" runat="server" Text="Search" OnClick="RadButton4_Click1" Visible="false"></telerik:RadButton>
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
                <td><telerik:RadDatePicker ID="txtRequestLogDate" runat="server" ><DateInput DateFormat="dd/MM/yyyy" runat="server"  Width="250px"> 
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
            <telerik:RadGrid ID="RadGridSearch" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="RadGridSearch_SortCommand" MasterTableView-PageSize="10" OnPageIndexChanged="RadGridSearch_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_requestsummary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime"   DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
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
            <telerik:RadScheduler RenderMode="Lightweight" runat="server" ID="RadScheduler1" DayStartTime="08:00:00" StartInsertingInAdvancedForm="true" StartEditingInAdvancedForm="true"
            DayEndTime="20:00:00" GroupBy="Engineer" GroupingDirection="Horizontal" ColumnWidth="170px" OnAppointmentInsert="RadScheduler1_AppointmentInsert"
            OnAppointmentUpdate="RadScheduler1_AppointmentUpdate" OnAppointmentDelete="RadScheduler1_AppointmentDelete" OnAppointmentDataBound="RadScheduler1_AppointmentDataBound" 
            DataKeyField="AID" DataSubjectField="Subject" DataStartField="startdt" DataEndField="enddt" EnableRecurrenceSupport="false" EnableCustomAttributeEditing="True" OnFormCreated="RadScheduler1_FormCreated"  DisplayDeleteConfirmation="true" ShowAllDayRow="False" OnAppointmentCreated="RadScheduler1_AppointmentCreated">
                <ExportSettings>
                    <Pdf PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in" PageTopMargin="1in" />
                </ExportSettings>
            <AdvancedForm Modal="true" EnableCustomAttributeEditing="True" >                
            </AdvancedForm>
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
        <telerik:RadPageView runat="server" TabIndex="11">
            <table>
                    <tr>
                        <td>
                            <telerik:RadHtmlChart runat="server" ID="RadChartOpenClosed" Width="400" Height="400" >
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
                    <telerik:AreaSeries Name="Closed" >
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
                        <td style="text-align:left">
            <span style="font-weight:bold">MTD : % Of Resolved Within SLA</span><br />
            <telerik:RadRadialGauge runat="server" ID="RadRadialGauge1" Width="320" Height="320" >
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
                    <LabelsAppearance  DataFormatString ="{0}" RotationAngle="0" Skip="0"></LabelsAppearance>
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
    <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow1" runat="server" OnUnload="RadWindow1_Unload" DestroyOnClose="true" OnDisposed="RadWindow1_Unload" 
            Height="555"
             Width="333">
    </telerik:RadWindow>
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
