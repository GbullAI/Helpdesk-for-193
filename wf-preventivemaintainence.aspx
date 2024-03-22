<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-preventivemaintainence.aspx.cs" Inherits="ServiceDesk3d.wf_preventivemaintainence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
  <%--  <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" />
    </div>--%>
    <table>
        <tr>
           <td>Asset Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpAsset2ndCategory_SelectedIndexChanged" AutoPostBack="true"></telerik:RadComboBox>
            </td>
            
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Preventive Maintainence Schedule" Selected="True">
                <TabTemplate>
                    Preventive Maintainence Schedule
                </TabTemplate>
            </telerik:RadTab>
             <telerik:RadTab TabIndex="1" runat="server" Text="Preventive Maintainence Checklist">
                <TabTemplate>
                   Preventive Maintainence Checklist
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
          <table>
                    <asp:Label ID="lblAssetMaintainTrackingID" runat="server" Text="" Visible="false"></asp:Label>
                     <asp:Label ID="lblAssetMaintainID" runat="server" Text="" Visible="false"></asp:Label>
                    <tr>
                        <td>Scheduler ID</td>
                        <td>:</td>
                        <td>
                            <telerik:RadTextBox ID="txtSchedulerID" runat="server" Width="200px" ReadOnly="True" Enabled="false"></telerik:RadTextBox>

                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Scheduler Type</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpSchedulerType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                        </td>
                        <td>Scheduler Start Datetime</td>
                        <td>:</td>
                        <td>
                             <telerik:RadDatePicker ID="txtschedulerstartdate" runat="server" Width="250px">
                                 <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                             </telerik:RadDatePicker>
                           <%-- <telerik:RadDateTimePicker ID="txtschedulerdate" runat="server" Width="200px">
                                <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                </DateInput>
                            </telerik:RadDateTimePicker>--%>
                        </td>
                    </tr>
                  
                    <tr hidden="hidden">
   <td>Check</td>
                        <td>:</td>
                        <td><telerik:RadCheckBox ID="cbxSchedulerIsActive" runat="server" Checked="false"></telerik:RadCheckBox></td>
                             <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>         
                    </tr>
                    <tr hidden="hidden">
                       
                        <td>Created By</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtSchedulerCreatedBy" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                        <td>Created Date</td>
                                                <td>:</td>
                                                <td>
                                                    <%--<telerik:RadTextBox ID="txtTaskCreatedDate" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>--%>
                                                    <telerik:RadDateInput ID="txtSchedulerCreatedDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                                                </td>
                    </tr>
                  <tr>
                                                <td colspan="9">
                                                    <telerik:RadButton ID="btnSchedulerSave" runat="server" Text="Save" Enabled="true" OnClick="btnSchedulerSave_Click"></telerik:RadButton>
                                                    <telerik:RadButton ID="btnSchedulerClear" runat="server" Text="Clear" Enabled="true" OnClick="btnSchedulerClear_Click"></telerik:RadButton>
                                                </td>
                                            </tr>
                    <tr>
                                                <td colspan="9">
                                                    <telerik:RadGrid ID="RadGridScheduler" runat="server" AllowSorting="true" OnSortCommand="RadGridScheduler_SortCommand" Visible="true" AutoGenerateColumns="false">
                                                        <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                                                        <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                                                            <Columns>
                                                                <telerik:GridTemplateColumn HeaderText="ID">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("schedulerno") %>'
                                                                            CommandName="Show" OnCommand="useLinkButton_CommandScheduler" Text='<%# Eval("schedulerno") %>'></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </telerik:GridTemplateColumn>
                                                                <telerik:GridBoundColumn DataField="schedulerdate" HeaderText="Scheduler Start Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="schedulertype" HeaderText="Scheduler Type"></telerik:GridBoundColumn>
                                                                <%--<telerik:GridBoundColumn DataField="active" HeaderText="Check"></telerik:GridBoundColumn>--%>
                                                                <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="createddate" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                    </telerik:RadGrid>
                                                </td>
                                            </tr>
                </table>
            
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
          <table>
                    <asp:Label ID="lblassetmaintainencetrackingid" runat="server" Text="" Visible="false"></asp:Label>
                     <asp:Label ID="lblassetmaintainenceid" runat="server" Text="" Visible="false"></asp:Label>
                    <tr>
                        <td>Task ID</td>
                        <td>:</td>
                        <td>
                            <telerik:RadTextBox ID="txtTaskID" runat="server" Width="200px" ReadOnly="True" Enabled="false"></telerik:RadTextBox>

                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                                                <td>Task Descriptions</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskDesc" runat="server" Width="200px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>
                                                </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                                            </tr>
                  <tr hidden="hidden">
                       <td>Check</td>
                        <td>:</td>
                        <td><telerik:RadCheckBox ID="cbxTaskIsActive" runat="server" Checked="false"></telerik:RadCheckBox></td>
                  </tr>
                     <tr>		
                     <td>Remarks</td>	
                                                <td>:</td>	
                                                <td>	
                                                    <telerik:RadTextBox ID="txtTaskRemarks" runat="server" Width="200px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>	
                                                </td>
                             <td>Cost</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTaskCost" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                                              	
                                            </tr>
                    <tr hidden="hidden">
                        <td>Created By</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskCreatedBy" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                        <td>Created Date</td>
                                                <td>:</td>
                                                <td>
                                                    <%--<telerik:RadTextBox ID="txtTaskCreatedDate" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>--%>
                                                    <telerik:RadDateInput ID="txtTaskCreatedDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                                                </td>
                    </tr>
                      <tr>
                                                <td colspan="9">
                                                    <telerik:RadButton ID="btnTaskSave" runat="server" Text="Save" Enabled="true" OnClick="btnTaskSave_Click"></telerik:RadButton>
                                                    <telerik:RadButton ID="btnTaskClear" runat="server" Text="Clear" Enabled="true" OnClick="btnTaskClear_Click"></telerik:RadButton>
                                                </td>
                                            </tr>
                    <tr>
                                                <td colspan="9">
                                                    <telerik:RadGrid ID="RadGridTask" runat="server" AllowSorting="true" OnSortCommand="RadGridTask_SortCommand" Visible="true" AutoGenerateColumns="false">
                                                        <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                                                        <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                                                            <Columns>
                                                                <telerik:GridTemplateColumn HeaderText="ID">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("taskno") %>'
                                                                            CommandName="Show" OnCommand="useLinkButton_CommandTask" Text='<%# Eval("taskno") %>'></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </telerik:GridTemplateColumn>
                                                                <telerik:GridBoundColumn DataField="taskdesc" HeaderText="Task Descriptions" HtmlEncode="False"></telerik:GridBoundColumn>
                                                                <%--<telerik:GridBoundColumn DataField="active" HeaderText="Check"></telerik:GridBoundColumn>--%>
                                                                <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="createddate" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                    </telerik:RadGrid>
                                                </td>
                                            </tr>
                </table>
            
        </telerik:RadPageView> 
    </telerik:RadMultiPage>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
