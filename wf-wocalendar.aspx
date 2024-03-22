<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-wocalendar.aspx.cs" Inherits="ServiceDesk3d.wf_wocalendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
.rsAllDayWrapper 
    { 
        visibility:hidden !important; 
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadSkinManager runat="server" Skin="Web20" ></telerik:RadSkinManager>
    <telerik:RadButton ID="rbViewBy" runat="server" Text="" Visible="False"></telerik:RadButton>          
            <table>
                <tr>
                    <td>My Calendar</td><td>:</td><td><telerik:RadButton ID="rbMyCal" runat="server" Text="My Calendar" OnClick="rbMyCal_Click">
                        </telerik:RadButton></td>
                    </tr>
                <tr>
                    <td>All Calendar</td><td>:</td><td><telerik:RadButton ID="rbAllCal" runat="server" Text="By Group Access" OnClick="rbAllCal_Click">
                        </telerik:RadButton></td>
                </tr>
                <tr>
                    <td>By Group</td><td>:</td><td><telerik:RadComboBox ID="ddldepartment" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddldepartment_SelectedIndexChanged"></telerik:RadComboBox></td>
                    </tr>
                <tr>
                    <td>Individual</td><td>:</td><td>
                    <telerik:RadComboBox ID="drpAssignIndividual" runat="server" AutoPostBack="True" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpAssignIndividual_SelectedIndexChanged" Width="250px">
                    </telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Schedule No</td><td>:</td><td><telerik:RadComboBox ID="RadComboBox1" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddldepartment_SelectedIndexChanged">
                        <Items>
                            <telerik:RadComboBoxItem Value="1" Text="ALL" />
                        </Items> 
                                                      </telerik:RadComboBox></td>
                    </tr>
                <tr>
                    <td>Asset</td><td>:</td><td>
                    <telerik:RadComboBox ID="RadComboBox2" runat="server" AutoPostBack="True" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpAssignIndividual_SelectedIndexChanged" Width="250px">
                                                <Items>
                            <telerik:RadComboBoxItem Value="1" Text="ALL" />
                        </Items> 

                    </telerik:RadComboBox>
                    </td>
                </tr>
            </table>
        <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>    
    <telerik:RadScheduler RenderMode="Lightweight" runat="server" ID="RadScheduler1" DayStartTime="08:00:00" StartInsertingInAdvancedForm="true" StartEditingInAdvancedForm="true"
            DayEndTime="09:00:00" GroupBy="Engineer" GroupingDirection="Vertical" ColumnWidth="70px" OnAppointmentInsert="RadScheduler1_AppointmentInsert"
            OnAppointmentUpdate="RadScheduler1_AppointmentUpdate" OnAppointmentDelete="RadScheduler1_AppointmentDelete" OnAppointmentDataBound="RadScheduler1_AppointmentDataBound" 
            DataKeyField="AID" DataSubjectField="Subject" DataStartField="startdt" DataEndField="enddt" EnableRecurrenceSupport="false" EnableCustomAttributeEditing="True" OnFormCreated="RadScheduler1_FormCreated"  DisplayDeleteConfirmation="true" ShowAllDayRow="False">
                <ExportSettings>
                    <Pdf PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in" PageTopMargin="1in" />
                </ExportSettings>
            <AdvancedForm Modal="false" EnableCustomAttributeEditing="True" ></AdvancedForm>
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
                        <a href='wf-helpdesk2-m.aspx?inclidentid=<%# Eval("Description") %>'><%# ((string)Eval("Description") == "") ? "" : "Goto Ticket" %></a>                                                
                    </div>
                </div>
            </AppointmentTemplate>
        </telerik:RadScheduler>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
