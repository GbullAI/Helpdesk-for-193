<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-siteadmin.aspx.cs" Inherits="ServiceDesk3d.wf_siteadmin" %>
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
                var answer = confirm("Are you sure you want to remove this site?");	
                if (answer) {	
                    sender.click();	
                }	
                else args.set_cancel(true);	
            }	
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Branch Setup</h3>
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" Visible="false" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnGetBranchDetails" runat="server" Text="Import Branch List" OnClick="btnGetBranchDetails_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
        <telerik:RadLabel ID="lblc" runat="server" Visible="true" ></telerik:RadLabel>
    </div>
    <table>
        <tr>
            <td>Branch ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSiteID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Branch Name<span style="color:red">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSiteDesc" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td hidden="hidden">Branch Name<span style="color:red" hidden="hidden">*</span></td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadTextBox ID="txtSiteName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Asset Location</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetLocation" runat="server" Filter="StartsWith"  Width="250px"></telerik:RadComboBox>
            </td>
            <td>Is Active<span style="color:red">*</span></td>	
            <td>:</td>	
            <td>	
                <telerik:RadRadioButtonList runat="server" ID="radIsActive" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">	
                    <Items>	
                        <telerik:ButtonListItem Text="Yes" Value="1" />	
                        <telerik:ButtonListItem Text="No" Value="0" />	
                    </Items>	
                </telerik:RadRadioButtonList>
                <telerik:RadComboBox Visible="false" runat="server" ID="cmbIsActive" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">	
                    <Items>	
                        <telerik:RadComboBoxItem Text="ALL" Value="-1" />	
                        <telerik:RadComboBoxItem Text="Yes" Value="1" />	
                        <telerik:RadComboBoxItem Text="No" Value="0" />	
                    </Items>	
                </telerik:RadComboBox>	
            </td>
        </tr>
        <tr>
            <td>Latitude</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLatitude" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Longitude</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLongitude" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Branch Address<span style="color:red">*</span></td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtSiteAddress" runat="server" Width="88%" Rows="6" TextMode="MultiLine"></telerik:RadTextBox>
            </td>
        </tr>
</table>
   <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Branch List" Selected="True">
                <TabTemplate>
                    Branch List
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
    <telerik:RadGrid ID="radGridSite" AllowCustomPaging="true" VirtualItemCount="10" OnNeedDataSource="radGridSite_NeedDataSource" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="10" OnPageIndexChanged="radGridSite_PageIndexChanged" OnSortCommand="radGridSite_SortCommand" >
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Branch ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetsiteid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetsiteid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn SortExpression="assetsitename" DataField="assetsitename" HeaderText="Branch Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="site_name" DataField="site_name" HeaderText="Branch Name" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="site_address" DataField="site_address" HeaderText="Branch Address"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="assetlocation" DataField="assetlocation" HeaderText="Asset Location"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="ActiveName" DataField="ActiveName" HeaderText="Active"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="latitude" DataField="latitude" HeaderText="Latitude"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="longitude" DataField="longitude" HeaderText="Longitude"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
