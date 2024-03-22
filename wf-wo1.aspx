<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-wo1.aspx.cs" Inherits="ServiceDesk3d.wf_wo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
     <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
     <style type="text/css">
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
                        <fieldset class="fieldsetborder"><legend>Schedule PM Details</legend>
                            <table>
                                <tr>
                                    <td>Schedule ID</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox16" runat="server" Width="250px"  Text="SC01" ></telerik:RadTextBox></td>
                                    <td>Date Created</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox17" runat="server" Width="250px"  Text="11/11/16" ></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>System</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel6" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Electrical" Value="Electrical" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Asset ID</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="XP00001" Value="XP00001" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Schedule No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel0" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Schedule Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Weekly" Value="Weekly" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Frequency</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Weekly" Value="Weekly" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Status</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel3" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Next Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox26" runat="server" Width="250px"  Text="17/11/16" ></telerik:RadTextBox>
                                    </td>
                                    <td>Last Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox27" runat="server" Width="250px"  Text="01/11/16" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Schedule Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel4" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Calendar" Value="Calendar" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Estimate Duration</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox28" runat="server" Width="250px"  Text="60" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Job Code</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel5" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="JC0001" Value="JC0001" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Team</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel8" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Team 1" Value="Team 1" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contractor</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel10" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  ></telerik:RadComboBox>
                                    </td>
                                    <td>Technician</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel9" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="JohnWoo" Value="JohnWoo" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Meter Reading</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox29" runat="server" Width="250px"  Text="SC01" ></telerik:RadTextBox>
                                    </td>
                                    <td>Interval</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox30" runat="server" Width="250px"  Text="SC01" ></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="RadTextBox22" runat="server" Width="80%"  Text="Active"  TextMode="MultiLine"></telerik:RadTextBox></td>
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