<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-workorder2.aspx.cs" Inherits="ServiceDesk3d.wf_workorder2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
     <script type="text/javascript">
            function showPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");

                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
	
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblPM" Width="300px" Height="150px" ShowCloseButton="true"></telerik:RadNotification>
    <div class="formRow">	
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Visible="false" CssClass="BlueButton" ></telerik:RadButton>	
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Visible="false" CssClass="BlueButton" ></telerik:RadButton>	
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Visible="false" CssClass="YellowButton" />	
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" ></telerik:RadButton>	
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnDelete_Click" Visible="false" CssClass="RedButton" ></telerik:RadButton>	
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnClear_Click" OnClientClicking="showPrompt" CssClass="GreyButton" ></telerik:RadButton>
         <telerik:RadButton ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" CssClass="PurpleButton" />
        <telerik:RadLabel ID="lblOperation" runat="server"  Visible="false" ></telerik:RadLabel> 

    </div>
    
    <div>
        <table >      
        <tr>
                                
            <telerik:RadLabel ID="lblSession" runat="server" Visible="false" ></telerik:RadLabel>
        </tr>
        <tr>
            <td>Work Order No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWorkOrderNo" runat="server" ReadOnly="true" Width="250px" Enabled="false">
                </telerik:RadTextBox>
            </td>
            <td>Requester<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRequester" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>                                
        </tr>
        <tr>
            <td>Equipment ID<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEquipmentID" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px"  AutoPostBack="True" OnSelectedIndexChanged="ddlEquipmentID_SelectedIndexChanged">
                </telerik:RadComboBox>

            </td>
            <td>Work Order Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlWorkOrderType" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddlWorkOrderType_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Engineer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEngineer" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
            <td>Priority</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlPriority" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Status<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlStatus" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
            <td>Material Cost</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtMaterialCost" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
            
        </tr>      
        <tr>
            <td>Date Initiated</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateInitiated" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
            </td>
                                 
              <td>Time Start <span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                (HH)<telerik:RadTextBox ID="txtTimeReport1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeReport2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                                   
            </td>
        </tr>
        <tr>
           <td>Date Schedule </td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateSchedule" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
                                    
            </td>
                      <td>Time Service <span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                (HH)<telerik:RadTextBox ID="txtTimeRespond1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeRespond2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                                   
            </td>
        </tr>
        <tr>
            <td>Date Completed</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPdatecomplete" runat="server" MarkFirstMatch="true" Width="250px"  DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
                                    
            </td>
            <td>Time Completed</td>
            <td>:</td>
            <td>
                       (HH)<telerik:RadTextBox ID="txtTimeComplete1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeComplete2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                               
            </td>
        </tr>
        <tr>                                
            <td>Reference No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtReferenceNo" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
            <td></td>
            <td></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>Hour Taken</td>
            <td>:</td>
            <td>
                 <telerik:RadTextBox ID="txtHourTaken" runat="server" ReadOnly="true" Width="50px" Enabled="false"></telerik:RadTextBox>H	
                <telerik:RadTextBox ID="txtHourTakenM" runat="server" ReadOnly="true" Width="50px" Enabled="false"></telerik:RadTextBox>m
                <br /><span style="color: #ff0033">*(Auto calculate - No need to key in)</span>
            </td>
              <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteArrivalTimex" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
        </tr>
        <tr>
                 <td>Work Requested</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtWorkRequested" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Corrective Action</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCorrectiveAction" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Cause of Failure</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCauseOfFailure" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Problem Symptoms</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtSymptoms" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Remedy/Job Done</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtJobDone" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>
            </td>
        </tr>
    </table>
    </div>
    
  <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Work Order" Selected="True">
                <TabTemplate>
                    Work Order
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Audit Trail">
                <TabTemplate>
                    Audit Trail
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="RadGridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" MasterTableView-PageSize="10" style="margin-top: 12px" OnSortCommand="RadGridView1_SortCommand" OnSelectedCellChanged="RadGridView1_SelectedCellChanged" OnPageIndexChanged="RadGridView1_PageIndexChanged">
                <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true"  >  
                    <Selecting AllowRowSelect="True" />
                </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#ffffff" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="13px" CellPadding="2" CellSpacing="2" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Work Order No">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("workorderid") %>'
                                    CommandName="Select" OnCommand="useLinkButton_Command" Text='<%# Eval("workorderid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>                           
                        <telerik:GridBoundColumn DataField="assetid" HeaderText="Equipment ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="workrequested" HeaderText="Descriptions"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="wostatusid" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="dateinitiated" HeaderText="Date Initiated" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>  
                    </Columns>
                    <ItemStyle Height="12px"></ItemStyle>
                    <AlternatingItemStyle BackColor="White" Height="12px"></AlternatingItemStyle>
                    <PagerStyle PageSizeControlType="None" />
                    <HeaderStyle Height="13px"></HeaderStyle>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server" AutoGenerateColumns="False" AllowPaging="True" MasterTableView-PageSize="10" style="margin-top: 12px" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged" OnSortCommand="GridViewAuditTrail_SortCommand" OnSelectedCellChanged="GridViewAuditTrail_SelectedCellChanged">
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true" >
                    <Selecting AllowRowSelect="True" />
                </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#ffffff" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px" CellPadding="2" CellSpacing="2">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                    <ItemStyle Height="12px"></ItemStyle>
                    <AlternatingItemStyle BackColor="White" Height="12px"></AlternatingItemStyle>
                    <PagerStyle PageSizeControlType="None" />
                    <HeaderStyle Height="13px"></HeaderStyle>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

    </telerik:RadMultiPage>
   

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
