<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk2-selfcare.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk2_selfcare" ValidateRequest="false" %>

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
        }<a href="wf-helpdesk2-selfcare.aspx">wf-helpdesk2-selfcare.aspx</a>
    </style>
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            function showPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
    </telerik:RadCodeBlock>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnNew" runat="server" Text="New" ToolTip="Create a new ticket" OnClick="btnNew_Click" Visible="false"></telerik:RadButton>
        <telerik:RadButton ID="btnCopy" runat="server" Text="Copy" Enabled="false" ToolTip="" visible="false" OnClick="btnCopy_Click"></telerik:RadButton>
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" Enabled="false" ToolTip="Save this ticket" OnClick="btnSave_Click" Width="100px" CssClass="GreenButton"></telerik:RadButton>
        <telerik:RadButton ID="btnClear" runat="server" Text="Clear" Enabled="false" ToolTip="Clear all fields" OnClientClicking="showPrompt" OnClick="btnClear_Click" Width="100px" CssClass="GreyButton"></telerik:RadButton>
        <telerik:RadButton ID="RadButton33" runat="server" Text="My Ticket" ToolTip="View all tickets" OnClick="RadButton33_Click"  Width="100px" CssClass="BrownButton"></telerik:RadButton>
        <telerik:RadButton ID="btnClose" runat="server" Text="Close" ToolTip="Close this ticket" OnClick="btnClose_Click" Visible="false" Width="100px" CssClass="RedButton"></telerik:RadButton>
        
    </div>
    <div>
        <telerik:RadLabel ID="lblMx" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9" ForeColor="Red"></telerik:RadLabel>
        <telerik:RadTextBox ID="txtResponseSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtResolutionSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblSLACode" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtMainSRID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtStatusID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtAssignedTo" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceCustomer" ProviderName="MySql.Data.MySqlClient" />
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>Service Request ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSRID" runat="server" Width="250px" AutoPostBack="True" ReadOnly="True" Enabled="false"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadTextBox ID="txtCustomerID" runat="server" Width="250px" ReadOnly="True"  Enabled="False" Visible="false" ></telerik:RadTextBox>
                                <telerik:RadTextBox ID="txtCustomerName" runat="server" Width="250px" ReadOnly="True"  Enabled="False" Visible="false"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadTextBox ID="txtIncomingPhoneNo" runat="server" Width="250px" ReadOnly="True"  Enabled="False" Visible="false"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Branch ID <span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSiteID" runat="server" Width="250px" ReadOnly="True"  Enabled="False"  Visible="false"></telerik:RadTextBox>
                                <telerik:RadComboBox ID="drpAssetSite" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetSite_SelectedIndexChanged1"  Enabled="false"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Asset Location <!--<span class="auto-style4">*</span>--></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px" ToolTip="Asset category related to this ticket" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetCategory_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Equipment ID <!--<span class="auto-style4">*</span>--></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetEquipment" runat="server" Width="250px" ToolTip="Asset equipment ID related to this ticket" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetEquipment_SelectedIndexChanged1"></telerik:RadComboBox>&nbsp;
                                <telerik:RadButton ID="ViewAsset" runat="server" Text="View Asset" ToolTip="View the equipment ID selected" OnClick="ViewAsset_Click" Width="150px" Visible="false"></telerik:RadButton>
                            </td>
                        </tr>
                        <tr hidden="hidden">
                            <td>Asset ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtAssetId" runat="server" Width="250px"  Visible="false" ReadOnly="True"></telerik:RadTextBox>
                            </td>
                        </tr>
                       <%-- <tr hidden="hidden">
                            <td>Country<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCountryAccess_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>--%>
                        
                        
                        <%--<tr>
                            <td>Search By :</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSearchBy" runat="server" Width="250px" AutoPostBack="True" OnTextChanged="txtSearchBy_TextChanged1" EmptyMessage="SR ID"></telerik:RadTextBox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>Location<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpCustomerLocation" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCustomerLocation_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>--%>
                        <%--<tr hidden="hidden">
                            <td>Contract</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpContract" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpContract_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>Asset Type<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetType_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>--%>
                        <%--<tr>
                            <td>Serial #</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpSystemSerialNo" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpSystemSerialNo_SelectedIndexChanged1" ExpandDirection="Down"></telerik:RadComboBox>
                            </td>
                        </tr>--%>

                        <tr>
                            <td>Request Type<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpRequestType" runat="server" ToolTip="Type of request you want to raise for this ticket" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpRequestType_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr hidden="hidden">
                            <td>Status<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpIncidentStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpIncidentStatus_SelectedIndexChanged1" AutoPostBack="True"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr hidden="hidden">
                            <td>Status Reason<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpStatusReason" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadDateTimePicker ID="txtAppointment" runat="server" Width="250px" Visible="false">
                                    <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                    </DateInput>
                                </telerik:RadDateTimePicker>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                          <tr>
                             <td>Channel<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpChannel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" ExpandDirection="Down" EnableScreenBoundaryDetection="false" Enabled="false" ></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Log Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtLogDateTime" runat="server" Width="250px" ReadOnly="True" Enabled="false"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtLogDateTime" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td></td>
                            <td></td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True" Visible="false"></telerik:RadTextBox></td>--%>
                                <telerik:RadDateInput ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput></td>
                        </tr>

                        <tr hidden="hidden">
                            <td></td>
                            <td></td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True" Visible="false"></telerik:RadTextBox></td>--%>
                                <telerik:RadDateInput ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadComboBox ID="drpSLACode" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpSLACode_SelectedIndexChanged1"  Visible="false"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadTextBox ID="txtSiteStatus" runat="server" Width="250px" Enabled="False" Visible="false"></telerik:RadTextBox></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <telerik:RadTextBox ID="txtMonitored" runat="server" Width="250px" Enabled="False" Visible="false"></telerik:RadTextBox></td>
                        </tr>

                        <tr>
                            <td>Urgency<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpUrgency" runat="server" ToolTip="Select an urgency for this ticket"  Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpUrgency_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Impact<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpImpact" runat="server" Width="250px" ToolTip="Select an impact for this ticket"  Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpImpact_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Priority<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpPriority" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" Enabled="False"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Vendor Ref #</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtVendorRef" runat="server" Width="250px" Enabled="False"></telerik:RadTextBox></td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Customer Ref #</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtCustomerRefNo" runat="server" Width="250px" Enabled="False"></telerik:RadTextBox></td>
                        </tr>

                    </table>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="lablex" style="height: 26px">Title<span class="auto-style4">*</span></td>
                            <td class="auto-style2">:</td>
                            <td colspan="4" class="auto-style3">
                                <telerik:RadTextBox ID="txtSummary" runat="server" ToolTip="Enter brief summary of why you are raising this ticket"  Width="80%"></telerik:RadTextBox></td>
                        </tr>
                        <tr hidden="hidden">
                            <td class="lablex">Current Update</td>
                            <td class="auto-style1">:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtCurrentUpdate" runat="server" Width="80%"></telerik:RadTextBox></td>
                        </tr>
                        <tr>
                            <td class="lablex">Descriptions<span class="auto-style4">*</span></td>
                            <td class="auto-style1">:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtIncidentDetails" runat="server" ToolTip="Enter a brief description for the agent to understand the issue"  Width="80%" TextMode="MultiLine"></telerik:RadTextBox></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="2">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Customer Informations"  Visible="false">
                <TabTemplate>
                    Customer Informations
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Assigment"  Visible="false">
                <TabTemplate>
                    Assigment
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Incident Details"  Visible="false">
                <TabTemplate>
                    Incident Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="MACD Details"  Visible="false">
                <TabTemplate>
                    MACD Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Classifications"  Visible="false">
                <TabTemplate>
                    Classifications
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="5" runat="server" Text="Contract Details"  Visible="false">
                <TabTemplate>
                    Contract Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="SLA Details"  Visible="false">
                <TabTemplate>
                    SLA Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="Resolution Details"  Visible="false">
                <TabTemplate>
                    Resolution Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="Miscellaneous"  Visible="false">
                <TabTemplate>
                    Miscellaneous
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Audit Trials"  Visible="false">
                <TabTemplate>
                    Audit Trails
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="10" runat="server" Text="Request History"  Visible="false">
                <TabTemplate>
                    Request History
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="11" runat="server" Text="Related Request"  Visible="false">
                <TabTemplate>
                    Related Request
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="12" runat="server" Text="Related Request"  Visible="false">
                <TabTemplate>
                    Social Responses
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="2">
        <telerik:RadPageView runat="server" TabIndex="0">
            <table>
                <tr>
                    <td colspan="3">
                        <fieldset>
                            <legend>Reports By</legend>
                            <table>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByName"  ToolTip="Enter the name of the person reported" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByEmail"  ToolTip="Enter the email of the person reported" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByContactNo"  ToolTip="Enter contact number of the person reported" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    
                    <td colspan="3" runat="server" visible="false">
                        <fieldset>
                            <legend>Contact Details</legend>
                            <table>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICName" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICEmail" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICContactNo" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr runat="server" visible="false">
                    <td colspan="6">
                        <fieldset>
                            <legend>Address</legend>
                            <table>
                                <tr>
                                    <td>Address</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtAddress" runat="server" Width="80%" ReadOnly="True"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>City</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCity" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox></td>
                                    <td>Post Code</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPostCode" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>State</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtState" runat="server" ReadOnly="True" Width="250px">
                                        </telerik:RadTextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                   <%-- <td>Country</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCountry" runat="server" ReadOnly="True" Width="250px">
                                        </telerik:RadTextBox>
                                    </td>--%>
                                </tr>
                                <tr>
                                    <td>Office No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtOfficeNo" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox></td>
                                    <td>Mobile No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtMobileNo" runat="server" Width="230px" ReadOnly="True"></telerik:RadTextBox>
                                        <asp:ImageButton ID="btnMobileNo" runat="server" ImageUrl="images/phone_answer_icon.png" OnClick="btnMobileNo_Click" visible="false"/>
                                        <asp:Label ID="lblMobileNo" runat="server" Visible="False"></asp:Label>
                                    </td>
                                        
                                </tr>
                                <tr>
                                    <td>Fax No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtFaxNox" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr runat="server" visible="false">
                    <td colspan="6">
                        <fieldset>
                            <legend>Support Remarks</legend>
                            <telerik:RadTextBox ID="txtSupportRemarks" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true"></telerik:RadTextBox>
                        </fieldset>
                    </td>
                </tr>
            </table>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <table>
                <tr>
                    <td>
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar4" Width="100%" BackColor="#eeeeee">
                            <Items>
                                <telerik:RadPanelItem Text="Assignment" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td hidden="hidden">Department<span class="auto-style4">*</span></td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpAssignLevel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignLevel_SelectedIndexChanged1"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Group<span class="auto-style4">*</span></td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpAssignGroup" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignGroup_SelectedIndexChanged2"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Primary</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpAssignIndividual" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignIndividual_SelectedIndexChanged"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Secondary</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpAssignSecondary" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignSecondary_SelectedIndexChanged"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </telerik:RadPanelItem>
                            </Items>
                            <ExpandAnimation Type="None" />
                            <CollapseAnimation Type="None" />
                        </telerik:RadPanelBar>
                    </td>
                    <td>
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar3" Width="100%" BackColor="#eeeeee">
                            <Items>
                                <telerik:RadPanelItem Text="Status" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td>Onsite Engineer Required</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpOnsiteEngineerRequired" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>FE Reassign</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpFEReassign" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Escalate To Vendor</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpEscalateToVendor" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Vendor Accepted</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpVendorAccepted" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </telerik:RadPanelItem>
                            </Items>
                            <ExpandAnimation Type="None" />
                            <CollapseAnimation Type="None" />
                        </telerik:RadPanelBar>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar1" Width="100%" BackColor="#eeeeee">
                            <Items>
                                <telerik:RadPanelItem Text="Task" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td>Task ID</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskID" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                                                <td>Plan Start</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="txtTaskPlanStart" runat="server" Width="200px">
                                                        <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                                        </DateInput>
                                                    </telerik:RadDateTimePicker>
                                                </td>
                                                <td>Plan End</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="txtTaskPlanEnd" runat="server" Width="200px">
                                                        <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"> 
                                                        </DateInput>
                                                    </telerik:RadDateTimePicker>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Created Date</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskCreatedDate" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                                                <td>Assigned To</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpTaskAssignedTo" runat="server" Width="200px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                                <td>Status</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpTaskStatus" runat="server" Width="200px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Created By</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskCreatedBy" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                                                <td>Actual Start</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="txtTaskActualStart" runat="server" Width="200px">
                                                        <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                                        </DateInput>
                                                    </telerik:RadDateTimePicker>
                                                </td>
                                                <td>Actual End</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="txtTaskActualEnd" runat="server" Width="200px">
                                                        <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                                        </DateInput>
                                                    </telerik:RadDateTimePicker>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Task Descriptions</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtTaskDesc" runat="server" Width="200px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>
                                                </td>
                                                <td>Task Updates</td>
                                                <td>:</td>
                                                <td colspan="4">
                                                    <telerik:RadTextBox ID="txtTaskUpdate" runat="server" Width="400px" TextMode="MultiLine" ReadOnly="false"></telerik:RadTextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="9">
                                                    <telerik:RadButton ID="btnTaskSave" runat="server" Text="Save" Enabled="true" OnClick="btnTaskSave_Click"></telerik:RadButton>
                                                    <telerik:RadButton ID="btnTaskClear" runat="server" Text="Clear" Enabled="true" OnClick="btnTaskClear_Click"></telerik:RadButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="9">
                                                    <telerik:RadGrid ID="RadGridTask" runat="server" Visible="true" AutoGenerateColumns="false">
                                                        <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                                                        <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                                                            <Columns>
                                                                <telerik:GridTemplateColumn HeaderText="ID">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("taskno") %>'
                                                                            CommandName="Show" OnCommand="useLinkButton_CommandTask" Text='<%# Eval("taskno") %>'></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </telerik:GridTemplateColumn>
                                                                <telerik:GridBoundColumn DataField="taskdesc" HeaderText="Task Descriptions" HtmlEncode="False"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="taskstatus" HeaderText="Status"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="taskowner" HeaderText="Assigned To"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="planstart" HeaderText="Plan Start DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="planend" HeaderText="Plan End DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="actualstart" HeaderText="Actual Start DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="actualend" HeaderText="Actual End DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="createddate" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                    </telerik:RadGrid>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </telerik:RadPanelItem>
                            </Items>
                            <ExpandAnimation Type="None" />
                            <CollapseAnimation Type="None" />
                        </telerik:RadPanelBar>
                    </td>
                </tr>
                <tr>
                    <td>
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar5" Width="100%" BackColor="#eeeeee">
                            <Items>
                                <telerik:RadPanelItem Text="Owner" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td>Group</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtOwnerGroup" runat="server" Width="250px" OnTextChanged="txtOwnerGroup_TextChanged" ReadOnly="True"></telerik:RadTextBox></td>
                                            </tr>
                                            <tr>
                                                <td>Owner</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtOwnerBy" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox></td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </telerik:RadPanelItem>
                            </Items>
                            <ExpandAnimation Type="None" />
                            <CollapseAnimation Type="None" />
                        </telerik:RadPanelBar>
                    </td>
                    <td></td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" ID="RadPageViewIncidentDetails" TabIndex="2" Visible="false">
            <table>
                <tr hidden="hidden">
                    <td>
                        <fieldset>
                            <legend>Remote Support</legend>
                            <telerik:RadLabel runat="server" Width="250px" Text="Time and Material Charge Required"></telerik:RadLabel>
                            <telerik:RadComboBox ID="drpTimeandMaterialChargeRequired" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            <br />
                            <telerik:RadLabel runat="server" Width="250px" Text="FSR Signed by Customer"></telerik:RadLabel>
                            <telerik:RadComboBox ID="drpFSRSignedbyCustomer" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            <br />
                            <telerik:RadMaskedTextBox ID="txtRemoteBillableBusinessHoursx" Mask="####:##" runat="server" Label="Billable Work Time (Business Hours)" LabelWidth="250px" Width="500px"></telerik:RadMaskedTextBox><br />
                            <telerik:RadMaskedTextBox ID="txtRemoteBillableAfterHoursx" Mask="####:##" runat="server" Label="Billable Work Time (After Hours)" LabelWidth="250px" Width="500px"></telerik:RadMaskedTextBox><br />
                            <telerik:RadMaskedTextBox ID="txtRemoteTotalx" Mask="####:##" runat="server" Label="Total Remote Time" LabelWidth="250px" Width="500px"></telerik:RadMaskedTextBox><br />
                        </fieldset>
                    </td>
                    <td>
                        <fieldset>
                            <legend>Onsite Support</legend>
                            <telerik:RadLabel runat="server" Width="250px" Text="Hardware Replacement to be Charged"></telerik:RadLabel>
                            <telerik:RadComboBox ID="drpCustomerInformedofChargeable" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            <br />
                            <telerik:RadLabel runat="server" Width="250px" Text="FSR Signed by Customer"></telerik:RadLabel>
                            <telerik:RadComboBox ID="drpHardwareReplacementCharged" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            <br />
                            <telerik:RadMaskedTextBox ID="txtOnsiteBillableBusinessHoursx" Mask="####:##" runat="server" Label="Billable Work Time (Business Hours)" LabelWidth="250px" Width="500px" InputType="Time"></telerik:RadMaskedTextBox><br />
                            <telerik:RadMaskedTextBox ID="txtOnsiteBillableAfterHoursx" Mask="####:##" runat="server" Label="Billable Work Time (After Hours)" LabelWidth="250px" Width="500px" InputType="Time"></telerik:RadMaskedTextBox><br />
                            <telerik:RadMaskedTextBox ID="txtOnsiteTotalx" Mask="####:##" runat="server" Label="Total Onsite Time" LabelWidth="250px" Width="500px" InputType="Time"></telerik:RadMaskedTextBox><br />

                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <fieldset>
                            <legend>Case Log:</legend>
                            <table>
                                <tr>
                                    <td class="lablex">Case Log - Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtCaseLogsx"  ToolTip="Enter case log remarks" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
                                            <CssFiles>
                                                <telerik:EditorCssFile Value="styles/radeditor.css" />
                                            </CssFiles>
                                            <Tools>
                                                <telerik:EditorToolGroup>
                                                    <telerik:EditorTool Name="FindAndReplace" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Bold" />
                                                    <telerik:EditorTool Name="Italic" />
                                                    <telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="ForeColor" />
                                                    <telerik:EditorTool Name="BackColor" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="FontName" />
                                                    <telerik:EditorTool Name="RealFontSize" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="JustifyLeft" />
                                                    <telerik:EditorTool Name="JustifyRight" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="LinkManager" />
                                                    <telerik:EditorTool Name="Links" />
                                                    <telerik:EditorTool Name="InsertLink" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                            <Content>         
                                            </Content>
                                        </telerik:RadEditor>

                                    </td>
                                </tr>
                                <tr hidden="hidden">
                                    <td>Case Log Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCaseLogType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpCaseLogType_SelectedIndexChanged"></telerik:RadComboBox>
                                    </td>
                                    <td>Case Log Category</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCaseLogCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCaseLogCategory_SelectedIndexChanged1"></telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Attachment</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
                                        <asp:FileUpload ID="FileUploadInc" runat="server" />
                                        <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" ToolTip="After selecting a file click here to upload"  Text="Upload" runat="server" accept="image/gif, image/jpeg" OnClick="btnUploadInc_Click" />
                                        <br />
                                        <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>

                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="BtnIncExternal" runat="server" Text="Submit" ToolTip="After uploading files click here to submit the files"  OnClick="BtnIncExternal_Click" /></td>
                                    <td hidden="hidden">Internal</td>
                                    <td hidden="hidden">:</td>
                                    <td hidden="hidden">
                                        <asp:Button ID="BtnIncInternal" runat="server" Text="Update Internal" OnClick="BtnIncInternal_Click" /></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>
            <telerik:RadGrid ID="GridView3" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="caselog" HeaderText="Case Log" HtmlEncode="False"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('../upload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridBoundColumn DataField="caselogtype" HeaderText="Caselog Type"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="caselogcategory" HeaderText="Caselog Category"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="caselogby" HeaderText="Action By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="caselogdate" HeaderText="Action DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <table>
                <tr>
                    <td>Change Category Tier 1</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeCategoryTier1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>No of MAC's</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtNoofMAC" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Change Category Tier 2</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeCategoryTier2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Chargeable</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChargeable" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Risk Level</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpRiskLevel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Quote Attached</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpQuoteAttached" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Change Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Quote Approved by Customer</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpQuoteApprovedbyCustomer" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Change Reason</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeReason" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Change Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Change Environment</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpChangeEnvironment" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Change Requestor</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeRequestor" runat="server" Width="250px" /></td>
                    <td>Change Approver</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeApprover" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Change Requestor Email</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeRequestorEmail" runat="server" Width="250px" /></td>
                    <td>Change Approver Email</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeApproverEmail" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Change Requestor Phone</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeRequestorPhone" runat="server" Width="250px" /></td>
                    <td>Change Approver Phone</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeApproverPhone" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Downtime Required</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpDowntimeRequired" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Estimated Downtime</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtEstimatedDowntime" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Scheduled State Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtScheduledStateDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Actual Start Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtActualStartDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Scheduled End Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtScheduledEndDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Actual End Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtActualEndDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Target Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtTargetDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Completed Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtCompletedDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Total Remote Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtRemoteTotalm" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                    <td>Total Onsite Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtOnsiteTotalm" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <fieldset>
                            <legend>Case Log:</legend>
                            <table>
                                <tr>
                                    <td class="lablex">Case Log - Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtCaseLogMACDx" Width="80%" NewLineMode="Br" Height="200px" CssClass="styles/radeditor.css">
                                            <CssFiles>
                                                <telerik:EditorCssFile Value="styles/radeditor.css" />
                                            </CssFiles>
                                            <Tools>
                                                <telerik:EditorToolGroup>
                                                    <telerik:EditorTool Name="FindAndReplace" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Bold" />
                                                    <telerik:EditorTool Name="Italic" />
                                                    <telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="ForeColor" />
                                                    <telerik:EditorTool Name="BackColor" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="FontName" />
                                                    <telerik:EditorTool Name="RealFontSize" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="JustifyLeft" />
                                                    <telerik:EditorTool Name="JustifyRight" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="LinkManager" />
                                                    <telerik:EditorTool Name="Links" />
                                                    <telerik:EditorTool Name="InsertLink" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                            <Content>         
                                            </Content>
                                        </telerik:RadEditor>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Case Log Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCaseLogTypeMACD" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                    </td>
                                    <td>Case Log Category</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCaseLogCategoryMACD" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCaseLogCategoryMACD_SelectedIndexChanged1"></telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Attachment</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblFileUploadMACD" runat="server"></asp:Label>
                                        <asp:FileUpload ID="FileUploadMACD" runat="server" />
                                        <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadMACD" Text="Upload" runat="server" accept="image/gif, image/jpeg" OnClick="btnUploadMACD_Click" />
                                        <br />
                                        <asp:Label ID="lblUploadMessageMACD" runat="server"></asp:Label>

                                    </td>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Internal</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Button ID="btnInternalMACD" runat="server" Text="Update Internal" OnClick="btnInternalMACD_Click" /></td>
                                    <td>External</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Button ID="btnExternalMACD" runat="server" Text="Update External" OnClick="btnExternalMACD_Click" /></td>
                                </tr>
                            </table>
                        </fieldset>

                    </td>
                </tr>
            </table>
            <telerik:RadGrid ID="GridView7" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV7" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="caselog" HeaderText="Case Log" HtmlEncode="False"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('../upload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <%--<telerik:GridBoundColumn DataField="caselogtype" HeaderText="Caselog Type"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="caselogcategory" HeaderText="Caselog Category"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="caselogby" HeaderText="Action By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="caselogdate" HeaderText="Action DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <table>
                <tr>
                    <td colspan="3">
                        <fieldset>
                            <legend>Operational Categorization</legend>
                            <table>
                                <tr>
                                    <td>Tier 1</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpOperationalTier1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier1_SelectedIndexChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 2</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpOperationalTier2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier2_SelectedIndexChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 3</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpOperationalTier3" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset>
                            <legend>Product Categorization</legend>
                            <table>
                                <tr>
                                    <td>Tier 1</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpProductTier1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 2</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpProductTier2" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 3</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpProductTier3" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtProductName" runat="server" Width="250px" /></td>
                    <td>Model/Version</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtModel" runat="server" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Manufacturer</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtManufacturer" runat="server" Width="250px" /></td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>

            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <table>
                <tr>
                    <td>
                        <fieldset>
                            <legend>Contract Details</legend>
                            <table>
                                <tr>
                                    <td>Contract #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtContractNo" runat="server" Width="250px" ReadOnly="true" /></td>
                                    <td>Customer PO #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCustomerPO" runat="server" Width="250px" /></td>
                                </tr>
                                <tr>
                                    <td>Customer #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCustomerNo" runat="server" Width="250px" ReadOnly="true" /></td>
                                    <td>Customer Sale Order #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCustomerOrderNo" runat="server" Width="250px" /></td>
                                </tr>
                                <tr>
                                    <td>Contract Start Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtContractStartDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtContractStartDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>Vendor Return Merchandise Authorization #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtVendorRMA" runat="server" Width="250px" /></td>
                                </tr>
                                <tr>
                                    <td>Contract End Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtContractEndDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtContractEndDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>Service Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtServiceType" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                                <tr>
                                    <td>Managed BY</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtManagedBY" runat="server" Width="250px" ReadOnly="true" /></td>
                                    <td>Account Prime</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtAccountPrime" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset>
                            <legend>B2B Contract Details</legend>
                            <table>
                                <tr>
                                    <td>B 2 B Contractor</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractor" runat="server" Width="250px" ReadOnly="true" /></td>
                                    <td>B 2 B Contract Person</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractPerson" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                                <tr>
                                    <td>B 2 B Contract ID</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractID" runat="server" Width="250px" ReadOnly="true" /></td>
                                    <td>B 2 B Contract Phone</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractPhone" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                                <tr>
                                    <td>B 2 B Start Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtB2BStartDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtB2BStartDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>B 2 B Contract Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractEmail" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                                <tr>
                                    <td>B 2 B End Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtB2BEndDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtB2BEndDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>B2B Notes</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BNotes" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            <table>
                <tr>
                    <td>Total Incident Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtTotalIncidentTime" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Submitter</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSubmitter" runat="server" Width="250px" ReadOnly="true" /></td>
                    <td>Last Modified By</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtLastModifiedBy" runat="server" Width="250px" ReadOnly="true" /></td>
                </tr>
                <tr>
                    <td>Submit Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtSubmitDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtSubmitDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                    <td>Last Modified On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtLastModifiedOn" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtLastModifiedOn" runat="server" Width="250px" ReadOnly="True" DateFormat="dd/MM/yyyy HH:mm:ss" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                </tr>
                <tr>
                    <td>Reported On</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtReportedOnx" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Actual Incident Occur Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtActualIncidentOccurDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Target Acknowledgement Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtTargetAcknowledgementDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtTargetAcknowledgementDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                    <td>Acknowledged On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtAcknowledgedOn" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtAcknowledgedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                </tr>
                <tr>
                    <td>Target Resolution Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtTargetResolutionDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtTargetResolutionDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                    <td>Resolved On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtResolvedOn" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtResolvedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                </tr>
                <tr>
                    <td>Required Resolution Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtRequiredResolutionDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Closed On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtClosedOn" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                        <telerik:RadDateInput ID="txtClosedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                </tr>
                <tr>
                    <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteArrivalTimex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Travel Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtTravelTimex" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Onsite Completion Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteResolutionTimex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>SLA Exempt</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSLAExempt" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Repair Turnaround Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtRepairTurnaroundTimex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Onsite Delivery Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteDeliveryTimex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Actual Response Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtActualResponseCompliance" runat="server" ReadOnly="true" Width="250px" /></td>
                    <td>Actual Resolution Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtActualResolutionCompliance" runat="server" ReadOnly="true" Width="250px" /></td>
                </tr>
                <tr>
                    <td>Considered Response Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpConsideredResponse" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" />
                    </td>
                    <td>Considered Resolution Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpConsideredResolution" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td>Breached Reason</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtBreachedReason1" runat="server" Width="250px" TextMode="MultiLine" /></td>
                    <td>Breached Reason</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtBreachedReason2" runat="server" Width="250px" TextMode="MultiLine" /></td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="7">
            <table>
                <tr>
                    <td>Resolution Category</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Follow-Up Required</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpFollowUpRequired" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Follow-Up Action</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtFollowUpAction" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" /></td>
                </tr>
                <tr>
                    <td>Resolution Item</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionItem" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Follow-Up Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtFollowUpDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
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
                    <td>Resolution Method</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionMethod" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="8">
            <table>
                <tr>
                    <td>Job Related Expenses</td>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAddExp" runat="server" Text="Add" OnClick="btnAddExp_Click" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Expense Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpExpenseType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td>Currency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpCurrency" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpQuantity" Width="250px" Value="1" EmptyMessage="Enter units count" MinValue="1" ClientEvents-OnValueChanged="CalculateTotalCost" ShowSpinButtons="true" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                    <td>Unit Price</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpPrice" Width="250px" Value="1" EmptyMessage="Enter unit price" Type="Currency" MinValue="0" ClientEvents-OnValueChanged="CalculateTotalCost"></telerik:RadNumericTextBox></td>
                </tr>
                <tr>
                    <td>Expense Amount</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpenseAmountx" Width="250px" Value="1" Type="Currency" MinValue="0" ReadOnly="true"></telerik:RadNumericTextBox></td>
                    <td>Expense Notes</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtExpenseNotes" runat="server" Width="250px" /></td>
                </tr>
            </table>
            <telerik:RadGrid ID="GridView8" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtonGV41" runat="server" CommandArgument='<%# Eval("Expenseid") %>'
                                    CommandName="Showx" OnCommand="useLinkButton_CommandGV4" Text='<%# Eval("Expenseid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="Quantity" HeaderText="Quantity"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnitPrice" HeaderText="Unit Price"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Expensevalue" HeaderText="Total Amount"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ExpenseType" HeaderText="Expense Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="currencyid" HeaderText="Currency"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddate" HeaderText="DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="remarks" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtonGV42" runat="server" CommandArgument='<%# Eval("Expenseid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV4" Text="Remove"></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="9">
            <telerik:RadGrid ID="GridView6" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="levelid" HeaderText="Level"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusfrom" HeaderText="Old Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="status" HeaderText="New Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="notes" HeaderText="notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="agentid" HeaderText="action by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="datetime" HeaderText="action date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="10">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="SR ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_Status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_LevelID" HeaderText="Level"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_AssignedTo" HeaderText="Assigned To"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="11">
            <telerik:RadGrid ID="GridView9" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="SR ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_Status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_LevelID" HeaderText="Level"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_AssignedTo" HeaderText="Assigned To"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalRemoteTimex" HeaderText="Total Remote Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalOnSiteTimex" HeaderText="Total Onsite Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TravelTimex" HeaderText="Travel Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalIncidentTimex" HeaderText="Total Incident Time"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="RelationshipType" HeaderText="Relationship Type"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="12">
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset>
                            <legend>Social Posts:</legend>
                            <table>
                                <tr>
                                    <td class="lablex">Post - Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="RadEditor1" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
                                            <CssFiles>
                                                <telerik:EditorCssFile Value="styles/radeditor.css" />
                                            </CssFiles>
                                            <Tools>
                                                <telerik:EditorToolGroup>
                                                    <telerik:EditorTool Name="FindAndReplace" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Bold" />
                                                    <telerik:EditorTool Name="Italic" />
                                                    <telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="ForeColor" />
                                                    <telerik:EditorTool Name="BackColor" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="FontName" />
                                                    <telerik:EditorTool Name="RealFontSize" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="JustifyLeft" />
                                                    <telerik:EditorTool Name="JustifyRight" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="LinkManager" />
                                                    <telerik:EditorTool Name="Links" />
                                                    <telerik:EditorTool Name="InsertLink" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                            <Content>         
                                            </Content>
                                        </telerik:RadEditor>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Post Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox5" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true">
                                            <Items>
                                                <telerik:RadComboBoxItem Value="PP" Text="Public Post" />
                                                <telerik:RadComboBoxItem Value="PM" Text="Private Message" />
                                                <telerik:RadComboBoxItem Value="CC" Text="Campaign Code" />
                                                <telerik:RadComboBoxItem Value="DC" Text="Document" />
                                                <telerik:RadComboBoxItem Value="LN" Text="Link" />
                                                <telerik:RadComboBoxItem Value="TM" Text="Template" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                    <td>Sub Post Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBox1" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true">
                                            <Items>
                                                <telerik:RadComboBoxItem Value="PP" Text="CODE05642956" />
                                                <telerik:RadComboBoxItem Value="PM" Text="CODE05647657" />
                                                <telerik:RadComboBoxItem Value="CC" Text="CODE05698689" />
                                                <telerik:RadComboBoxItem Value="DC" Text="CODE05945466" />
                                                <telerik:RadComboBoxItem Value="LN" Text="CODE05640980" />
                                                <telerik:RadComboBoxItem Value="TM" Text="CODE05642544" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>Action</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Post It!" OnClick="BtnIncInternal_Click" /></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="postit" HeaderText="Posts" HtmlEncode="False"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="posttype" HeaderText="Post Type"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="postby" HeaderText="Post By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="postdt" HeaderText="Post DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

        </telerik:RadPageView>
    </telerik:RadMultiPage>

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>            
            <telerik:AjaxSetting AjaxControlID="drpCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtOfficeNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNox" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <%--<telerik:AjaxUpdatedControl ControlID="txtCountry" />--%>
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="drpCustomerLocation" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetType" />
                    <telerik:AjaxUpdatedControl ControlID="drpContract" />
                    <telerik:AjaxUpdatedControl ControlID="txtProductName" />
                    <telerik:AjaxUpdatedControl ControlID="txtModel" />
                    <telerik:AjaxUpdatedControl ControlID="txtManufacturer" />
                    <telerik:AjaxUpdatedControl ControlID="txtAssetId" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerPO" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerOrderNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtServiceType" />
                    <telerik:AjaxUpdatedControl ControlID="txtManagedBY" />
                    <telerik:AjaxUpdatedControl ControlID="txtAccountPrime" />
                    <telerik:AjaxUpdatedControl ControlID="btnMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="lblMobileNo" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="txtAssetId">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCustomerLocation" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetType" />
                    <telerik:AjaxUpdatedControl ControlID="drpContract" />
                    <telerik:AjaxUpdatedControl ControlID="txtProductName" />
                    <telerik:AjaxUpdatedControl ControlID="txtModel" />
                    <telerik:AjaxUpdatedControl ControlID="txtManufacturer" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICName" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICContactNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <%--<telerik:AjaxUpdatedControl ControlID="txtCountry" />--%>
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="txtSupportRemarks" />

                    <telerik:AjaxUpdatedControl ControlID="drpSLACode" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                    <telerik:AjaxUpdatedControl ControlID="txtResponseSLA" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResponseDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtResolutionSLA" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate1" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerPO" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerOrderNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractStartDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtVendorRMA" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractEndDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtServiceType" />
                    <telerik:AjaxUpdatedControl ControlID="txtManagedBY" />
                    <telerik:AjaxUpdatedControl ControlID="txtAccountPrime" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpCustomerLocation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtAssetId" />
                    <telerik:AjaxUpdatedControl ControlID="drpContract" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssetType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtAssetId" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssignLevel">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAssignGroup" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssignIndividual" />
                    <telerik:AjaxUpdatedControl ControlID="drpIncidentStatus" />
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssignGroup">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAssignIndividual" />
                    <telerik:AjaxUpdatedControl ControlID="drpIncidentStatus" />
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssignIndividual">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpIncidentStatus" />
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpOperationalTier1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpOperationalTier2" />
                    <telerik:AjaxUpdatedControl ControlID="drpOperationalTier3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpOperationalTier2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpOperationalTier3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpIncidentStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpUrgency">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpImpact">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpContract">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtAssetId" />
                    <telerik:AjaxUpdatedControl ControlID="drpSLACode" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                    <telerik:AjaxUpdatedControl ControlID="txtResponseSLA" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResponseDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtResolutionSLA" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate1" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerPO" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtCustomerOrderNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractStartDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtVendorRMA" />
                    <telerik:AjaxUpdatedControl ControlID="txtContractEndDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtServiceType" />
                    <telerik:AjaxUpdatedControl ControlID="txtManagedBY" />
                    <telerik:AjaxUpdatedControl ControlID="txtAccountPrime" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="BtnIncExternal">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCaseLogCategory" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogMACDx" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogsx" />
                    <telerik:AjaxUpdatedControl ControlID="GridView3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="BtnIncInternal">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCaseLogCategory" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogMACDx" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogsx" />
                    <telerik:AjaxUpdatedControl ControlID="GridView3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnInternalMACD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCaseLogTypeMACD" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogMACDx" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogsx" />
                    <telerik:AjaxUpdatedControl ControlID="GridView7" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnExternalMACD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCaseLogTypeMACD" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogMACDx" />
                    <telerik:AjaxUpdatedControl ControlID="txtCaseLogsx" />
                    <telerik:AjaxUpdatedControl ControlID="GridView7" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddExp">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GridView8" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            function CalculateTotalCost() {
                var UnitPrice = $find('<%=txtExpPrice.ClientID %>');
                var UnitQty = $find('<%=txtExpQuantity.ClientID  %>');
                var ExpenseAmount = $find('<%=txtExpenseAmountx.ClientID  %>');
                ExpenseAmount.set_value(UnitPrice.get_value() * UnitQty.get_value());
            }
        </script>
    </telerik:RadCodeBlock>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
