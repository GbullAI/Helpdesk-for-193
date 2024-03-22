<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-workordermonitoring.aspx.cs" Inherits="ServiceDesk3d.wf_workordermonitoring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
	
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblPM" Width="300px" Height="150px" ShowCloseButton="true"></telerik:RadNotification>

    <table>      
        <tr>
            <td><h2>Work Order List</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px" CssClass="GreenButton" /></td>
        </tr>
        <tr>
            <td>Requester</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRequester" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
            <td>Work Order No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWorkOrderNo" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Work Order Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlWorkOrderType" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>

            </td>
            <td>Engineer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEngineer" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Priority</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlPriority" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>

            </td>

            <td>Status</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlStatus" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Equipment ID</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEquipmentID" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>

            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
                            
        <tr>
            <td>Date Initiated</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateInitiated" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
            <td>To</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateInitiatedTo" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
        </tr>
        <tr>
            <td>Date Schedule</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateSchedule" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
                <td>To</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateScheduleTo" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
        </tr>
        <tr>
            <td>Date Completed</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateComplete" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
            <td>To</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateCompleteTo" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy"></telerik:RadDatePicker>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <telerik:RadButton ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
    </table>
    <br />



    <telerik:RadGrid ID="RadGridListing" runat="server" AutoGenerateColumns="False" AllowPaging="True" MasterTableView-PageSize="10" 
         style="margin-top: 12px" OnSortCommand="RadGridListing_SortCommand" OnSelectedCellChanged="RadGridListing_SelectedCellChanged" OnPageIndexChanged="RadGridListing_PageIndexChanged">
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
                      <telerik:GridTemplateColumn HeaderText="Edit">	
                    <ItemTemplate>	
                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("workorderid") %>'	
                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>	
                    </ItemTemplate>	
                </telerik:GridTemplateColumn>	
                <telerik:GridTemplateColumn HeaderText="Remove">	
                    <ItemTemplate>	
                        <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("workorderid") %>'	
                            CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>	
                    </ItemTemplate>	
                </telerik:GridTemplateColumn>
            </Columns>
            <ItemStyle Height="12px"></ItemStyle>
            <AlternatingItemStyle BackColor="White" Height="12px"></AlternatingItemStyle>
            <PagerStyle PageSizeControlType="None" />
            <HeaderStyle Height="13px"></HeaderStyle>
        </MasterTableView>
    </telerik:RadGrid>

            
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
