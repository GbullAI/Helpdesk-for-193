<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assettransitconsole.aspx.cs" Inherits="ServiceDesk3d.wf_assettransitconsole" %>

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
            <td><h2>Transit List</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px"/></td>
        </tr>
        <tr>
            <td>Origin</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAtOriginWarehouseId" MaxHeight="200" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Destination</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAtDestinationWarehouseId" MaxHeight="200" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Asset Items</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAsset" runat="server" Width="250px" MaxHeight="200" CheckBoxes="true" EnableCheckAllItemsCheckBox="true" AutoPostBack="true"></telerik:RadComboBox>
            </td>
            <td>Status</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAtStatusId" runat="server" MaxHeight="200" Width="250px"></telerik:RadComboBox>
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
            <telerik:RadTab TabIndex="0" runat="server" Text="Transit List" Selected="True">	
                <TabTemplate>	
                    Transit List	
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="1" runat="server" Text="Asset Transit List">	
                <TabTemplate>	
                 Asset  Transit List
                </TabTemplate>	
            </telerik:RadTab>	
        </Tabs>	
    </telerik:RadTabStrip>	
     <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">	
          <telerik:RadPageView runat="server" TabIndex="0">	
              <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageSizeChanged="GridView1_PageSizeChanged" OnSortCommand="GridView1_SortCommand" OnItemCreated="GridView1_ItemCreated">
        <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
        <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
            <Columns>
                <telerik:GridTemplateColumn HeaderText="Asset Transit Id">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assettransitid") %>'
                            CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assettransitid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <%--<telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>--%>
                <%--<telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Site ID"></telerik:GridBoundColumn>--%>
                <telerik:GridBoundColumn SortExpression="atoriginwarehouseid" DataField="atoriginwarehouseid" HeaderText="Origin Warehouse"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="atdestinationwarehouseid" DataField="atdestinationwarehouseid" HeaderText="Destination Warehouse"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="AssetIds" DataField="AssetIds" HeaderText="Asset ID"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="atremarks" DataField="atremarks" HeaderText="Remarks"></telerik:GridBoundColumn>
                
               <%-- <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>--%>
               <telerik:GridBoundColumn SortExpression="ateaDate" DataField="ateaDate" HeaderText="Estinated Arrival Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="ataaDate" DataField="ataaDate" HeaderText="Actual Arrival Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="createddate" DataField="createddate" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridTemplateColumn HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("assettransitid") %>'
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
                 <telerik:RadGrid ID="GridView2" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnPageIndexChanged="GridView2_PageIndexChanged" OnPageSizeChanged="GridView2_PageSizeChanged" OnSortCommand="GridView2_SortCommand" OnItemCreated="GridView2_ItemCreated">
        <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
        <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
            <Columns>
                <telerik:GridTemplateColumn HeaderText="Asset ID">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton3" runat="server" CommandArgument='<%# Eval("assetid") %>'
                            CommandName="Show" OnCommand="useLinkButton_Command3" Text='<%# Eval("assetid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <%--<telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>--%>
                <%--<telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Site ID"></telerik:GridBoundColumn>--%>
                <telerik:GridBoundColumn SortExpression="SystemSN" DataField="SystemSN" HeaderText="Serial No"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="assetcategoryid" DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="asset2ndcategoryid" DataField="asset2ndcategoryid" HeaderText="Asset Type"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="asset3rdcategoryid" DataField="asset3rdcategoryid" HeaderText="Asset Model"></telerik:GridBoundColumn>
               <%-- <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>--%>
                <telerik:GridBoundColumn SortExpression="cdt" DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridTemplateColumn HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton4" runat="server" CommandArgument='<%# Eval("assetid") %>'
                            CommandName="Edit" OnCommand="useLinkButton_Command4" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
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
         </telerik:RadMultiPage>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>




