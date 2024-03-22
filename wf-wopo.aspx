<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-wopo.aspx.cs" Inherits="ServiceDesk3d.wf_wopo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
     <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
     <style type="text/css">
         .auto-style5 {
             width: 114px;
         }
         .auto-style7 {
             width: 73px;
         }
         .auto-style9 {
             width: 140px;
         }
         .auto-style10 {
             width: 3px;
         }
         .fieldsetborder {
             border-color:#1a1a52;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadSkinManager runat="server" Skin="Web20" ></telerik:RadSkinManager>
    <div class="formRow">
        <telerik:RadButton ID="btnNew" runat="server" Text="New" ></telerik:RadButton>
        <telerik:RadButton ID="btnCopy" runat="server" Text="Copy" Enabled="false" ></telerik:RadButton>
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" Enabled="false" ></telerik:RadButton>
        <telerik:RadButton ID="btnClear" runat="server" Text="Clear" Enabled="false" ></telerik:RadButton>      
    </div>
    <div>
        <table>
            <tr>
                    <td colspan="6">
                        <fieldset class="fieldsetborder"><legend>Purchase Order</legend>
                            <table>
                                <tr>
                                    <td>PO&nbsp; No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox16" runat="server" Width="250px"  Text="P000055" ></telerik:RadTextBox></td>
                                    <td>PO Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox17" runat="server" Width="250px"  Text="11/11/2016" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Status</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="New" Value="New" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Approved Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox1" runat="server" Width="250px"  Text="11/11/16" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>WO No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox35" runat="server" Width="250px"  Text="WO00456" ></telerik:RadTextBox>
                                    </td>
                                    <td>Ref No.</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox34" runat="server" Width="250px"  Text="" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="RadTextBox22" runat="server" Width="80%"  Text="For WO"  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Requester Details</legend>
                            <table>
                                <tr hidden="hidden">
                                    <td>Department</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="PM" Value="PM" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Requester Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox2" runat="server" Width="250px" Text="John Woo"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Requester Remarks</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox3" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Asset Details</legend>
                            <table>
                                <tr>
                                    <td class="auto-style5">Section</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel4" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Room3" Value="Room3" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">System</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel5" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Electrical" Value="Electrical" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">Asset</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel6" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="XLT01" Value="XLT01" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            
                            <tr>
                    <td colspan="6">
                        <fieldset class="fieldsetborder"><legend>Order Details</legend>
                            <table>
                                <tr>
                                    <td class="auto-style7">Item</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Switch" Value="Switch" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Quantity</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox9" runat="server" Width="250px"  Text="10" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Unit Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox10" runat="server"  Text="10"  Width="250px"></telerik:RadTextBox></td>
                                    <td>Total Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox11" runat="server"  Text="100"  Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="6">Order Details Listing</td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>