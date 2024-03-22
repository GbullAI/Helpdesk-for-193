<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-faq.aspx.cs" Inherits="ServiceDesk3d.wf_faq" %>

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

        #ctl00_ContentPlaceHolder1_drpChecklistGroup .rcbActionButton {
            visibility: hidden;
        }
    </style>
    <style type="text/css">
  
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: 10px;">
        <table>
            <tr>
                <td colspan="6">
                    <h3>Knowledgebase</h3>
                </td>
            </tr>
            <tr>
                <td>Search Knowledgebase</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadComboBox ID="drpChecklistGroup" runat="server" Width="250px" Filter="Contains" ToolTip="To add knowledge base" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpChecklistGroup_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <br />
                </td>
            </tr>
            <tr>
                <td>Classifications Tier 1</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadComboBox ID="drpTier1" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down" OnSelectedIndexChanged="drpTier1_SelectedIndexChanged"></telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td>Classifications Tier 2</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadComboBox ID="drpTier2" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down" OnSelectedIndexChanged="drpTier2_SelectedIndexChanged"></telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td>Classifications Tier 3</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadComboBox ID="drpTier3" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down" OnSelectedIndexChanged="drpTier3_SelectedIndexChanged"></telerik:RadComboBox>
                </td>
            </tr>
          <%--  <tr>
                    <td>Resolution Category</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Item</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionItem" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Method</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionMethod" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Summary</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtResolutionsSummary" TextMode="MultiLine" runat="server" Width="70%" /></td>
                </tr>
                <tr>
                    <td>Resolutions</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtResolutionsx" TextMode="MultiLine" runat="server" Width="70%" /></td>
                </tr>
                <tr>
                    <td>Root Causes</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtRootCauses" TextMode="MultiLine" runat="server" Width="70%" /></td>
                </tr>
            <tr>
                <td>Search</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadButton ID="btnSearchKb" runat="server" Text="Populate" CssClass="BlueButton" OnClick="btnSearchKb_Click"></telerik:RadButton>
                </td>
            </tr>--%>
            <tr>
                <td>Knowledgebase</td>
                <td>:</td>
                <td colspan="4">
                    <telerik:RadComboBox ID="drpChecklist" runat="server" Width="250px" Filter="Contains" ToolTip="To add knowledge base" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpChecklist_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <h3>Frequently Asked Questions(FAQs)</h3>
                </td>
            </tr>
            <tr>
                <td>FAQ Group</td>
                <td>:</td>
                <td>
                    <telerik:RadComboBox ID="drpFAQGroup" runat="server" Width="250px" Filter="Contains" ToolTip="To group FAQ" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpFAQGroup_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                </td>
            </tr>
        </table>
        <asp:Repeater ID="rptrPosts" runat="server" OnItemDataBound="rptrPosts_ItemDataBound">
            <ItemTemplate>
                <div runat="server" id="divFAQ"></div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow1" runat="server" OnUnload="RadWindow1_Unload" DestroyOnClose="true" OnDisposed="RadWindow1_Unload"
        Height="555"
        Width="333">
    </telerik:RadWindow>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
