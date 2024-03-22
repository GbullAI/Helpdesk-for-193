<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-asset2.aspx.cs" Inherits="ServiceDesk3d.wf_asset2" ValidateRequest="false" %>

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
             function showPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }Data in table missing
Sla code description
Ticket Status
SLA not working even after configured
cannot create new knowledge base
Export to excel file is not complete. Add more details
MA End should auto calculate based on Duration field
PIC No field no need scroll function

        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Visible="false" CssClass="BlueButton"/>
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click"  Visible="false" CssClass="GreenButton"/>
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click"  Visible="false" CssClass="YellowButton"/>
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton"/>
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showPrompt" CssClass="GreyButton" />
        <telerik:RadButton ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" CssClass="PurpleButton"/>
        <telerik:RadButton ID="btnQRCode" runat="server" Text="QR Code" OnClick="btnQRCode_Click" CssClass="BrownButton"/>
        <%--<telerik:RadCheckBox ID="cbxCopy" runat="server" Checked="false" Text="Copy" ></telerik:RadCheckBox>--%>
        <asp:Label ID="lblContractID" runat="server" Text="" Visible="false"></asp:Label>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceAsset" ProviderName="MySql.Data.MySqlClient" />
    </div>
    <div runat="server" id="divServer">
    <table>
        <tr>
            <td>Asset ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
        </tr>
        <tr runat="server" id="rowAssetLocation">
            <td>Asset Location<span class="auto-style4">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetCategoryId_SelectedIndexChanged1"></telerik:RadComboBox>
                <%--<telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px"></telerik:RadComboBox>--%>
            </td>
            <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Equipment ID <span class="auto-style4">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetEquipmentId" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
           <td runat="server" id="rowStockType1">Stock Type <span class="auto-style4">*</span></td>
            <td runat="server" id="rowStockType2">:</td>
            <td runat="server" id="rowStockType3">
                <telerik:RadComboBox ID="drpAsset2ndCategoryStock" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAsset2ndCategoryStock_SelectedIndexChanged1"></telerik:RadComboBox>
                <%--<telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px"></telerik:RadComboBox>--%>
            </td>
            <td runat="server" id="rowAssetType1">Asset Type <span class="auto-style4">*</span></td>
            <td runat="server" id="rowAssetType2">:</td>
            <td runat="server" id="rowAssetType3">
                <telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAsset2ndCategoryId_SelectedIndexChanged1"></telerik:RadComboBox>
                <%--<telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px"></telerik:RadComboBox>--%>
            </td>
        </tr>
        <tr>
            <td>Status </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetStatus" runat="server" Width="250px" OnSelectedIndexChanged="drpAssetStatus_SelectedIndexChanged" AutoPostBack="true"></telerik:RadComboBox>
            </td>
           <td runat="server" id="rowStockModel1">Stock Model </td>
            <td runat="server" id="rowStockModel2">:</td>
            <td runat="server" id="rowStockModel3">
                <telerik:RadComboBox ID="drpAsset3rdCategoryStock" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
            <td runat="server" id="rowAssetModel1">Asset Model </td>
            <td runat="server" id="rowAssetModel2">:</td>
            <td runat="server" id="rowAssetModel3">
                <telerik:RadComboBox ID="drpAsset3rdCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
        </tr>
         <tr runat="server" id="rowMaintainence">	
             <%--<td>Asset Warehouse </td>	
            <td>:</td>	
            <td>	
                <telerik:RadComboBox ID="drpAssetWarehouse" runat="server" Width="250px" OnSelectedIndexChanged="drpAssetWarehouse_SelectedIndexChanged" AutoPostBack="true"></telerik:RadComboBox>	
            </td>--%>	
             <td>Asset Maintainence </td>	
            <td>:</td>	
            <td>	
                <telerik:RadComboBox ID="drpAssetMaintainence" runat="server" Width="250px"></telerik:RadComboBox>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>	
         <tr runat="server" id="rowWarehouse">	
             <td>Stock Warehouse </td>	
            <td>:</td>	
            <td>	
                <telerik:RadComboBox ID="drpAssetWarehouse" runat="server" Width="250px"></telerik:RadComboBox>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>
        <tr runat="server" id="rowSwap">
            <td>Swap Asset </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSwapAsset" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr hidden="hidden">
                <td>Customer</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpSoldToCustomerSelected" runat="server" Width="250px" OnSelectedIndexChanged="drpSoldToCustomerSelected_SelectedIndexChanged" AutoPostBack="True"></telerik:RadComboBox>
                </td>

          <td hidden="hidden">Serial Number</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadTextBox ID="txtSerialNo" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <%--<td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>--%>
        </tr>

        <tr>
            <td>Contract No.</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContract" runat="server" Width="250px" OnSelectedIndexChanged="drpContract_SelectedIndexChanged" AutoPostBack="True"></telerik:RadComboBox>
            </td>


            <td>Asset Owner</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpOwnership" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>

        <tr hidden="hidden">
            <td>MA Start Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAStartDate1x" runat="server" Width="250px">
                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                </telerik:RadDatePicker>
            </td>

            <td>Contract Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContractType" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>MA End Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAEndDate1x" runat="server" Width="250px">
                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                </telerik:RadDatePicker>
            </td>
            <td>Contract Duration</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtContractDuration" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td hidden="hidden">MA Status</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadComboBox ID="drpMAStatus" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td hidden="hidden">Manage By</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadComboBox ID="drpManageBy" runat="server" Width="250px"></telerik:RadComboBox>
            </td>

        </tr>
        <%--<tr>
            <td>SLA Code</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSLACode" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>SLA Descriptions</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSLADesc" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>--%>
            <tr hidden="hidden">

                <td>Customer Remarks</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtCustomerRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

            </tr>
        <tr runat="server" id="rowSite">
            <td>Branch ID<span class="auto-style4">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteID" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpSiteID_SelectedIndexChanged1"></telerik:RadComboBox>
                <%--<telerik:RadTextBox ID="txtSiteID" runat="server" Width="250px"></telerik:RadTextBox>--%>
            </td>
            <td>Branch Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSiteName" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
        </tr>
        <tr runat="server" id="rowSite1">
            <td>Branch Address</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtSiteAddress" runat="server" Width="88%" TextMode="MultiLine" Enabled="false"></telerik:RadTextBox>
            </td>

        </tr>
        <tr runat="server" id="rowSite2">
            <td>Branch PIC</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtPICNAme" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Branch PIC Email</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtPICEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
            </td>
        </tr>
        <%--<tr>
            <td>Site State</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteState" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Site City</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSiteCity" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            
        </tr>--%>
        <%--<tr>
            <td>Site Postcode</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSitePostCode" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Site Country</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteCountry" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>--%>
        <tr runat="server" id="rowSite3">
            <td>Branch PIC Contact</td>
            <td>:</td>
            <td>
                     <telerik:RadTextBox ID="txtPICNo" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true" Width="250px"></telerik:RadTextBox>	
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtPICNo" ValidationExpression="^[0-9]\d"></asp:RegularExpressionValidator>	
            </td>	
            <td>Branch PIC Mobile</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtSitePICMobileNo" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true" Width="250px"></telerik:RadTextBox>	
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtSitePICMobileNo" ValidationExpression="^[0-9]\d"></asp:RegularExpressionValidator>
            </td>

        </tr>
        <tr hidden="hidden">
            <td>Master Asset</td>
            <td>:</td>
            <td>
                <telerik:RadAutoCompleteBox RenderMode="Lightweight" ID="txtMasterAsset" runat="server" TextSettings-SelectionMode="Single" InputType="Text" Delimiter=";" DataSourceID="SqlDataSourceAsset" DataTextField="SystemSN" DataValueField="AssetID" Width="250px">
                </telerik:RadAutoCompleteBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset List" Visible="false">
                <TabTemplate>
                    Asset List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Asset Details" Selected="True">
                <TabTemplate>
                    Asset Details
                </TabTemplate>
            </telerik:RadTab>
            <%--<telerik:RadTab TabIndex="2" runat="server" Text="Address Details">                
                <TabTemplate>
                    Customer Details
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Contact Details">                
                <TabTemplate>
                    Contact Details
                </TabTemplate>                
            </telerik:RadTab> --%>
            <telerik:RadTab TabIndex="2" runat="server" Text="Contract Details">
                <TabTemplate>
                    Contract Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Contract Info">
                <TabTemplate>
                    Contract Info
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Miscellaneous">
                <TabTemplate>
                    Miscellaneous
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="5" runat="server" Text="Attachment">
                <TabTemplate>
                    Attachment
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="Asset Life Cycle">
                <TabTemplate>
                    Asset Life Cycle
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="Event Logs">
                <TabTemplate>
                    Event Logs
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="Tickets">
                <TabTemplate>
                    Tickets
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Asset Tracking">	
                <TabTemplate>	
                    Asset Tracking	
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="10" runat="server" Text="Asset Maintainence">	
                <TabTemplate>	
                    Asset Maintainence	
                </TabTemplate>	
            </telerik:RadTab>
            <telerik:RadTab TabIndex="11" runat="server" Text="Asset Image">	
                <TabTemplate>	
                    Asset Image	
                </TabTemplate>	
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="1">
        <telerik:RadPageView runat="server" TabIndex="0" Visible="false">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageSizeChanged="GridView1_PageSizeChanged" OnSortCommand="GridView1_SortCommand" ShowFooter="true">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset ID" DataField="assetid" Aggregate="Count" FooterText="Total Assets">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Branch ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="assetcategoryid" DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn SortExpression="SystemSN" DataField="SystemSN" HeaderText="Serial No."></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn SortExpression="Descriptions" DataField="Descriptions" HeaderText="Descriptions"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn SortExpression="CustomerID" DataField="CustomerID" HeaderText="Customer"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="SLACode" DataField="SLACode" HeaderText="SLACode"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="SiteCountry" DataField="SiteCountry" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-asset2.aspx?assetid=<%#DataBinder.Eval(Container.DataItem,"assetid")%>&show=<%#DataBinder.Eval(Container.DataItem,"assetid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "assetid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <table>
                <tr>
                    <td>Type </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetType" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Date Of Procurement</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtProcurementDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Company Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSupplierCompanyName" runat="server" Width="250px" OnSelectedIndexChanged="drpAssetSupplierCompanyName_SelectedIndexChanged" AutoPostBack="true"></telerik:RadComboBox>
                    </td>
                    <td>Supplier PIC</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetSupplierPIC" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Address</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAssetSupplierAddress" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td>Supplier Contact</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetSupplierContact" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true" Width="250px"></telerik:RadTextBox>	
                        <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtAssetSupplierContact" ValidationExpression="^[0-9]\d"></asp:RegularExpressionValidator>	
                    </td>	
                    <td>Supplier Email</td>	
                    <td>:</td>	
                    <td>	
                        <telerik:RadTextBox ID="txtAssetSupplierEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Performance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSupplierPerformance" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Host Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetHostName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>

                </tr>
                <tr>
                    <td>Asset ID</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetIDx" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                    <div runat="server" visible="false">
                    <td>Asset Location </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetLocation" runat="server" Width="250px"></telerik:RadComboBox>
                    </td></div>
                </tr>
                <%--<tr>
                    <td>Tag Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetTagName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Priority </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetPriority" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>--%>
                <%--<tr>
                    <td>Status Reason </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetStatusReason" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Supported </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSupported" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>--%>
                <tr>
                    <td>Operation System</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAssetOperationSystem" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td>Product Key</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetProductKey" runat="server" Width="250px"></telerik:RadTextBox></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Software Installed</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAssetSoftwareInstalled" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td hidden="hidden">Tier 1</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <telerik:RadComboBox ID="drpTier1" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Received Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtDeliveryDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>

                     <td>Disposed Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtDisposedDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td hidden="hidden">Tier 2 </td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <telerik:RadComboBox ID="drpTier2" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Installed Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtInstalledDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                    <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
                </tr>
                <tr hidden="hidden">
                    <td>Tier 3</td>
                    <td >:</td>
                    <td>
                        <telerik:RadComboBox ID="drpTier3" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                   
                </tr>
                <tr>
                    <td>Asset Descriptions</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Part Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtModulePartNumber" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Model</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtModel" runat="server" Width="250px"></telerik:RadTextBox>
                        <%--<telerik:RadComboBox ID="drpModel" runat="server" Width="250px"></telerik:RadComboBox>--%>
                    </td>
                    <td>Serial No.</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSystemSN1" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Brand </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpBrand" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Made </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetMade" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Component 1</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent1" runat="server" Width="88%" Text="MultiLine"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 2</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent2" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 3</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent3" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 4</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent4" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 5</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent5" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 6</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent6" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 7</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent7" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 8</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent8" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 9</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent9" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 10</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtComponent10" runat="server" Width="88%"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>OS Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtOSType" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>OS/Firmware Version </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtFirmware" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>EOL Status </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpEOLStatus" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Is Virtual</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpIsVirtual" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>EOL Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtEOLDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td>IP Address</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtIPAddress" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Product Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtProductName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <%--<tr>
                    <td>EOS Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpEOSStatus" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>EOS Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtEOSDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>
                </tr>--%>
                <tr>
                    <td>PM Frequency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpPMFreq" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <%--<td>PM Start Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtPMStartDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>--%>
                </tr>
                <%--<tr>
                    <td>PIC Rank</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICrank" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>PIC Designation</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICdesignation" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                </tr>
                <tr>
                    <td>PIC Service no</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICserviceno" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>PIC Service</td>
                    <td>:</td>
                    <td>
                       <telerik:RadComboBox ID="drpSitePICservice" runat="server" Width="250px"></telerik:RadComboBox> 
                    </td>
                </tr>
                <tr>
                    <td>PIC Fax</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtsitePICfax" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
                <tr>
                    <td>Service Log History</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAssetServiceLogHistory" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
                </tr>
                <tr>
                    <td>Software 1</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSoftware1" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Product Key 1</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetProductKey1" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Software 2</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSoftware2" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Product Key 2</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetProductKey2" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Software 3</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSoftware3" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Product Key 3</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetProductKey3" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Additional Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtAssetRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>
                <tr runat="server" id="assetCostID">
                    <td>Cost</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetCost" runat="server" Width="250px" OnTextChanged="txtAssetCost_textchanged" AutoPostBack="true"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Created Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtCreatedDate" runat="server" Width="250px" Enabled="false">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                            </DateInput>
                        </telerik:RadDateTimePicker>
                        <%--<telerik:RadDatePicker ID="txtCreatedDate" runat="server" Width="250px" Enabled="false">
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy HH:mm:ss tt" DateFormat="dd/MM/yyyy HH:mm:ss tt"></DateInput>
                                </telerik:RadDatePicker>--%>
                    </td>
                    <td>Created By</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtCreatedBy" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Updated Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtUpdatedDate" runat="server" Width="250px" Enabled="false">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                            </DateInput>
                        </telerik:RadDateTimePicker>
                        <%-- <telerik:RadDatePicker ID="txtUpdatedDate" runat="server" Width="250px" Enabled="false">
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy HH:mm:ss" DateFormat="dd/MM/yyyy HH:mm:ss"></DateInput>
                                </telerik:RadDatePicker>--%>
                    </td>
                    <td>Last Updated By</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtUpdatedBy" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                </tr>
            </table>
        </telerik:RadPageView>
        <%--<telerik:RadPageView runat="server" TabIndex="2">
            <table >
                <tr>
                    <td>Sold To Customer</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSoldToCustomer" runat="server" Width="250px" OnSelectedIndexChanged="drpSoldToCustomer_SelectedIndexChanged"></telerik:RadComboBox>
                    </td>
                    <td>Ship To Customer </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpShipToCustomer" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Sold To Address</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSoldToAddress" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Ship To Address </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtShipToAddress" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sold To City</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSoldToCity" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Ship To City </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtShipToCity" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sold To State</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSoldToState" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Ship To State</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpShipToState" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Sold to Post Code</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSoldToPostCode" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Ship To Post Code</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtShipToPostCode" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <table >
                <tr>
                    <td>Primary PIC Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPrimaryPIC" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Sec. PIC Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSecondaryPIC" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Primary PIC Email </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPrimaryPICEmail" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Sec.PIC Email </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSecondaryPICEmail" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Primary PIC Contact</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPrimaryPICContactNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Sec. PIC Contact</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSecondaryPICContactNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Primary PIC Mobile</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPrimaryPICMobileNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Secondary PIC Mobile</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSecondaryPICMobileNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sale Prime Name </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSalePrimeName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Sale Prime EMail</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSalePrimeEmail" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sale Prime Mobile</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSalePrimeMobile" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </telerik:RadPageView>--%>
        <telerik:RadPageView runat="server" TabIndex="2">
            <table>
                <tr>
                    <td>Purchase Order Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPONo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Purchase Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtPurchaseDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <%--<tr>
                    <td>SOR Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSaleOrderNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>SOR Date </td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtSorDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>
                </tr>--%>
                <tr>
                    <td>Invoice Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtInvoiceNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <%--<td>Billing Frequency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpBillingFreq" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>--%>
                </tr>
                <tr>
                    <td>Contract Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtContractName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>MA Start Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtMAStartDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>:</td>
                    <td></td>
                    <td>MA End Date </td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtMAEndDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td>OEM(Principal) Vendor</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpContractVendor" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>OEM(Principal) Contract No.</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtVendorContractNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <%--<tr>                    
                     <td>ACV </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtACV" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>TCV </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTCV" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>--%>
                <%--<tr>                    
                     <td>ACV (USD)</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtACVUSD" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>TCV (USD)</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTCVUSD" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>--%>
                <tr>
                    <td>Warranty Period<span class="auto-style4">*</span></td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetWarrantyPeriod" runat="server" Width="250px" OnSelectedIndexChanged="drpAssetWarrantyPeriod_SelectedIndexChanged" AutoPostBack="True"></telerik:RadComboBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Warranty Start Date<span class="auto-style4">*</span></td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtWarrantyStartx" runat="server" Width="250px" AutoPostBack="true" OnSelectedDateChanged="txtWarrantyStartx_OnSelectedDateChanged">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                    <td>Warranty End Date<span class="auto-style4">*</span> </td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtWarrantyEndx" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td>Region</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetRegion" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr runat="server" id="assetBudgetID">
                    <td>Budget</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetBudget" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                     <td>Balance</td>	
            <td>:</td>	
            <td>	
                <%--<telerik:RadTextBox ID="RadTextBox1" runat="server" Width="250px" Enabled="false" InputType="Number"></telerik:RadTextBox> --%>
                <telerik:RadLabel runat="server" Text="RM" Font-Bold="true"></telerik:RadLabel>
                <telerik:RadTextBox ID="txtBalanceAmount" runat="server" Width="250px" Enabled="false" InputType="Number"></telerik:RadTextBox> 
            </td>
                </tr>
                <tr>
                    <td>Contract Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtContractRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>
                <tr hidden="hidden">
                    <td>Budget</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtBudget" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <table>
                <tr>
                    <td>Contractor</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtVendorName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Contact Person</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtVendorContactName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Contract ID</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtVendorContractID" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Contact Phone </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtVendorContactNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Contract Start Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtVendorContractStartx" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true" Width="250px">	
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>	
                        </telerik:RadDatePicker>	
                    </td>	
                    <td>Contact Email </td>	
                    <td>:</td>	
                    <td>	
                        <telerik:RadTextBox ID="txtVendorContactEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Contract End Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtVendorContractEndx" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Vendor Remarks </td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtVendorRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <table>
                <tr>
                    <td>Supplier Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSupplier" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Purchase Price</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSupplierPurchasePrice" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Purchase Order Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSupplierPurchaseOrderNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Purchase Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtSupplierPurchaseDatex" runat="server" Width="250px">
                            <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                        </telerik:RadDatePicker>
                    </td>
                </tr>
                <tr>
                    <td>Invoice Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSupplierInvoiceNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Hardware Replacement </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpHardwareReplacement" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Group </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpGroup" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Software Support</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSoftwareSupport" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Level </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpLevel" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>
                <tr>
                    <td>Labour Support</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpLabourSupport" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Support Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtSupportRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <div class="form-group has-feedback">
                    <%--<asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button CssClass="btn btn-sky shiny" ID="btnUpload" Text="Upload" runat="server" OnClick="UploadMultipleFiles" accept="image/gif, image/jpeg" />
                <br />
                <br />
                <asp:Button class="btn btn-success" ID="btnSuccessx" Text="btnSuccess" runat="server" Visible="false" OnClick="btnSuccessx_Click" />
                <asp:Button class="btn btn-warning" ID="btnFailedx" Text="btnFailed" runat="server" Visible="false" OnClick="btnFailedx_Click" />
                <asp:Label ID="lblFilename" runat="server"></asp:Label>
                <asp:Label ID="lblID" runat="server"></asp:Label>--%>
                <table>
                   
        <tr>
            <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUploadInc" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="Upload" runat="server" OnClick="btnUploadInc_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>
        </tr>
                     <tr>
            <td><h2>Asset Upload</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                </table>
             <%--   <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUploadInc" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="Upload" runat="server" OnClick="btnUploadInc_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>--%>
                <br />
                <telerik:RadGrid ID="RadGridAssetUpload" runat="server" AllowSorting="true" Visible="true" AutoGenerateColumns="false" ShowFooter="true">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="auattachmentid" HeaderText="ID" Aggregate="Count" FooterText="Total Attachments:  "></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('upload/assetsupload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Created Date & Time" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

            </div>
        </telerik:RadPageView>
        <%--<telerik:RadPageView runat="server" TabIndex="8">
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageSizeChanged="GridView1_PageSizeChanged" OnSortCommand="GridView1_SortCommand" >
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn SortExpression="Descriptions" DataField="Descriptions" HeaderText="Descriptions"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>--%>
        <telerik:RadPageView runat="server" TabIndex="6">
            <%--<telerik:RadGrid ID="GridView2" runat="server" OnNeedDataSource="GridView2_NeedDataSource">

            </telerik:RadGrid>--%>
            <telerik:RadGrid ID="GridView2" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" ShowFooter="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView2_PageIndexChanged" OnPageSizeChanged="GridView2_PageSizeChanged" OnSortCommand="GridView2_SortCommand">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn SortExpression="assetlifecycledatetime" DataField="assetlifecycledatetime" HeaderText="Date & Time" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="statusid" DataField="statusid" HeaderText="Status" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="siteid" DataField="siteid" HeaderText="Branch ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="creuserid" DataField="creuserid" HeaderText="Created By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="credatetime" DataField="credatetime" HeaderText=" Created Date time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

        <telerik:RadPageView runat="server" TabIndex="7">
            <%--<telerik:RadGrid ID="GridView2" runat="server" OnNeedDataSource="GridView2_NeedDataSource">

            </telerik:RadGrid>--%>
            <telerik:RadGrid ID="GridView3" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" ShowFooter="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView3_PageIndexChanged" OnPageSizeChanged="GridView3_PageSizeChanged" OnSortCommand="GridView3_SortCommand">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn SortExpression="assetauditlogtrailid" DataField="assetauditlogtrailid" HeaderText="Log Id" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="note" DataField="note" HeaderText="Note"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="logcreateby" DataField="logcreateby" HeaderText="Created By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="logcreateddatetime" DataField="logcreateddatetime" HeaderText="Date time" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="8">
            <telerik:RadGrid ID="radGridTickets" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" ShowFooter="true" MasterTableView-PageSize="10">
                <ClientSettings EnableRowHoverStyle="false">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect">
                        </telerik:GridClientSelectColumn>
                        <telerik:GridTemplateColumn HeaderText="ID" UniqueName="LinkID" Aggregate="Count" FooterText="Total:  " DataField="inclidentid">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_RadGrid1" Text='<%# Eval("inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusreason" HeaderText="Status Reason"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requesttype" HeaderText="Request Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="requestsummary" HeaderText="Summary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="priority" HeaderText="Priority"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="duedatetime" HeaderText="Due Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="customerid" HeaderText="Customer"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="AssignedTo"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" TabIndex="9">	
            <telerik:RadGrid ID="RadGridAssetTracking" runat="server" OnSortCommand="RadGridTracking_SortCommand" AllowSorting="true" Visible="true" ShowFooter="true" AutoGenerateColumns="false">	
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>	
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">	
                    <Columns>	
                        <telerik:GridBoundColumn DataField="assettrackingid" HeaderText="Warehouse Tracking ID" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="StatusID" HeaderText="Status Name"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="SiteID" HeaderText="Branch ID"></telerik:GridBoundColumn>	
                        <%--<telerik:GridBoundColumn DataField="assetmaintainid" HeaderText="Maintainence Name"></telerik:GridBoundColumn>--%>	
                        <telerik:GridBoundColumn DataField="assetwarehouseid" HeaderText="Warehouse Name"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="description" HeaderText="Description"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>	
                    </Columns>	
                </MasterTableView>	
            </telerik:RadGrid>	
        </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="10">	
            <telerik:RadGrid ID="RadGridAssetMaintain" runat="server" OnSortCommand="RadGridAssetMaintain_SortCommand" AllowSorting="true" ShowFooter="true" Visible="true" AutoGenerateColumns="false" OnItemCommand="RadGridAssetMaintain_ItemCommand">	
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">	
                    <Selecting AllowRowSelect="True" />  	
                </ClientSettings>	
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">	
                    <Columns>	
                        <telerik:GridBoundColumn DataField="assetmaintaintrackingid" HeaderText="Maintainence Tracking ID" Aggregate="Count" FooterText="Total: "></telerik:GridBoundColumn>	
                        <%--<telerik:GridBoundColumn DataField="StatusID" HeaderText="Status Name"></telerik:GridBoundColumn>--%>	
                        <%--<telerik:GridBoundColumn DataField="SiteID" HeaderText="Site Name"></telerik:GridBoundColumn>--%>	
                        <telerik:GridBoundColumn DataField="assetmaintainid" HeaderText="Asset Maintainence"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="maintainid" HeaderText="Asset Maintainence ID" Visible="false"></telerik:GridBoundColumn>	
                        <%--<telerik:GridBoundColumn DataField="assetwarehouseid" HeaderText="Warehouse Name"></telerik:GridBoundColumn>--%>	
                        <telerik:GridBoundColumn DataField="description" HeaderText="Description"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="duration" HeaderText="Duration"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Totalcost" HeaderText="Total Cost" Aggregate="Sum" FooterText="Grand Total Cost:  "></telerik:GridBoundColumn>	
                    </Columns>	
                </MasterTableView>	
           </telerik:RadGrid>		
           <table>		
                    <asp:Label ID="lblAssetMaintainTrackingID" runat="server" Text="" Visible="false"></asp:Label>		
                     <asp:Label ID="lblAssetMaintainID" runat="server" Text="" Visible="false"></asp:Label>		
                    <tr id="rowtask" runat="server" visible="false">		
                        <td>Task ID</td>		
                        <td>:</td>		
                        <td>		
                            <telerik:RadTextBox ID="txtTaskID" runat="server" Width="200px" ReadOnly="True" Enabled="false"></telerik:RadTextBox>		
                        </td>		
                        <td>&nbsp;</td>		
                        <td>&nbsp;</td>		
                        <td>&nbsp;</td>		
                    </tr>		
                    <tr id="rowtask1" runat="server" visible="false">		
                                                <td>Task Descriptions</td>	
                                                <td>:</td>	
                                                <td>	
                                                    <telerik:RadTextBox ID="txtTaskDesc" runat="server" Width="200px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>	
                                                </td>	
                        <td>Check</td>	
                        <td>:</td>	
                        <td><telerik:RadCheckBox ID="cbxTaskIsActive" runat="server" Checked="false"></telerik:RadCheckBox></td>	
                                            </tr>	
                  	
                    	<tr id="rowtask3" runat="server" visible="false">		
                             <td>Cost</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTaskCost" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                    </td>
                                                <td>Remarks</td>	
                                                <td>:</td>	
                                                <td>	
                                                    <telerik:RadTextBox ID="txtTaskRemarks" runat="server" Width="200px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>	
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
                      <tr id="rowtask2" runat="server" visible="false">		
                                                <td colspan="9">		
                                                    <telerik:RadButton ID="btnTaskSave" runat="server" Text="Save" Enabled="false" OnClick="btnTaskSave_Click"></telerik:RadButton>		
                                                    <telerik:RadButton ID="btnTaskClear" runat="server" Text="Clear" Enabled="false" OnClick="btnTaskClear_Click"></telerik:RadButton>		
                                                </td>		
                                            </tr>		
                    <tr>		
                                                <td colspan="9">		
                                                    <telerik:RadGrid ID="RadGridTask" runat="server" AllowSorting="true" OnSortCommand="RadGridTask_SortCommand" Visible="false" ShowFooter="true" AutoGenerateColumns="false">		
                                                        <ClientSettings EnableRowHoverStyle="false"></ClientSettings>	
                                                        <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">	
                                                            <Columns>	
                                                                <telerik:GridTemplateColumn HeaderText="ID" DataField="taskno" Aggregate="Count" FooterText="Total:  ">	
                                                                    <ItemTemplate>	
                                                                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("taskno") %>'	
                                                                            CommandName="Show" OnCommand="useLinkButton_CommandTask" Text='<%# Eval("taskno") %>'></asp:LinkButton>	
                                                                    </ItemTemplate>	
                                                                </telerik:GridTemplateColumn>	
                                                                <telerik:GridBoundColumn DataField="taskdesc" HeaderText="Task Descriptions" HtmlEncode="False"></telerik:GridBoundColumn>
                                                                 <telerik:GridBoundColumn DataField="taskcost" HeaderText="Cost" Aggregate="Sum" FooterText="Total Cost: "></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="isactive" HeaderText="Check"></telerik:GridBoundColumn>	
                                                                <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>	
                                                                <telerik:GridBoundColumn DataField="createddate" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>	
                                                            </Columns>	
                                                        </MasterTableView>	
                                                    </telerik:RadGrid>	
                                                </td>	
                                            </tr>	
                </table>	
            </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="11">
            <div class="form-group has-feedback">
                    <%--<asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button CssClass="btn btn-sky shiny" ID="btnUpload" Text="Upload" runat="server" OnClick="UploadMultipleFiles" accept="image/gif, image/jpeg" />
                <br />
                <br />
                <asp:Button class="btn btn-success" ID="btnSuccessx" Text="btnSuccess" runat="server" Visible="false" OnClick="btnSuccessx_Click" />
                <asp:Button class="btn btn-warning" ID="btnFailedx" Text="btnFailed" runat="server" Visible="false" OnClick="btnFailedx_Click" />
                <asp:Label ID="lblFilename" runat="server"></asp:Label>
                <asp:Label ID="lblID" runat="server"></asp:Label>--%>
                <table>
                   
        <tr>
             <asp:Label ID="lblFileUploadInc2" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc2" Text="Upload" runat="server" OnClick="btnUploadInc2_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc2" runat="server"></asp:Label>
        </tr>
                     <tr>
            <td><h2>Asset Upload</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                </table>
             <%--   <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUploadInc" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="Upload" runat="server" OnClick="btnUploadInc_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>--%>
                <br />
                <telerik:RadGrid ID="RadGridAssetUpload1" runat="server" AllowSorting="true" Visible="true" AutoGenerateColumns="false" OnItemCommand="RadGridAssetUpload1_ItemCommand">
                     <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">	
                    <Selecting AllowRowSelect="True" />  	
                </ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="auattachmentid" HeaderText="ID" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attachments" HeaderText="Attachments"></telerik:GridBoundColumn>
                       <%-- <telerik:GridTemplateColumn HeaderText="Image">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('upload/assetimageuploads/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

                <table>
                    <tr id="rowImage" runat="server" visible="false">	
                        <td>
                             <asp:Image ID="imgRadNotification1" runat="server" />
                        </td>
                       <td>&nbsp;</td> <td>&nbsp;</td>
                    </tr>
                </table>
                

            </div>
        </telerik:RadPageView>

    </telerik:RadMultiPage>
    <%--<telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">	
        <AjaxSettings>            	
            <telerik:AjaxSetting AjaxControlID="RaGridAssetMaintain">	
                <UpdatedControls>	
                    <telerik:AjaxUpdatedControl ControlID="showTaskGrid" />	
                    <telerik:AjaxUpdatedControl ControlID="RadGridTask" />	
                    <telerik:AjaxUpdatedControl ControlID="txtTaskID" />	
                    <telerik:AjaxUpdatedControl ControlID="txtTaskDesc" />	
                    <telerik:AjaxUpdatedControl ControlID="cbxTaskIsActive" />	
                </UpdatedControls>	
            </telerik:AjaxSetting>	
          	
        </AjaxSettings>	
    </telerik:RadAjaxManager>	
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />--%>
     <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow1" runat="server" OnUnload="RadWindow1_Unload" DestroyOnClose="true" OnDisposed="RadWindow1_Unload"
        Height="555"
        Width="333">
    </telerik:RadWindow>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
