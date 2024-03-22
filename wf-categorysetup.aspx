<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-categorysetup.aspx.cs" Inherits="ServiceDesk3d.wf_categorysetup" ValidateRequest="false" %>

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
                var answer = confirm("Are you sure you want to remove this asset location?");	
                if (answer) {	
                    sender.click();	
                }	
                else args.set_cancel(true);	
            }	
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
    <table>
        <tr>
            <td>Asset Location ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetCategoryId" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            
        </tr>
        <tr>
            <td>Asset Location Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetCategoryName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr hidden="hidden">
            <td>Email (Notification)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetCategoryEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
            </td>
            
            <td>Quantity (Threshold)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetCategoryQuantity" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
        </tr> 
        <tr hidden="hidden">
            <td>Is Active</td>
            <td>:</td>
            <td><telerik:RadCheckBox ID="cbxAssetCategoryIsActive" runat="server" Checked="false" Text="IS" ></telerik:RadCheckBox></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Location List" Selected="True">
                <TabTemplate>
                    Asset Location List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
              <telerik:RadTab TabIndex="2" runat="server" Text="Audit Trail">
                <TabTemplate>
                    Audit Trail
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset Location ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetcategoryid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetcategoryid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="assetcategorydesc" HeaderText="Asset Location Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assetcategoryemail" HeaderText="Email (Notification)" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assetcategoryquantity" HeaderText="Quantity (Threshold)" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-categorysetup.aspx?assetcategoryid=<%#DataBinder.Eval(Container.DataItem,"assetcategoryid")%>&show=<%#DataBinder.Eval(Container.DataItem,"assetcategoryid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "assetcategoryid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
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
             <h3><asp:Label runat="server" ID="lblDeleteTrail" Text="Delete Log"></asp:Label></h3>
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
        <telerik:RadPageView runat="server" TabIndex="2">
             <telerik:RadGrid ID="GridViewHLAuditTrail" runat="server"  AllowSorting="true" Visible="true"  OnSortCommand="GridViewHLAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewHLAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                       <%-- <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

