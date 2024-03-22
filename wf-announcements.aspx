<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-announcements.aspx.cs" Inherits="ServiceDesk3d.wf_announcements" %>
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
                var answer = confirm("Are you sure you want to remove this announcement?");	
                if (answer) {	
                    sender.click();	
                }	
                else args.set_cancel(true);	
            }	
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
     <h2>Announcements</h2>
     <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />	
        <telerik:RadButton ID="RadButton1" runat="server" Text="New" OnClick="RadButton1_Click" CssClass="GreenButton" />	
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" Enabled="false" CssClass="GreenButton" />	
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />	
        <telerik:RadButton ID="RadButton2" runat="server" Text="Clear" OnClick="RadButton2_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" CssClass="YellowButton" />
    <div id="createAnnounce" runat="server" visible="false">
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>Id</td>
                            <td>:</td>
                            <td>
                                <asp:Label runat="server" ID="lblId"></asp:Label>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Stop Time</td>
                            <td>:</td>
                            <td>	
                                <telerik:RadTextBox runat="server" ID="txtStopTime1" InputType="DateTimeLocal" Width="250px"></telerik:RadTextBox>	
                                <%--   <asp:TextBox runat="server" ID="txtStopTime" ReadOnly="true"></asp:TextBox>	
                                <img src="calender.png" />--%>	
                              <%--  <telerik:RadDateTimePicker ID="txtStopTime" runat="server" Width="250px">	
                                    <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">	
                                       </DateInput>	
                                   <TimeView Skin="Default" runat="server" Width="400px" Height="300px" ShowHeader="True" StartTime="00:00:00" Interval="00:01:00" EndTime="24:00:00"	
                                         Columns="3"></TimeView>	
                                </telerik:RadDateTimePicker>--%>	
                               
                            </td>
                        </tr>
                        <tr>
                                <td>Status</td>
                                <td>:</td>
                                <td>
                                    <telerik:RadComboBox ID="drpStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
                                </td>
                            </tr>
                        <tr>
                                <td>Group</td>
                                <td>:</td>
                                <td>
                                    <telerik:RadComboBox ID="drpGroup" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpGroup_SelectedIndexChanged"></telerik:RadComboBox>
                                </td>
                            </tr>
                        <tr>
                                <td>User</td>
                                <td>:</td>
                                <td>
                                    <telerik:RadComboBox ID="drpUser" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
                                </td>
                            </tr>
                        <tr style="vertical-align: top;">
                            <td>
                                Announcement</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox runat="server" ID="txtAnnounce" TextMode="MultiLine" Width="250px"></telerik:RadTextBox>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <%--<asp:Button ID="btnNew" runat="server" Text="Create" OnClick="btnNew_Click" />--%>
                    <telerik:RadButton ID="btnNew" runat="server" Text="Announce" CssClass="btn btn-sky shiny" OnClick="btnNew_Click" Visible="false" />
                    <telerik:RadButton ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-sky shiny" OnClick="btnCancel_Click" Visible="false" />
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
    <div>
         <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Announcement List" Selected="True">
                <TabTemplate>
                   Announcement List
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
            <telerik:RadGrid ID="grdAnnouncements" runat="server" Visible="true" AllowSorting="true" OnSortCommand="grdAnnouncements_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="20">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("Id") %>'
                                    CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridBoundColumn DataField="Id" HeaderText="Id" ></telerik:GridBoundColumn>     --%>
                        <telerik:GridBoundColumn DataField="DateandTime" HeaderText="Date and Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="User" HeaderText="User"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Announcement" HeaderText="Announcement"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StopTime" HeaderText="Stop Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TargetGroup" HeaderText="Target Group"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TargetUser" HeaderText="Target User"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Status" HeaderText="Status"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true"  OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
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
               <h3><asp:Label runat="server" ID="lblDelete" Text="Delete Log"></asp:Label></h3>
             <telerik:RadGrid ID="GridViewDeleteTrail" runat="server"  AllowSorting="true" Visible="true"  OnSortCommand="GridViewDeleteTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewDeleteTrail_PageIndexChanged">
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
