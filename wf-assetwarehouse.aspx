<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assetwarehouse.aspx.cs" Inherits="ServiceDesk3d.wf_assetwarehouse" %>

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
                var answer = confirm("Are you sure you want to remove this asset warehouse?");

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
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClientClicking="showRemovePrompt" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClientClicking="showClearPrompt" OnClick="btnCancel_Click" CssClass="GreyButton" />
    </div>
    <table>
        <tr>
            <td>Warehouse ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetWarehouseId" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            
        </tr>
        <tr>
            <td>Warehouse Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetWarehouseDesc" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Warehouse Address</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtWarehouseAddress" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox>
                </td>
               <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Warehouse PIC Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWarehousePICName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
              <td>Warehouse Contact No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWarehouseContact" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true" Width="250px"></telerik:RadTextBox>	
                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtWarehouseContact" ValidationExpression="^[0-9]\d"></asp:RegularExpressionValidator>	
            </td>
        </tr>
        <tr>
             <td>Warehouse PIC Email</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWarehousePICEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Warehouse SAP Location ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSAPWarehouseID" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Is Active</td>
            <td>:</td>
            <td><telerik:RadCheckBox ID="cbxAssetWarehouseIsActive" runat="server" Checked="false"></telerik:RadCheckBox></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Type List" Selected="True">
                <TabTemplate>
                    Asset Warehouse List
                </TabTemplate>
            </telerik:RadTab>
             <telerik:RadTab TabIndex="1" runat="server" Text="Audit Logs">
                <TabTemplate>
                    Audit Logs
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
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Warehouse ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetwarehouseid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("assetwarehouseid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="assetwarehousedesc" HeaderText="Warehouse Name"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-assetwarehouse.aspx?assetwarehouseid=<%#DataBinder.Eval(Container.DataItem,"assetwarehouseid")%>&show=<%#DataBinder.Eval(Container.DataItem,"assetwarehouseid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "assetwarehouseid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Audit Log"></asp:Label></h3>
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
               <h3><asp:Label runat="server" ID="lblDelete" Text="Delete Trail"></asp:Label></h3>
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
