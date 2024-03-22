<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wf-woass.aspx.cs" Inherits="ServiceDesk3d.wf_woass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadSkinManager runat="server" Skin="Web20" ></telerik:RadSkinManager>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search"  />
        <telerik:RadButton ID="btnNew" runat="server" Text="New"  />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" />
    </div>
    <table>
        <tr>
            <td>Asset ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetID" runat="server" Width="250px" Text="XLT001"></telerik:RadTextBox>
            </td>
            <td>Serial No.</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSerialNo" runat="server" Width="250px" Text="SR000054354"></telerik:RadTextBox>
            </td>
        </tr>

        <tr>
            <td>Description</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtAssetID0" runat="server" Width="250px"  Text="Switch Form 1"></telerik:RadTextBox>
            </td>

            <td>System</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpMAStatus0" runat="server" Width="250px"  >
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Electrical" Value="Electrical" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
        </tr>

        <tr>
            <td>Location</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpMAStatus2" runat="server" Width="250px">
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Room3" Value="Room3" />
                                            </Items>
                </telerik:RadComboBox>
            </td>

            <td>Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpMAStatus1" runat="server" Width="250px">
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Switch" Value="Switch" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
        </tr>

        <tr>
            <td>Contract No.</td>
            <td>:</td>
            <td>
                        <telerik:RadComboBox ID="drpContract" runat="server" Width="250px"></telerik:RadComboBox>
            </td>

            <td>Status</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpMAStatus" runat="server" Width="250px" >
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="New" Value="New" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
        </tr>

        <tr>
            <td>MA Start Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAStartDate1x" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
            </td>

            <td>Contract Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpContractType" runat="server" Width="250px">
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="None" Value="None" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>MA End Date</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="txtMAEndDate1x" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
            </td>
            <td>Contract Duration</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtContractDuration" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Manage By</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpManageBy" runat="server" Width="250px">
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Work Order" Value="Work Order" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
            <td>Severity</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpSLACode" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Asset Owner</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpOwnership" runat="server" Width="250px">
                    <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Gemilang" Value="Gemilang" />
                                            </Items>
                </telerik:RadComboBox>
            </td>
            <td>SLA Descriptions</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSLADesc" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Cost</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="RadTextBox1" runat="server" Width="250px" Text="10"></telerik:RadTextBox>
            </td>
            <td>Aging</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="RadTextBox2" runat="server" Width="250px" Text="100"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Remarks</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCustomerRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>

        </tr>
        <tr>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>PM Details</legend>
                            <table>
                                <tr>
                                    <td>Schedule Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel7" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Calendar" Value="Calendar" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Frequency</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel8" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Weeekly" Value="Weeekly" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Next Service</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox3" runat="server" Width="250px" Text="22/11/2016"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset  class="fieldsetborder"><legend>Classifications</legend>
                            <table>
                                <tr>
                                    <td class="auto-style5">Model</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel4" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                             <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="SW001" Value="SW001" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">Maker</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpAssignLevel5" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"  >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="Sabertronic" Value="Sabertronic" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">Part ID</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox4" runat="server" Width="250px"></telerik:RadTextBox>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
    </table>
    
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>