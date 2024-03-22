<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-wo1pm.aspx.cs" Inherits="ServiceDesk3d.wf_wo1pm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
     <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
     <style type="text/css">
         .auto-style6 {
             width: 110px;
         }
         .auto-style7 {
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
         .auto-style11 {
             width: 139px;
         }
         .auto-style12 {
             width: 157px;
         }
         .auto-style13 {
             width: 384px;
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
                        <fieldset class="fieldsetborder"><legend>PM Service Record Details</legend>
                            <table>
                                <tr>
                                    <td>Service No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox16" runat="server" Width="250px"  Text="PM000022" ></telerik:RadTextBox></td>
                                    <td>Date Created</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox17" runat="server" Width="250px"  Text="11/11/16" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Asset</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel0" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="XLT0000001" Value="XLT0000001" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Schedule No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Job Code</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="JC00002" Value="JC00002" />
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
                                    <td>Service Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox26" runat="server" Width="250px"  Text="PM" ></telerik:RadTextBox>
                                    </td>
                                    <td>Schedule Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox27" runat="server" Width="250px"  Text="Weekly PM" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="RadTextBox22" runat="server" Width="80%"  Text=""  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Schedule Details</legend>
                            <table>
                                <tr>
                                    <td>&nbsp;Frequency</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox1" runat="server" Width="250px" Text="Weekly"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Last Service</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox2" runat="server" Width="250px" Text="01/11/2016"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Next Service</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox3" runat="server" Width="250px" Text="17/11/2016"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Asset Details</legend>
                            <table>
                                <tr>
                                    <td class="auto-style11">Section</td>
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
                                    <td class="auto-style11">Systen</td>
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
                                    <td class="auto-style11">Asset</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel6" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Switch" Value="Switch" />
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
                                                <telerik:RadComboBoxItem runat="server" Text="Team1" Value="Team1" />
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
                                                <telerik:RadComboBoxItem runat="server" Text="JohnWoo" Value="JohnWoo" />
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
                                    <td>Service Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox23" runat="server" Width="250px" Text="11/11/2016"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Actual Datetime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox24" runat="server" Width="250px" Text="11/11/2016 10:00:00"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Completed Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox25" runat="server" Width="250px" Text="11/11/2016 10:33:00"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Time Taken(HH)</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox28" runat="server" Width="250px" Text="0.5"></telerik:RadTextBox>
                                    </td>
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
                                    <td class="auto-style13">
                                        <telerik:RadComboBox ID="RadComboBox7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  ></telerik:RadComboBox>
                                    </td>
                                    <td class="auto-style12">Quantity</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox9" runat="server" Width="250px"  Text="PM000022" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Unit Cost</td>
                                    <td>:</td>
                                    <td class="auto-style13">
                                        <telerik:RadTextBox ID="RadTextBox10" runat="server"  Text="PM000022"  Width="250px"></telerik:RadTextBox></td>
                                    <td class="auto-style12">Total Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox11" runat="server"  Text="PM000022"  Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Part Type</td>
                                    <td>:</td>
                                    <td class="auto-style13">
                                        <telerik:RadComboBox ID="RadComboBox8" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  ></telerik:RadComboBox>
                                    </td>
                                    <td class="auto-style12">Check Out By</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox9" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  ></telerik:RadComboBox>
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
                        <fieldset class="fieldsetborder"><legend>Service Action Taken</legend>
                            <table>
                                <tr>
                                    <td class="auto-style9">Corrective Action</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        Required?<telerik:RadCheckBox ID="RadCheckBox1" runat="server" ></telerik:RadCheckBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Corrective Action</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox13" runat="server" Width="80%"  Text="No"  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Cause Of Failure</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox31" runat="server" Width="80%"  Text="No"  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Problem Symptoms</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox32" runat="server" Width="80%"  Text="No"  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Remedy/Job Done</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox33" runat="server" Width="80%"  Text="Done"  TextMode="MultiLine"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Resovled By</td>
                                    <td class="auto-style10">:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox11" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="JohnWoo" Value="JohnWoo" />
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