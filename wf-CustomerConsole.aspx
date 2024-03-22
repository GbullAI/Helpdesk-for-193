<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-CustomerConsole.aspx.cs" Inherits="ServiceDesk3d.wf_CustomerConsole" %>

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
    <%--<h2>Customer List</h2>--%>
    <table>
        <tr>
            <td><h2>Customer Console</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Width="350px"/></td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtCustomerName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
            <td>Email</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtEmail" runat="server" Width="250px"></telerik:RadTextBox></td>
        </tr>
        <tr>
            <td>Branch<span class="auto-style4">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSiteID" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
            </td>
            <td>Mobile No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtMobileNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpStatus" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Office No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtOfficeNo" runat="server" Width="250px" InputType="Number"></telerik:RadTextBox></td>
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
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Type List" Selected="True">
                <TabTemplate>
                    Customer List
                </TabTemplate>
            </telerik:RadTab>
             <telerik:RadTab TabIndex="1" runat="server" Text="Delete Log">
                <TabTemplate>
                    Delete Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
        <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="false"  AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="RadGrid1_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Customer ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("customerid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("customerid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="CustomerName" HeaderText="Customer Name" ></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="Refno" HeaderText="Finance Ref#" ></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="registrationdate" HeaderText="Registration Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="city" HeaderText="City" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="zip" HeaderText="Post Code" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="state" HeaderText="State" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="managedby" HeaderText="Managed By" ></telerik:GridBoundColumn>    
                         <telerik:GridTemplateColumn HeaderText="Edit">
                             <ItemTemplate>
                                 <asp:LinkButton ID="useLinkButton1" runat="server" CommandArgument='<%# Eval("customerid") %>'
                                     CommandName="Edit" OnCommand="useLinkButton_Command1" Text="Edit"><img src="images/page_edit.png" alt="Edit" /></asp:LinkButton>
                             </ItemTemplate>
                         </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("customerid") %>'
                                    CommandName="Remove" OnCommand="useLinkButton_Command2" Text="Remove"><img src="images/clearicon.png" alt="Remove" /></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
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
        </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
