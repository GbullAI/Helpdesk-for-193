<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assettransit.aspx.cs" Inherits="ServiceDesk3d.wf_assettransit" %>

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
            <td>Asset Transit ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetTransitID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            
        </tr>
        <tr>
                    <td>Origin</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAtOriginWarehouseId" runat="server" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpAtOriginWarehouseId_SelectedIndexChanged"></telerik:RadComboBox>
                        <%--<telerik:RadTextBox ID="txtRequestorName" runat="server" Width="250px"></telerik:RadTextBox>--%>
                    </td>
                    <td>Destination</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAtDestinationWarehouseId" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
        <tr>
                   <td>Asset Items</td>
                   <td>:</td>
                   <td>
                       <telerik:RadComboBox ID="drpAsset" runat="server" Width="250px" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" AutoPostBack="true"></telerik:RadComboBox>
                   </td>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
                   <%--<td><telerik:RadButton RenderMode="Lightweight" ID="btnShowAssetItems" runat="server" Text="View Asset Items" OnClick="btnShowAssetItems_Click"  /></td>--%>
                   <td>&nbsp;</td>
               </tr>
                
                <tr>
                 

                   <td>Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAtStatusId" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
        <tr hidden="hidden">
               <td>Final Asset Warehouse</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAtFinalAssetWarehouse" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
        </tr>
        <tr>
                    <td>Estimated Arrival Date</td>
                    <td>:</td>
                    <td>
                      <telerik:RadDatePicker ID="txtAtEADate" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                    <td>Actual Arrival Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtAtAADate" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
         
        <tr>
                    <td>Remarks </td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAtRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>
        <tr>
            
            <td>Created By:</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAtCreatedBy" runat="server" Width="250px" ReadOnly="true" Enabled="false"></telerik:RadTextBox>
                    </td>
            <td>Created Date:</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtAtCreatedDate" runat="server" Width="250px" Enabled="false">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
        </tr>
            </table>
       <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Rental List" Selected="True">
                <TabTemplate>
                    Asset Transit List
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
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
         
    </telerik:RadMultiPage>
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
         <AjaxSettings>
             <telerik:AjaxSetting AjaxControlID="drpAtOriginWarehouseId">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAtDestinationWarehouseId" />
                    <telerik:AjaxUpdatedControl ControlID="drpAsset" />
                </UpdatedControls>
             </telerik:AjaxSetting>
         </AjaxSettings>
     </telerik:RadAjaxManager>
     <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
</asp:Content>
