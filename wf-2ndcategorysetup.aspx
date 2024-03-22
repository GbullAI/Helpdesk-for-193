<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-2ndcategorysetup.aspx.cs" Inherits="ServiceDesk3d.wf_2ndcategorysetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
    <style type="text/css">
                .BlueButton
        {
            background-color: #008CBA !important;
            color: white !important;
        }

        .RedButton
        {
            background-color: #f44336 !important;
            color: white !important;
        }

        .GreenButton
        {
            background-color: #4CAF50 !important;
            color: white !important;
        }

        .GreyButton
        {
            background-color: #808080 !important;
            color: white !important;
        }

        .PurpleButton
        {
            background-color: #6A0DAD !important;
            color: white !important;
        }

        .BrownButton
        {
            background-color: brown !important;
            color: white !important;
        }
          
        .YellowButton
        {
            background-color: #ff9800 !important;
            color: white !important;
        }

        .RadTabStrip_Bootstrap .rtsLevel1 .rtsSelected .rtsLink {
            border-color: #dedede !important;
            color: white !important;
            background-color: #008CBA !important;
        }

        .RadTabStrip_Bootstrap .rtsLevel1 .rtsLink {
            border-color: #dedede !important;
            color: #000 !important;
            background-color: white !important;
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
         function showRemovePrompt(sender, args) {
                var answer = confirm("Are you sure you want to remove this asset type?");
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
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"  CssClass="BlueButton"  />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
    <table>
        <tr>
            <td>Asset Type ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAsset2ndCategoryId" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            
        </tr>
        <tr>
            <td>Asset Type Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAsset2ndCategoryName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Asset Location</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
            </td>
           <td>Can Show Type In Rental</td>		
            <td>:</td>			
            <td>			
                <telerik:RadRadioButtonList runat="server" ID="radToCanShowRental" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">			
                    <Items>			
                        <telerik:ButtonListItem Text="Yes" Value="1" />			
                        <telerik:ButtonListItem Text="No" Value="0" />			
                    </Items>			
                </telerik:RadRadioButtonList>			
            </td>
        </tr> 
        <tr>
            <td>Email (Notification)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAsset2ndCategoryEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
            </td>
            
            <td>Quantity (Threshold)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAsset2ndCategoryQuantity" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Is Active</td>
            <td>:</td>
            <td><telerik:RadCheckBox ID="cbxAsset2ndCategoryIsActive" runat="server" Checked="false"></telerik:RadCheckBox></td>
              <td>
                <asp:Label ID="lblFileUploadInc2" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc2" Text="Upload" runat="server" OnClick="btnUploadInc2_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc2" runat="server"></asp:Label></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4"><asp:Image ID="imgRadNotification1" runat="server" style="width:430px;border:2px solid black;"/></td>
              <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Type List" Selected="True">
                <TabTemplate>
                    Asset Type List
                </TabTemplate>
            </telerik:RadTab>
             <telerik:RadTab TabIndex="1" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
             <telerik:RadTab TabIndex="2" runat="server" Text="Audit Trail" Visible="false">
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
                        <telerik:GridTemplateColumn HeaderText="Asset Type ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("asset2ndcategoryid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("asset2ndcategoryid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="asset2ndcategorydesc" HeaderText="Asset Type Name"></telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="asset2ndcategoryemail" HeaderText="Email (Notification)"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="asset2ndcategoryquantity" HeaderText="Quantity (Threshold)"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assetcategoryid" HeaderText="Asset Location"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-2ndcategorysetup.aspx?asset2ndcategoryid=<%#DataBinder.Eval(Container.DataItem,"asset2ndcategoryid")%>&show=<%#DataBinder.Eval(Container.DataItem,"asset2ndcategoryid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "asset2ndcategoryid")%></a>
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
         <telerik:RadPageView runat="server" TabIndex="2" Visible="false">
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