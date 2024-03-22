<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-customer.aspx.cs" Inherits="ServiceDesk3d.wf_customer" ValidateRequest="false" %>

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
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Style="width: 61px" Visible="false" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Visible="false" CssClass="BlueButton" />
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Visible="false" CssClass="YellowButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showPrompt" CssClass="GreyButton" />
    </div>
    <div>

        <table>
            <tr>
                <td>Customer ID</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtCustomerID" runat="server" Width="250px" ReadOnly="true" Enabled="false"></telerik:RadTextBox>
                </td>
                <td>Customer Name<span class="auto-style4">*</span></td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtCustomerName" runat="server" Width="250px"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtFirstName" runat="server" Width="250px"></telerik:RadTextBox></td>

                <td>Last Name</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtLastName" runat="server" Width="250px"></telerik:RadTextBox></td>
            </tr>
            <tr>
                <td>Alternate Name</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtAltName" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Status<span class="auto-style4">*</span></td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpStatus" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
                <td>Registration Date</td>
                <td>:</td>
                <td>
                    <telerik:RadDatePicker ID="txtRegistrationDate" runat="server" Width="250px">
                        <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                    </telerik:RadDatePicker>
                </td>
            </tr>
            <tr hidden="hidden">
                <td>Manage By<span class="auto-style4">*</span></td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpManageBy" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="drpManageBy_SelectedIndexChanged"></telerik:RadComboBox>
                </td>
                <td hidden="hidden">Finance Ref No.</td>
                <td hidden="hidden">:</td>
                <td hidden="hidden">
                    <telerik:RadTextBox ID="txtFinanceRef" runat="server" Width="250px"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtAddress" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Address2</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtAddress2" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Address3</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtAddress3" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Post Code</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtPostCode" runat="server" Width="250px"></telerik:RadTextBox></td>

                <td>City</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtCity" runat="server" Width="250px"></telerik:RadTextBox></td>
            </tr>

            <tr>
                <%--<td>Country<span class="auto-style4">*</span></td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpCountry" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="drpCountry_SelectedIndexChanged"></telerik:RadComboBox></td>--%>

                <td>State</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpState" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
            </tr>

            <tr>
                <td>Office No.</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtOfficeNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox></td>

                <td>Mobile No.</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtMobileNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox></td>
            </tr>

            <tr>
                <td>Fax No.</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtFaxNox" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox></td>

                <td>Email<span class="auto-style4">*</span></td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox></td>
            </tr>
            <tr>
                <td>Account Manager</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtAccountManager" runat="server" Width="250px"></telerik:RadTextBox></td>

                <td>Position</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtPosition" runat="server" Width="250px"></telerik:RadTextBox></td>

            </tr>

            <tr>
                <td>Roles</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtRoles" runat="server" Width="250px"></telerik:RadTextBox></td>

                <td>Department</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtDepartment" runat="server" Width="250px"></telerik:RadTextBox></td>
            </tr>

            <tr>
                <td>Remarks</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

            </tr>
            <tr>
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
            <tr>
                <td>Branch Address</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtSiteAddress" runat="server" Width="88%" TextMode="MultiLine" Enabled="false"></telerik:RadTextBox>
                </td>

            </tr>
            <%--<tr>
                <td>Branch Address 1</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtBranchAddress1" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Branch Address 2</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtBranchAddress2" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Branch Address 3</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadTextBox ID="txtBranchAddress3" runat="server" Width="88%"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Branch Post Code</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtBranchPostCode" runat="server" Width="250px"></telerik:RadTextBox></td>

                <td>Branch City</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtBranchCity" runat="server" Width="250px"></telerik:RadTextBox></td>
            </tr>

            <tr>
                <td>Branch State</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpBranchState" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
            </tr>--%>
            <tr>
                <td colspan="6">
                    <fieldset>
                        <legend>Login Access</legend>
                        <table>
                            <tr>
                                <td style="width: 13.5%">Username</td>
                                <td style="width: 0.7%">:</td>
                                <td>
                                    <telerik:RadTextBox ID="txtUsername" runat="server" Width="250px"></telerik:RadTextBox></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>:</td>
                                <td>
                                    <telerik:RadTextBox ID="txtPassword" runat="server" autocomplete="new-password" TextMode="Password" Width="250px"></telerik:RadTextBox></td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
            </tr>

        </table>

    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Customer List" Visible="false">
                <TabTemplate>
                    Customer List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Contract Information" Selected="True">
                <TabTemplate>
                    Contract Information
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Asset Details" Visible="false">
                <TabTemplate>
                    Asset Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Person In Charge" Visible="false">
                <TabTemplate>
                    Person In Charge
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Event Logs">
                <TabTemplate>
                    Event Logs
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0" Visible="false">
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="RadGrid1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Customer ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("customerid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("customerid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="CustomerName" HeaderText="Customer Name"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="Refno" HeaderText="Finance Ref#" ></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="registrationdate" HeaderText="Registration Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="city" HeaderText="City"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="zip" HeaderText="Post Code"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="state" HeaderText="State"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="countryid" HeaderText="Country" ></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="managedby" HeaderText="ManagedBy"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-customer.aspx?customerid=<%#DataBinder.Eval(Container.DataItem,"customerid")%>&show=<%#DataBinder.Eval(Container.DataItem,"customerid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "customerid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <telerik:RadGrid ID="RadGrid2" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid2_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Contract ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV2" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="Contract No."></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SORdate" HeaderText="SOR Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="SoldtoCountry" HeaderText="Country" ></telerik:GridBoundColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
            <telerik:RadGrid ID="RadGrid3" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="20" OnPageIndexChanged="RadGrid3_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Asset ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("assetid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("assetid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="SystemSN" HeaderText="Serial No"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Descriptions" HeaderText="Descriptions"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cdt" HeaderText="Created Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ModulePartNumber" HeaderText="Module Part#"></telerik:GridBoundColumn>
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
        <telerik:RadPageView runat="server" TabIndex="3">
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <telerik:RadButton ID="btnAddPIC" runat="server" CssClass="btn btn-sky shiny" OnClick="btnAddPIC_Click" Text="Add" />
                    </td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPICName" runat="server" Width="250px">
                        </telerik:RadTextBox>
                    </td>
                    <td>Designation</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPICDesignation" runat="server" Width="250px">
                        </telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPICContact" runat="server" Width="250px"></telerik:RadTextBox></td>

                    <td>Email</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtPICEmail" runat="server" Width="250px" InputType="Email"></telerik:RadTextBox></td>
                </tr>
            </table>
            <telerik:RadGrid ID="RadGrid4" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("picid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV4" Text='<%# Eval("picid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="picname" HeaderText="Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="piccontact" HeaderText="Contact No"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="picemail" HeaderText="Email"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="picposition" HeaderText="Designation"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">

            <telerik:RadGrid ID="GridViewAuditTrail" runat="server" AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
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
