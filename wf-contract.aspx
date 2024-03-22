<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-contract.aspx.cs" Inherits="ServiceDesk3d.wf_contract"  ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />

    <style type="text/css">
        
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

         input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

         input[type=number] {
  -moz-appearance: textfield;
}

    </style>
      <script type="text/javascript">
            function showPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
          }

          function showRemovePrompt(sender, args) {
                var answer = confirm("Are you sure you want to remove this contract?");
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
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Visible="false" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Visible="false" CssClass="YellowButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" OnClientClicking="showRemovePrompt"/>
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showPrompt" CssClass="GreyButton" />
        <telerik:RadCheckBox ID="cbxCopy" runat="server" Checked="false" Text="Copy" ></telerik:RadCheckBox>
    </div>
    <table>
        <tr>
            <td>Contract No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtContractNo" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Contract Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtContractName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <%--<td>Country </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCountry1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>--%>
            <td>Currency</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCurrency" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <%--<tr>
            <td>Sold To Customer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSoldToCustomer" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Sold To Address</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSoldToAddress" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Sold To City</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSoldToCity" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Sold To State</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSoldToState" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Sold To PostCode</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSoldToPostCode" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Sold To Country</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSoldToCountry" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Ship To Customer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpShipToCustomer" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Ship To Address</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtShipToAddress" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Ship To Postcode</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtShipToPostCode" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Ship To City</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtShipToCity" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Ship To State</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpShipToState" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Ship To Country</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpShipToCountry" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>--%>
        <tr>
            <td>PIC Email</td>
            <td>:</td>
                  <td>	
                <telerik:RadTextBox ID="txtPICEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>	
            </td>	
            <td>PIC Name</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtPICNAme" runat="server" Width="250px"></telerik:RadTextBox>	
            </td>	
        </tr>	
        <tr>	
            <td>PIC Contact Number</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtPICNo" runat="server" Width="250px" InputType="Number" ></telerik:RadTextBox>	
            </td>	
            <td></td>	
            <td>:</td>	
            <td></td>	
        </tr>	
        <tr>	
            <td>Sales Name</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtSalesName" runat="server" Width="250px"></telerik:RadTextBox>	
            </td>	
            <td>Sales Email</td>	
            <td>:</td>	
            <td>	
                <telerik:RadTextBox ID="txtSalesEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox>	
            </td>
        </tr>
        <tr>
            <td>Contract Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContractType" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>MA Status</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpMAStatus" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <%--<td>Billing Frequency</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpBillingFreq" runat="server" Width="250px"></telerik:RadComboBox>
            </td>--%>
            <td>PM Frequency</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpPreventiveMaintFreq" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr hidden="hidden">
            <td>Next Service Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtNextServiceDAte" runat="server" Width="250px" >
                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                </telerik:RadDatePicker>
            </td>
           <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
              <td>Contract Renewal Stage</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContractRenewalStage" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
             <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Old Contract No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtOldContractNo" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Contract Renewal Confident Level</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContractConfidentLevel" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Duration(Month)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtContarctDuration" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Out Source Vendor </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpOutSourceVendor" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>MA Start </td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAStartx" runat="server" Width="250px" AutoPostBack="true" OnSelectedDateChanged="txtMAStartx_OnSelectedDateChanged">
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                </telerik:RadDatePicker>
            </td>
            <td>MA End</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAEndx" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
            </td>
        </tr>
       <%-- <tr>
            <td>TVC(RM)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtTCV" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>ACV(RM)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtACV" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>TVC(USD)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtTCVUSD" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>ACV(USD)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtACVUSD" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>--%>
        <tr>
            <td>PO Number</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtPONumber" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <%--<td>SOR Number</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSORNumber" runat="server" Width="250px"></telerik:RadTextBox>
            </td>--%>
        </tr>
        <%--<tr>
            <td>SOR Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtSORDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
            </td>
            <td></td>
            <td>:</td>
            <td></td>
        </tr>--%>
        <tr>
            <td>Contract Remarks</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

        </tr>
        <tr runat="server" id="budgetBalanceHide">
            <td>Budget</td>
            <td>:</td>
            <td>
                <telerik:RadLabel runat="server" Text="RM" Font-Bold="true"></telerik:RadLabel>
                <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtBudget" Width="250" MinValue="0" NumberFormat-DecimalDigits="2" NumberFormat-GroupSeparator="," NumberFormat-DecimalSeparator="."></telerik:RadNumericTextBox>
                <%--<telerik:RadTextBox ID="txtBudget" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox> 	--%>
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
            <td><asp:Label ID="lblApproval" runat="server">Approval</asp:Label></td>	
            <td><asp:Label ID="lblApproval1" runat="server">:</asp:Label></td>	
            <td>	
                <telerik:RadRadioButtonList runat="server" ID="radApproval" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">	
                    <Items>	
                        <telerik:ButtonListItem Text="Yes" Value="1" />	
                        <telerik:ButtonListItem Text="No" Value="0" />	
                    </Items>	
                </telerik:RadRadioButtonList>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Contract List" Visible="false">
                <TabTemplate>
                    Contract List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Contract List" Visible="false">
                <TabTemplate>
                    Pending Contract List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Contract List"  Visible="false">
                <TabTemplate>
                    Approved Contract List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Contract List"  Visible="false">
                <TabTemplate>
                    Reject Contract List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Asset Information"  Selected="True">
                <TabTemplate>
                    Asset List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="5" runat="server" Text="Attachment Details">
                <TabTemplate>
                    Attachment Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="4">
        <telerik:RadPageView runat="server" TabIndex="0" Visible="false">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Contract ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="ContractNo"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SORdate" HeaderText="SOR Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SoldtoCountry" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="ApprovalName" HeaderText="Approval"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1" Visible="false">
            <telerik:RadGrid ID="GridView2" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView2_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView2_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Contract ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                    CommandName="Show" OnCommand="useLinkPendingButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="ContractNo"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SORdate" HeaderText="SOR Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SoldtoCountry" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="ApprovalName" HeaderText="Approval"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2" Visible="false">
            <telerik:RadGrid ID="GridView3" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView3_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView3_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Contract ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                    CommandName="Show" OnCommand="useLinkApprovalButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="ContractNo"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SORdate" HeaderText="SOR Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SoldtoCountry" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="ApprovalName" HeaderText="Approval"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3" Visible="false">
            <telerik:RadGrid ID="GridView4" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView4_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView4_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Contract ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                    CommandName="Show" OnCommand="useLinkRejectButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="ContractNo"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SORdate" HeaderText="SOR Date" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SoldtoCountry" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="ApprovalName" HeaderText="Approval"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <telerik:RadGrid ID="GridView5" runat="server" Visible="true" OnSortCommand="GridView5_SortCommand" AllowSorting="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView5_PageIndexChanged" OnPreRender="GridView5_PreRender">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV2" Text='<%# Eval("assetid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="SystemSN" HeaderText="Serial No"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SiteID" HeaderText="Site Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Descriptions" HeaderText="Descriptions"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="AssetEquipmentId" HeaderText="Asset Equipment Id"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="asset2ndcategoryid" HeaderText="Asset Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="asset3rdcategoryid" HeaderText="Asset Model"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalCost" HeaderText="Cost" Aggregate="Sum" FooterText="Total Cost:  "></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-asset2.aspx?assetid=<%#DataBinder.Eval(Container.DataItem,"assetid")%>&show=<%#DataBinder.Eval(Container.DataItem,"assetid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "assetid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <div class="form-group has-feedback">
                <%--     <asp:FileUpload ID="FileUpload1" runat="server" />
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
                         <td><h2>Contract Upload</h2></td>	
                         <td>&nbsp;</td>	
                         <td>&nbsp;</td>	
                     </tr>	
                </table>	
                <br />	
                <telerik:RadGrid ID="RadGridContractUpload" runat="server" AllowSorting="true" Visible="true" AutoGenerateColumns="false">	
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>	
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">	
                    <Columns>	
                        <%--<telerik:GridTemplateColumn HeaderText="ID">	
                            <ItemTemplate>	
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'	
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>--%>	
                        <telerik:GridBoundColumn DataField="auattachmentid" HeaderText="ID"></telerik:GridBoundColumn>	
                        <telerik:GridTemplateColumn HeaderText="Attachments">	
                            <ItemTemplate>	
                                <a onclick="javascript:window.open('upload/assetsupload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>	
                            </ItemTemplate>	
                        </telerik:GridTemplateColumn>	
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>		
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>	
                    </Columns>	
                </MasterTableView>	
            </telerik:RadGrid>	
            </div>	
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
