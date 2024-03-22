<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-workorder.aspx.cs" Inherits="ServiceDesk3d.wf_workorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
     <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
     <style type="text/css">
         .auto-style5 {
             width: 114px;
         }
         .auto-style6 {
             width: 110px;
         }
         .auto-style7 {
             width: 73px;
         }
         .auto-style8 {
             width: 111px;
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
                        <fieldset class="fieldsetborder"><legend>Work Order Details</legend>
                            <table>
                                <tr>
                                    <td>Work Order No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox16" runat="server" Width="250px"   Text="W0000333"></telerik:RadTextBox></td>
                                    <td>Date Created</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox17" runat="server" Width="250px"   Text="11/11/16"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>WO Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel0" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="True" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Breakdown" Value="Breakdown" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>WO Source</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="True" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Tenant" Value="Tenant" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Priority</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignLevel1_SelectedIndexChanged"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="High" Value="High" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Status</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel3" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="New" Value="New" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ref. No.</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox26" runat="server" Width="250px" ></telerik:RadTextBox>
                                    </td>
                                    <td>Schedule No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox27" runat="server" Width="250px"  ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Request Details</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="RadTextBox22" runat="server" Width="80%"   TextMode="MultiLine" Text="Can't turn on" ></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Requester Details</legend>
                            <table>
                                <tr>
                                    <td>Requester Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox1" runat="server" Width="250px" Text="Rahman Harapan"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Role</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox2" runat="server" Width="250px" Text="Building Manager"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox3" runat="server" Width="250px" Text="0162381747"></telerik:RadTextBox></td>
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
                                                <telerik:RadComboBoxItem runat="server" Text="Room 3" Value="Room 3" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">Systen</td>
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
                                                <telerik:RadComboBoxItem runat="server" Text="XLT00001-Light" Value="XLT00001" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            <tr>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Assignments</legend>
                            <table>
                                <tr>
                                    <td class="auto-style6">Team</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox4" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Tema 1" Value="Team 1" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Technician</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox5" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="John Woo" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Contractor</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox6" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  ></telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox29" runat="server" Width="250px" Visible="False"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset class="fieldsetborder"><legend>Timelines</legend>
                            <table>
                                <tr>
                                    <td>Plan Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox23" runat="server" Width="250px" Text="11/11/16 10:00:00"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Actual Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox24" runat="server" Width="250px" Text="11/11/16 10:00:00"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Completed Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox25" runat="server" Width="250px" Text="11/11/2016 11:00:00"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Time Taken(HH)</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox28" runat="server" Width="250px" Text="1"></telerik:RadTextBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            <tr>
                    <td colspan="6">
                        <fieldset class="fieldsetborder"><legend>Status Updates</legend>
                            <table>
                                <tr>
                                    <td class="auto-style8">Action Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Prepare" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Action By</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox10" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="John Woo" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Start Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox5" runat="server"   Width="250px" Text="11/11/2016 09:00:00"></telerik:RadTextBox></td>
                                    <td>End Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox6" runat="server"   Width="250px" Text="11/11/2016 10:00:00"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="RadTextBox30" runat="server" Width="80%"  Text="all part ready" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="6">Status Updates Listing</td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <fieldset class="fieldsetborder"><legend>Part Usage Details</legend>
                            <table>
                                <tr>
                                    <td class="auto-style7">Part</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="SWT0001" Value="Switch" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Quantity</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox9" runat="server" Width="250px"  Text="1" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Unit Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox10" runat="server"   Width="250px" Text="10" ></telerik:RadTextBox></td>
                                    <td>Total Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox11" runat="server"   Width="250px" Text="10" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Part Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox8" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Switch" Value="Switch" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Check Out By</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox9" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="JohnWoo" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">Part Usage Listing</td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            <tr>
                    <td colspan="6">
                        <fieldset class="fieldsetborder"><legend>Work Order Resolution</legend>
                            <table>
                                <tr>
                                    <td class="auto-style9">Corrective Action</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox13" runat="server" Width="80%"   TextMode="MultiLine" Text="Replace"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Cause Of Failure</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox31" runat="server" Width="80%"   TextMode="MultiLine" Text="broken"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Problem Symptoms</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox32" runat="server" Width="80%"   TextMode="MultiLine" Text="can't turn on"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Remedy/Job Done</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox33" runat="server" Width="80%"   TextMode="MultiLine" Text="Done"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Resovled By</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox11" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="John Woo" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
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