<%@ Page Language="C#" MasterPageFile="~/SiteMbl.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk-monitor-m.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk_monitor_m" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="Row">
        <div class="Column35">Country</div>
        <div class="Column5">:</div>
        <div class="Column60">
            <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="drpCountryAccess_SelectedIndexChanged"></telerik:RadComboBox>
        </div>
    </div>--%>
    <div class="Row">
        <div class="Column35">Status</div>
        <div class="Column5">:</div>
        <div class="Column60">
            <telerik:RadComboBox ID="drpStatus" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="drpStatus_SelectedIndexChanged"></telerik:RadComboBox>
        </div>
    </div>
    <div class="Row">
        <div class="Column100">
            <telerik:RadGrid ID="RadGridIndividual" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridIndividual_SortCommand" AutoGenerateColumns="false"  AllowPaging="true"  MasterTableView-PageSize="10" RenderMode="Mobile" OnPageIndexChanged="RadGridIndividual_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </div>
    </div>
    <div class="Row">
        <div class="Column50"></div>
        <div class="Column50"></div>
    </div>
    <div class="Row">
        <div class="Column33"></div>
        <div class="Column33"></div>
        <div class="Column34"></div>
    </div>
</asp:Content>
