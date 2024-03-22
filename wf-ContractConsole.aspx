    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-ContractConsole.aspx.cs" Inherits="ServiceDesk3d.wf_ContractConsole" %>
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
        <%--<h2>Contract List</h2>--%>
        <table>
            <tr>
                <td><h2>Contract List</h2></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px"/></td>
            </tr>
            <tr>
                <td>Contract Type</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpContractType" runat="server" Width="250px"></telerik:RadComboBox>
                </td>
                <td>Contract Name</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtContractName" runat="server" Width="250px"></telerik:RadTextBox>
                </td>
            </tr>  
            <tr>
                <td>PIC Name</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtPICNAme" runat="server" Width="250px"></telerik:RadTextBox>
                </td>
                <td>PIC No</td>
                <td>:</td>
                <td>
                    <telerik:RadTextBox ID="txtPICNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox>
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
            <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>
                </td>
            </tr>
            </table>
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
            <Tabs>
                <telerik:RadTab TabIndex="0" runat="server" Text="Budget List" Selected="True">
                    <TabTemplate>
                        Contract List
                    </TabTemplate>
                </telerik:RadTab>
                <telerik:RadTab TabIndex="1" runat="server" Text="Budget List">
                    <TabTemplate>
                        Pending Contract List
                    </TabTemplate>
                </telerik:RadTab>
                <telerik:RadTab TabIndex="2" runat="server" Text="Budget List">
                    <TabTemplate>
                        Approved Contract List
                    </TabTemplate>
                </telerik:RadTab>
                <telerik:RadTab TabIndex="3" runat="server" Text="Budget List">
                    <TabTemplate>
                        Reject Contract List
                    </TabTemplate>
                </telerik:RadTab>
                
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
            <telerik:RadPageView runat="server" TabIndex="0" Visible="true">
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
                            <telerik:GridBoundColumn DataField="ContractNo" HeaderText="Contract No."></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ContractName" HeaderText="ContractName"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ApprovalName" HeaderText="Approval"></telerik:GridBoundColumn>
                            <telerik:GridTemplateColumn HeaderText="View in New Tab">
                                <ItemTemplate>
                                    <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <PagerStyle PageSizeControlType="None" />
                    </MasterTableView>
                </telerik:RadGrid>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" TabIndex="1">
                <telerik:RadGrid ID="GridView2" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView2_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView2_PageIndexChanged">
                    <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                    <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                        <Columns>
                            <telerik:GridTemplateColumn HeaderText="Contract ID">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkPendingButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Show" OnCommand="useLinkPendingButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridBoundColumn DataField="ContractNo" HeaderText="Contract No."></telerik:GridBoundColumn>
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
                            <telerik:GridTemplateColumn HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkPendingButton1" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Edit" OnCommand="useLinkPendingButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkPendingButton2" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Remove" OnCommand="useLinkPendingButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <PagerStyle PageSizeControlType="None" />
                    </MasterTableView>
                </telerik:RadGrid>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" TabIndex="2">
                <telerik:RadGrid ID="GridView3" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView3_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView3_PageIndexChanged">
                    <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                    <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                        <Columns>
                            <telerik:GridTemplateColumn HeaderText="Contract ID">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkApprovalButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Show" OnCommand="useLinkApprovalButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridBoundColumn DataField="ContractNo" HeaderText="Contract No."></telerik:GridBoundColumn>
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
                            <telerik:GridTemplateColumn HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkApprovalButton1" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Edit" OnCommand="useLinkApprovalButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkApprovalButton2" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Remove" OnCommand="useLinkApprovalButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <PagerStyle PageSizeControlType="None" />
                    </MasterTableView>
                </telerik:RadGrid>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" TabIndex="3">
                <telerik:RadGrid ID="GridView4" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView4_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView4_PageIndexChanged">
                    <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                    <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                        <Columns>
                            <telerik:GridTemplateColumn HeaderText="Contract ID">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkRejectButton" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Show" OnCommand="useLinkRejectButton_Command" Text='<%# Eval("contractid") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridBoundColumn DataField="ContractNo" HeaderText="Contract No."></telerik:GridBoundColumn>
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
                            <telerik:GridTemplateColumn HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkRejectButton1" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Edit" OnCommand="useLinkRejectButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="useLinkRejectButton2" runat="server" CommandArgument='<%# Eval("contractid") %>'
                                        CommandName="Remove" OnCommand="useLinkRejectButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <PagerStyle PageSizeControlType="None" />
                    </MasterTableView>
                </telerik:RadGrid>
            </telerik:RadPageView>
        </telerik:RadMultiPage>
                <%--<telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
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
                            <telerik:GridBoundColumn DataField="MAStartDate" HeaderText="MA Start Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="MAEndDate" HeaderText="MA End Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Approval" HeaderText="Approval"></telerik:GridBoundColumn>
                            <telerik:GridTemplateColumn HeaderText="View in New Tab">
                                <ItemTemplate>
                                    <a onclick="javascript:window.open('wf-contract.aspx?contractid=<%#DataBinder.Eval(Container.DataItem,"contractid")%>&show=<%#DataBinder.Eval(Container.DataItem,"contractid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "contractid")%></a>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <PagerStyle PageSizeControlType="None" />
                    </MasterTableView>
                </telerik:RadGrid>--%>
    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
