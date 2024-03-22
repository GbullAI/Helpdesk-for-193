<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assetrentalsconsole.aspx.cs" Inherits="ServiceDesk3d.wf_assetrentalsconsole" %>

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
            <td><h2>Rental List</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px"/></td>
        </tr>
        <tr>
            <td>Requestor Name </td>
            <td>:</td>
            <td>
                
                <telerik:RadTextBox ID="txtRequestorName" runat="server" Width="250px"></telerik:RadTextBox>

            </td>
             <td>Request Type </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpArRequestType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
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
            <td>Request Status </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpArRequestStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
            <td>Approval Status </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpArApprovalStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
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
        <tr hidden="hidden">
            <td hidden="hidden">Status </td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadComboBox ID="drpAssetStatus" runat="server" Width="250px" AutoPostBack="true"></telerik:RadComboBox>
            </td>
             <td>Serial No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSerialNo" runat="server" Width="250px"></telerik:RadTextBox>
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
            <telerik:RadTab TabIndex="0" runat="server" Text="Rental List" Selected="True">	
                <TabTemplate>	
                    Rental List	
                </TabTemplate>	
            </telerik:RadTab>	
             <telerik:RadTab TabIndex="1" runat="server" Text="Asset Rental List">	
                <TabTemplate>	
                 Asset  Rental List
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
                <telerik:GridTemplateColumn HeaderText="Asset Rental Id">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetrentalid") %>'
                            CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetrentalid") %>'></asp:LinkButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <%--<telerik:GridBoundColumn SortExpression="AssetEquipmentId" DataField="AssetEquipmentId" HeaderText="Equipment ID"></telerik:GridBoundColumn>--%>
                <%--<telerik:GridBoundColumn SortExpression="SiteID" DataField="SiteID" HeaderText="Site ID"></telerik:GridBoundColumn>--%>
                <telerik:GridBoundColumn SortExpression="requestorname" DataField="requestorname" HeaderText="Requestor Name"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="requestorcontactno" DataField="requestorcontactno" HeaderText="Request Contact No"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="requestoremail" DataField="requestoremail" HeaderText="Requestor Email"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="arrequesttypeid" DataField="arrequesttypeid" HeaderText="Request Type"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="arrequeststatusid" DataField="arrequeststatusid" HeaderText="Request Status"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="AssetIds" DataField="AssetIds" HeaderText="Asset ID"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="requestorremarks" DataField="requestorremarks" HeaderText="Requestor Remarks"></telerik:GridBoundColumn>
                
               <%-- <telerik:GridBoundColumn SortExpression="StatusID" DataField="StatusID" HeaderText="Status ID"></telerik:GridBoundColumn>--%>
               <telerik:GridBoundColumn SortExpression="arborrowstartdate" DataField="arborrowstartdate" HeaderText="Loan Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="arborrowenddate" DataField="arborrowenddate" HeaderText="Loan End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="arreturneddate" DataField="arreturneddate" HeaderText="Returned Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                
                       <telerik:GridBoundColumn SortExpression="arapprovalstatusid" DataField="arapprovalstatusid" HeaderText="Approval Status"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="arapprovalname" DataField="arapprovalname" HeaderText="Approval Name"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn SortExpression="createddate" DataField="createddate" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                <telerik:GridTemplateColumn HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("assetrentalid") %>'
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



