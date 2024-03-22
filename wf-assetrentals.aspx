<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assetrentals.aspx.cs" Inherits="ServiceDesk3d.wf_assetrentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 17px;
        }

        .auto-style2 {
            width: 17px;
            height: 26px;
        }


        .auto-style3 {
            height: 26px;
        }

        .auto-style4 {
            color: #FF0000;
        }
    </style>
     <script type="text/javascript">
            function showClearPrompt(sender, args) {
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
    <div class="formRow">
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click"  Visible="false" CssClass="BlueButton" />
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click"  Visible="false" CssClass="YellowButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
    <table>
         <tr>
            <td>Asset Rental ID</td>
             \]
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetRentalID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            
        </tr>
                <tr>
                    <td>Requestor Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtRequestorName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Requestor Contact No</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtRequestorContactNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Requestor Email</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtRequestorEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
                    </td>

                    <td>Request Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpArRequestType" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
               
                <tr>
                   <td>Request Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpArRequestStatus" runat="server" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpArRequestStatus_SelectedIndexChanged"></telerik:RadComboBox>
                    </td>
                   <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Returned Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtArReturnedDate" runat="server" Width="250px" Enabled="false">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>

                </tr>
                 <tr>
                    <td>Loan Start Date</td>
                    <td>:</td>
                    <td>
                      <telerik:RadDatePicker ID="txtArBorrowsStartDate" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                    <td>Loan End Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtArBorrowsEndDate" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
        <tr>
             <td>Asset Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAsset2ndCategoryId_SelectedIndexChanged1"></telerik:RadComboBox>
                <%--<telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px"></telerik:RadComboBox>--%>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
               <tr>
                   <td>Asset Items</td>
                   <td>:</td>
                   <td>
                       <telerik:RadComboBox ID="drpAsset" runat="server" Width="250px" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" AutoPostBack="true"></telerik:RadComboBox>
                   </td>
                   <td></td>
                   <td></td>
                   <%--<td><telerik:RadButton RenderMode="Lightweight" ID="btnShowAssetItems" runat="server" Text="View Asset Items" OnClick="btnShowAssetItems_Click"  /></td>--%>
                   <td></td>
               </tr>
        <tr>
                    <td>Remarks </td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtRequestorRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>

        
        <tr>
            <td>Approval Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpApprovalStatus" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
            <td>Approval Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtApprovalName" runat="server" Width="250px" ReadOnly="true" Enabled="false"></telerik:RadTextBox>
                    </td>
        </tr>
            </table>
       <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Rental List" Selected="True">
                <TabTemplate>
                    Asset Rental List
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
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("AssetID") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("AssetID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>

                        <telerik:GridBoundColumn SortExpression="SystemSN" DataField="SystemSN" HeaderText="Serial No"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="assetcategoryid" DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="asset2ndcategoryid" DataField="asset2ndcategoryid" HeaderText="Asset Type"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="asset3rdcategoryid" DataField="asset3rdcategoryid" HeaderText="Asset Model"></telerik:GridBoundColumn>
                         <telerik:GridTemplateColumn HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("assetid") %>'
                            CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
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
                       <%-- <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
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
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
         <AjaxSettings>
             <telerik:AjaxSetting AjaxControlID="drpAsset2ndCategory">
                 <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="drpAsset" />
                 </UpdatedControls>
             </telerik:AjaxSetting>
         </AjaxSettings>
    </telerik:RadAjaxManager>
      <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
</asp:Content>