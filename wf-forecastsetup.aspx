<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-forecastsetup.aspx.cs" Inherits="ServiceDesk3d.wf_forecastsetup" %>

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
                var answer = confirm("Are you sure you want to remove this supplier?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Forecast Setup</h2>
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <table>
        <tr>
            <td colspan="6">
                <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
                <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton"  />
                <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton"  />
                <telerik:RadButton ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
            </td>
        </tr>
         <tr hidden="hidden">
            <td>Forecast ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtForecastID" runat="server" Width="250px" Enabled="false" Visible="false"></telerik:RadTextBox>
            </td>
             <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Forecast Value</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtForecastValue" runat="server" Width="250px" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtForecastValue" ValidationExpression="^[0-9]\d"></asp:RegularExpressionValidator>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        
        <tr>
            <td colspan="6">
                <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Forecast List" Selected="True">
                <TabTemplate>
                   Forecast List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Log" Selected="True">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Delete Trail" Visible="false" Selected="True">
                <TabTemplate>
                    Delete Trail
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
              <telerik:RadGrid ID="radGridForecast" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="radGridSupplier_PageIndexChanged" AllowSorting="true" OnSortCommand="radGridSupplier_SortCommand" PageSize="99">
                <GroupingSettings CollapseAllTooltip="Collapse all groups" />
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" PageSize="10">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Forecast ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("forecastid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("forecastid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="forecastvalue" HeaderText="Forecast Value"></telerik:GridBoundColumn>
                    </Columns>
                    <ItemStyle Height="13px" />
                    <AlternatingItemStyle BackColor="#EEEEEE" Height="13px" />
                    <PagerStyle PageSizeControlType="None" />
                    <HeaderStyle Height="14px" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="Label1" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
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
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Delete Log"></asp:Label></h3>
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
            </td>
        </tr>
    </table>
    <asp:HiddenField runat="server" ID="HiddenField1"
    OnValueChanged="HiddenField1_ValueChanged" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
    function confirmDeleteForecast() {
        var value = confirm('Are you sure you want to delete this supplier?');
        $('#<%= HiddenField1.ClientID %>').val(value);
        __doPostBack('', '');
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
