<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-AssetConsole.aspx.cs" Inherits="ServiceDesk3d.wf_AssetConsole" %>

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
     <!-- Edward 20210930 - add QR/Barcode code scanner - START -->
    <script src="scripts/jquery-3.1.0.min.js"></script>
    <script type="text/javascript">
        //setup before functions
        var typingTimer;                //timer identifier
        var doneTypingInterval = 200;  //time in ms, 2 second for example

        $(document).ready(function () {
            $('#ctl00_ContentPlaceHolder1_txtAssetID').focus();
            //on keyup, start the countdown
            $('#ctl00_ContentPlaceHolder1_txtAssetID').on('keyup', function (e) {
                var code = e.key;
                console.log("code:" + code);
                clearTimeout(typingTimer);
                typingTimer = setTimeout(doneTyping, doneTypingInterval);

                if (code === "Enter")
                    e.preventDefault();
            });

            //on keydown, clear the countdown 
            $('#ctl00_ContentPlaceHolder1_txtAssetID').on('keydown', function (e) {
                var code = e.key;
                clearTimeout(typingTimer);

                if (code === "Enter")
                    e.preventDefault();
            });
                
        });

        //user is "finished typing," do something
        function doneTyping () {
            // if the content length more than 15 characters only parse the asset id
            if ($('#ctl00_ContentPlaceHolder1_txtAssetID').val().length > 15)
            {
                console.log("QR value:" + $('#ctl00_ContentPlaceHolder1_txtAssetID').val());
                var assetID = getParameterByName("assetid", $('#ctl00_ContentPlaceHolder1_txtAssetID').val());
                console.log("assetid:" + assetID);
                $('#ctl00_ContentPlaceHolder1_txtAssetID').val(assetID);

                $("#ctl00_ContentPlaceHolder1_btnSearch").click();
            }
        }

        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
    </script>
    <!-- Edward 20210930 - add QR/Barcode code scanner - START -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
	
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblPM" Width="300px" Height="150px" ShowCloseButton="true"></telerik:RadNotification> 
    <table>
        <tr>
            <td><h2>Asset List</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2"><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="150px" CssClass="GreenButton"  />
            <telerik:RadButton ID="btnExportExcel" runat="server" Text="Export to Excel" OnClick="btnExport_Click" Width="150px" CssClass="PurpleButton"  /></td>
        </tr>	
         <tr>	
            <td>Asset ID</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtAssetID" runat="server" Width="250px"></telerik:RadTextBox>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>
        <tr>
            <td>Equipment ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetEquipmentId" runat="server" Width="250px"></telerik:RadTextBox></td>
            <td>Asset Location </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetCategory" MaxHeight="200" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetCategory_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Branch ID</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteID" MaxHeight="200" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
            </td>
            <td>Asset Type </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset2ndCategory" MaxHeight="200" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAsset2ndCategory_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Status ID</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetStatus" MaxHeight="200" runat="server" Width="250px" Filter="Contains" AutoPostBack="true" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
            <td>Asset Model </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset3rdCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
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
     <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">	
        <Tabs>	
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset List" Selected="True">	
                <TabTemplate>	
                    Asset List	
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="1" runat="server" Text="Preventive Maintainence Asset Checklist">	
                <TabTemplate>	
                   Scheduled Preventive Maintainence Asset List	
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="2" runat="server" Text="Delete Log" Visible="false">	
                <TabTemplate>	
                   Delete Log
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="3" runat="server" Text="Audit Trail">
                <TabTemplate>
                    Audit Trail
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>	
    </telerik:RadTabStrip>	
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">	
        <telerik:RadPageView runat="server" TabIndex="0">	
            
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageSizeChanged="GridView1_PageSizeChanged" OnSortCommand="GridView1_SortCommand" OnItemCreated="GridView1_ItemCreated" OnItemCommand="GridView1_ItemCommand" OnExcelExportCellFormatting="GridView1_ExcelExportCellFormatting">	
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>	
                <ExportSettings
   HideStructureColumns="false"
   ExportOnlyData="true"
   IgnorePaging="false"
   OpenInNewWindow="true">
</ExportSettings>
                <MasterTableView Font-Size="9"  AlternatingItemStyle-BackColor="#eeeeee" ShowFooter="true" CommandItemDisplay="Top"  ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">	
                     <CommandItemSettings ShowRefreshButton="false" ShowAddNewRecordButton="false" ShowExportToWordButton="false" ShowExportToExcelButton="false" ExportToExcelText="Export"  ShowExportToCsvButton="false" ShowExportToPdfButton="false"></CommandItemSettings>

                    <Columns>	
                        <telerik:GridTemplateColumn HeaderText="Asset ID" DataField="assetid" Aggregate="Count" UniqueName="AssetID" FooterText="Total:  ">	
                            <ItemTemplate>	
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetid") %>'></asp:LinkButton>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>	
                        <telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Branch ID"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="assetcategoryid" DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>	
                        <telerik:GridTemplateColumn HeaderText="Edit">	
                            <ItemTemplate>	
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("assetid") %>'	
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>	
               <%-- <telerik:GridTemplateColumn HeaderText="Remove">
                    <ItemTemplate> <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("assetid") %>'	
                            CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>--%>	
                    </Columns>	
                    <PagerStyle PageSizeControlType="None" />	
                </MasterTableView>	
            </telerik:RadGrid>	
        </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="1">	
             <telerik:RadGrid ID="RadGridPMList" runat="server" Visible="true" AutoGenerateColumns="false" ShowFooter="true" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="RadGridPMList_PageIndexChanged" OnPageSizeChanged="RadGridPMList_PageSizeChanged" OnSortCommand="GridView1_SortCommand" OnItemCreated="RadGridPMList_ItemCreated">	
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>	
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">	
                    <Columns>	
                        <telerik:GridTemplateColumn HeaderText="Asset ID" DataField="assetid" Aggregate="Count" FooterText="Total:  ">	
                            <ItemTemplate>	
                                <asp:LinkButton ID="usePMLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'	
                                    CommandName="Show" OnCommand="usePMLinkButton_Command" Text='<%# Eval("assetid") %>'></asp:LinkButton>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>	
                        <telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Branch ID"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="assetcategoryid" DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>	
                        <telerik:GridTemplateColumn HeaderText="Edit">	
                            <ItemTemplate>	
                                <asp:LinkButton ID="usePMLinkButton1" runat="server" CommandArgument='<%# Eval("assetid") %>'	
                                    CommandName="Edit" OnCommand="usePMLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>	
           </Columns>	
                    <PagerStyle PageSizeControlType="None" />	
                </MasterTableView>	
            </telerik:RadGrid>	
        </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="2" Visible="false">	
            <telerik:RadGrid ID="GridViewDeleteTrail" runat="server"  AllowSorting="true" Visible="true" ShowFooter="true" OnSortCommand="GridViewDeleteTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewDeleteTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="assetauditlogtrailid" HeaderText="Log ID" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="EquipmentID" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="logcreateddatetime" HeaderText="Deleted by"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="3">	
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true"  ShowFooter="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID" Aggregate="Count" FooterText="Total:  "></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>	
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
