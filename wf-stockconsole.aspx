<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-stockconsole.aspx.cs" Inherits="ServiceDesk3d.wf_stockconsole" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
 
    <table>
        <tr>
            <td><h2>Stock List</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUploadInc" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="SAP Download" runat="server" accept=".xls,.xlsx" OnClick="btnUploadInc_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label></td>
            <td><telerik:RadButton ID="btnExportExcel" runat="server" Text="Export to SAP Upload"  OnClick="btnExport_Click" Width="150px" CssClass="PurpleButton"  /></td>
            <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px"  CssClass="GreenButton" /></td>
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
            <td>Stock Warehouse </td>
            <td>:</td>
            <td>
                 <telerik:RadComboBox ID="drpAssetWarehouse" runat="server" Width="250px"></telerik:RadComboBox>	
            </td>
             <td>Stock Type </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset2ndCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAsset2ndCategory_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Equipment ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetEquipmentId" runat="server" Width="250px"></telerik:RadTextBox></td>
            <td>Branch ID</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteID" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
            </td>
           
        </tr>
        <tr>
             <td>Serial No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSerialNo" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Stock Model </td>
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
        <tr>
             <td hidden="hidden">Status </td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetCategory_SelectedIndexChanged"></telerik:RadComboBox>
                <telerik:RadComboBox ID="drpAssetStatus" runat="server" Width="250px" AutoPostBack="true"></telerik:RadComboBox>
            </td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">	
        <Tabs>	
            <telerik:RadTab TabIndex="0" runat="server" Text="Stock List" Selected="True">	
                <TabTemplate>	
                    Stock List	
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
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" ShowFooter="true" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageSizeChanged="GridView1_PageSizeChanged" OnSortCommand="GridView1_SortCommand" OnItemCreated="GridView1_ItemCreated">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset ID" DataField="assetid" Aggregate="Count" FooterText="Total:  ">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Site ID"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn SortExpression="SystemSN" DataField="SystemSN" HeaderText="Serial No."></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="assetwarehouseid" DataField="assetwarehouseid" HeaderText="Stock Warehouse"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="asset2ndcategoryid" DataField="asset2ndcategoryid" HeaderText="Stock Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="asset3rdcategoryid" DataField="asset3rdcategoryid" HeaderText="Stock Model"></telerik:GridBoundColumn>
                        <%-- <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--                <telerik:GridTemplateColumn HeaderText="Remove" Visible="false">
                            <ItemTemplate>
                            <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("assetid") %>'
                            CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                            </ItemTemplate>
                            </telerik:GridTemplateColumn>--%>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" ShowFooter="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
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


