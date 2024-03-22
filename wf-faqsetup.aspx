<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-faqsetup.aspx.cs" Inherits="ServiceDesk3d.wf_faqsetup" %>

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
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM"></telerik:RadNotification>

    <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
    <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="BlueButton" />
    <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="BlueButton" />
    <telerik:RadButton ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="BlueButton" />
    <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="StandardConfirm" CssClass="BlueButton" />
    <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" CssClass="BlueButton" />
    <table>
        <tr>
            <td>FAQ ID
            </td>
            <td>:
            </td>
            <td>
                <telerik:RadTextBox runat="server" ID="txtFaqID" Enabled="false"></telerik:RadTextBox>
            </td>
            <td>Is Active
            </td>
            <td>:
            </td>
            <td>
                <telerik:RadCheckBox runat="server" ID="cbxIsActive"></telerik:RadCheckBox>
            </td>
        </tr>
        <tr>
                <td>FAQ Group</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpFAQGroup" runat="server" Width="250px" Enabled="false" Filter="Contains" ToolTip="To group FAQ" MarkFirstMatch="true" AutoPostBack="True" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                </td>
        </tr>
        <tr>
            <td>FAQ Question<span style="color:red">*</span>
            </td>
            <td>:
            </td>
            <td colspan="4">
                <telerik:RadTextBox runat="server" ID="txtFaqQuestion" Enabled="false" Width="80%"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>FAQ Answer<span style="color:red">*</span>
            </td>
            <td>:
            </td>
            <td colspan="4">
                <telerik:RadTextBox runat="server" ID="txtFaqAnswer" Enabled="false" Width="80%" TextMode="MultiLine"></telerik:RadTextBox>
            </td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Users" Selected="True">
                <TabTemplate>
                    FAQs
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
    <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20" OnSortCommand="GridView1_SortCommand" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="FAQ ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("faqid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("faqid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>             
                        <telerik:GridBoundColumn DataField="faqquestion" HeaderText="FAQ Question" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="faqanswer" HeaderText="FAQ Answer" ></telerik:GridBoundColumn>     
                        <telerik:GridBoundColumn DataField="faqgroup" HeaderText="FAQ Group" ></telerik:GridBoundColumn>     
                        <telerik:GridBoundColumn DataField="isactive" HeaderText="Active" ></telerik:GridBoundColumn>                              
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" AutoGenerateColumns="false"   OnSortCommand="GridViewAuditTrail_SortCommand" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
             <h3><asp:Label runat="server" ID="Label1" Text="Delete Log"></asp:Label></h3>
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

    <script type="text/javascript">
        function StandardConfirm(sender, args) {
            args.set_cancel(!window.confirm("Are you sure you want to delete this FAQ?"));
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
