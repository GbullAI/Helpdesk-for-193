<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk2.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk2" ValidateRequest="false" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css?version=2" rel="stylesheet" />
    <link href="styles/base.css?version=2" rel="stylesheet" />
    <script type='text/javascript'>
        function PT_ViewCustomerPage(TargetURL) {
            var myw = window.open(TargetURL, "", "width=999, height=999, status=yes, scrollbars=yes, resizable=yes");
        }

         function showPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
    </script>
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

         .GreenButton
        {
            background-color: #4CAF50 !important;
            color: white !important;
        }

         .BlueButton
        {
            background-color: #008CBA !important;
            color: white !important;
        }
         .RedButton
        {
            background-color: #f44336 !important;
            color: white !important;
        }
         .GreyButton
        {
            background-color: #808080 !important;
            color: white !important;
        }
         .PurpleButton
        {
            background-color: #6A0DAD !important;
            color: white !important;
        }
         .YellowButton
        {
            background-color: #ff9800 !important;
            color: white !important;
        }
         .BrownButton
        {
            background-color: brown !important;
            color: white !important;
        }
        /*  .BlackButton
        {
            background-color: #555555 !important;
            color: white !important;
        }
         .TealButton
        {
            background-color: teal !important;
            color: white !important;
        }
         .CyanButton
        {
            background-color: darkcyan !important;
            color: white !important;
        }
         .YellowButton2
        {
            background-color: darkorange !important;
            color: white !important;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnNew" runat="server" Text="New" CssClass="BlueButton" OnClick="btnNew_Click" Visible="false"></telerik:RadButton>
        <telerik:RadButton ID="btnCopy" runat="server" Text="Create Child Ticket" CssClass="BlueButton" Enabled="false" OnClick="btnCopy_Click"></telerik:RadButton>
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" CssClass="GreenButton" Enabled="false" OnClick="btnSave_Click"></telerik:RadButton>
        <telerik:RadButton ID="btnClear" runat="server" Text="Clear" CssClass="GreyButton" Enabled="false" OnClientClicking="showPrompt" OnClick="btnClear_Click"></telerik:RadButton>
        <telerik:RadButton ID="RadButton33" runat="server" Text="Service Desk Console" CssClass="BrownButton" OnClick="RadButton33_Click" Width="160px"></telerik:RadButton>
        <telerik:RadButton ID="btnPrint" runat="server" Text="Print" CssClass="PurpleButton" Enabled="false" OnClick="btnPrint_Click"></telerik:RadButton>
        <telerik:RadButton ID="btnEdit" runat="server" Text="Edit" CssClass="YellowButton" OnClick="btnEdit_Click" Visible="false" />

    </div>
    <div>
        <telerik:RadLabel ID="lblMx" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9" ForeColor="Red"></telerik:RadLabel>
       <telerik:RadLabel ID="lblSLAOverdue" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9" ForeColor="Red" Visible="false"></telerik:RadLabel>
        <telerik:RadTextBox ID="txtResponseSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtResolutionSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblSLACode" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblSLATrackInfoId" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtMainSRID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtStatusID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtAssignedTo" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblIsSlaSixtyMinEmailSend" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblIsSlaThirtyMinEmailsend" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblIsSlaFifteenMinEmailSend" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="lblIsSlaTenMinEmailSend" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceCustomer" ProviderName="MySql.Data.MySqlClient" />
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <table>
                        <tr id="rowQuickMenu" runat="server">
                            <td colspan="1">Quick Menu
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpQuickMenu" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="true" OnSelectedIndexChanged="drpQuickMenu_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Incoming Call No</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtIncomingPhoneNo" runat="server" Width="250px" ReadOnly="True" Enabled="False"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr runat="server" id="trAssetLocation">
                            <td>Asset Location
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetCategory_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td>Branch ID <span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetSite" MaxHeight="200" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetSite_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Equipment ID
                                <!--<span class="auto-style4">*</span>-->
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetEquipment" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetEquipment_SelectedIndexChanged1"></telerik:RadComboBox>
                                &nbsp;
                                <telerik:RadButton ID="ViewAsset" runat="server" Text="View Asset" OnClick="ViewAsset_Click" Width="150px"></telerik:RadButton>
                            </td>
                        </tr>
                        <tr>
                            <td>Asset ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtAssetId" runat="server" Width="250px" Visible="true" ReadOnly="True"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <%--<tr>
                            <td>Country<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCountryAccess_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>--%>
                        <tr>
                            <td>Service Request ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSRID" runat="server" Width="250px" AutoPostBack="True" ReadOnly="True" Enabled="false"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Customer Name <span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpCustomer1" MaxHeight="200" runat="server" Width="250px" Filter="Contains" AutoPostBack="true" OnSelectedIndexChanged="drpCustomer1_SelectedIndexChanged"></telerik:RadComboBox>
                                <%--<telerik:RadComboBox ID="drpCustomer" runat="server" RenderMode="Lightweight" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="true" OnSelectedIndexChanged="drpCustomer_SelectedIndexChanged"></telerik:RadComboBox>--%>
                                <%--<telerik:RadComboBox ID="drpCustomer" runat="server" RenderMode="Lightweight" Width="250px" AutoPostBack="true" Filter="Contains" MarkFirstMatch="true"
                                    EmptyMessage="0-Please Select"
                                    DataSourceID="SqlDataSourceCustomer"
                                    DataTextField="customername"
                                    DataValueField="customerid"
                                    EnableAutomaticLoadOnDemand="true"
                                    ShowMoreResultsBox="true"
                                    EnableVirtualScrolling="true"
                                    ItemsPerRequest="10" OnSelectedIndexChanged="drpCustomer_SelectedIndexChanged1">
                                </telerik:RadComboBox>--%>
                                <telerik:RadButton ID="btnAddNewCustomer" runat="server" Text="" OnClick="btnAddNewCustomer_click" ToolTip="Click here to add new customer" Width="30px">
                                    <Icon PrimaryIconUrl="images/addicon.png" />
                                </telerik:RadButton>
                                <telerik:RadButton ID="btnRefreshCustomer" runat="server" Text="" OnClick="btnRefreshCustomer_click" ToolTip="Click here to reload customer list" Width="30px">
                                    <Icon PrimaryIconUrl="images/refresh.png" />
                                </telerik:RadButton>
                            </td>
                        </tr>
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
                                <telerik:RadComboBox ID="drpRequestType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpRequestType_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Request Type</td>	
                            <td>:</td>	
                            <td>	
                                <telerik:RadComboBox ID="drpRequestTypeSub" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>	
                            </td>
                        </tr>
                        <tr>
                            <td>Status<span class="auto-style4">*</span></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpIncidentStatus" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpIncidentStatus_SelectedIndexChanged1" AutoPostBack="True"></telerik:RadComboBox>
                                <telerik:RadCheckBox ID="cbxAddtoknowledgebase" runat="server" Checked="false" Text="Add to Knowledge Base" Visible="false" Width="250px"></telerik:RadCheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Status Reason</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpStatusReason" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                                &nbsp;
                                
                            </td>
                        </tr>

                        <tr>
                            <td>Appointment Datetime</td>
                            <td>:</td>
                            <td>
                                <telerik:RadDateTimePicker ID="txtAppointment" runat="server" Width="250px" Visible="false">
                                    <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                    </DateInput>
                                    <TimeView runat="server" TimeFormat="HH:mm:ss"></TimeView>
                                </telerik:RadDateTimePicker>

                                <telerik:RadTextBox runat="server" ID="txtAppointment1" InputType="DateTimeLocal" Width="250px"></telerik:RadTextBox>	
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
                                <telerik:RadComboBox ID="drpChannel" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" ExpandDirection="Down" EnableScreenBoundaryDetection="false" Enabled="true"></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Log Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtLogDateTime" runat="server" Width="250px" InputType="DateTime" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtLogDateTime" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr>
                            <td>Target Resolution Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtTargetResolutionDate1" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr>
                            <td>Target Response Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtTargetResponseDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Schedule Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtSLANextScheduleDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                         <tr hidden="hidden">
                            <td>Sixty Min Email Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtSlaSixtyMinEmailDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Thirty Min Email Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtSlaThirtyMinEmailDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                         <tr hidden="hidden">
                            <td>Fifteen Min Email Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtSlaFifteenMinEmailDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Ten Min Email Date</td>
                            <td>:</td>
                            <td>
                                <%--<telerik:RadTextBox ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True"></telerik:RadTextBox>--%>
                                <telerik:RadDateInput ID="txtSlaTenMinEmailDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
                            </td>
                        </tr>

                        <tr>
                            <td>Severity Level<asp:Image runat="server" ID="txtSLToolTip" AlternateText="Please select Severity Level to know more about each level description." ImageUrl="~/images/infoico64.png" Height="15" Width="15" ToolTip="Please select Severity Level to know more about each level description." />
                                <%--<img src="images/infoico64.png"  runat="server" alt="Select Severity Level" title="Select Severity Level" height="15" width="15" />--%>
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpSLACode" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpSLACode_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Branch Status</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSiteStatus" runat="server" Width="250px" Enabled="False"></telerik:RadTextBox></td>
                        </tr>

                        <tr hidden="hidden">
                            <td>Monitored</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtMonitored" runat="server" Width="250px" Enabled="False"></telerik:RadTextBox></td>
                        </tr>

                        <tr>
                            <td>Urgency<span class="auto-style4">*</span><asp:Image runat="server" ID="txtUrgencyToolTip" AlternateText="Please select Urgency to know more about each urgency description." ImageUrl="~/images/infoico64.png" Height="15" Width="15" ToolTip="Please select Urgency to know more about each urgency description" /></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpUrgency" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpUrgency_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Impact<span class="auto-style4">*</span>&nbsp<%--<img src="images/infoico64.png" alt="Info" title="Select impact of the incident" height="15" width="15" />--%>
                                <asp:Image runat="server" ID="txtImpactToolTip" AlternateText="Please select Impact to know more about each impact description." ImageUrl="~/images/infoico64.png" Height="15" Width="15" ToolTip="Please select impact to know more about each impact description." /></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpImpact" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpImpact_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Priority
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpPriority" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" Enabled="False"></telerik:RadComboBox>
                            </td>
                        </tr>

                         <tr hidden="hidden">
                            <td>SLA Track Type</td>	
                            <td>:</td>	
                            <td>	
                                <telerik:RadComboBox ID="drpSLATrackType" runat="server" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpSLATrackType_SelectedIndexChanged"></telerik:RadComboBox>	
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
                                <telerik:RadTextBox ID="txtSummary" runat="server" Width="80%"></telerik:RadTextBox></td>
                        </tr>
                        <tr>
                            <td class="lablex">Current Update</td>
                            <td class="auto-style1">:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtCurrentUpdate" runat="server" Width="80%"></telerik:RadTextBox></td>
                        </tr>
                        <tr>
                            <td class="lablex">Descriptions<span class="auto-style4">*</span></td>
                            <td class="auto-style1">:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtIncidentDetails" runat="server" Width="80%" TextMode="MultiLine"></telerik:RadTextBox>

                                <%--                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtIncidentDetail" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
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
                                        </telerik:RadEditor>--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Customer Informations" Selected="True">
                <TabTemplate>
                    Customer Informations
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Assigment">
                <TabTemplate>
                    Assigment
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Incident Details">
                <TabTemplate>
                    Incident Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="MACD Details">
                <TabTemplate>
                    MACD Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="Classifications">
                <TabTemplate>
                    Classifications
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="5" runat="server" Text="Contract Details" Visible="false">
                <TabTemplate>
                    Contract Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="6" runat="server" Text="Severity Level Details">
                <TabTemplate>
                    Severity Level Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="7" runat="server" Text="Resolution Details">
                <TabTemplate>
                    Resolution Details
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="8" runat="server" Text="Miscellaneous">
                <TabTemplate>
                    Miscellaneous
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="9" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="10" runat="server" Text="Request History">
                <TabTemplate>
                    Request History
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="11" runat="server" Text="Related Request">
                <TabTemplate>
                    Related Request
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="12" runat="server" Text="Related Request">
                <TabTemplate>
                    Social Responses
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="13" runat="server" Text="Email">
                <TabTemplate>
                    Email
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="14" runat="server" Text="Email">
                <TabTemplate>
                    Escalation Tracking
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="15" runat="server" Text="Severity Level Audit Trails" Visible="false">
                <TabTemplate>
                    Severity Level Audit Trails
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="16" runat="server" Text="Audit Trials" Visible="false">
                <TabTemplate>
                    Audit Trails
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="17" runat="server" Text="Voice Logger">
                <TabTemplate>
                    Voice Logger
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <table>
                <tr>
                    <td colspan="6">
                        <fieldset>
                            <legend>Contact Details</legend>
                            <table>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICName" runat="server" Width="250px"></telerik:RadTextBox></td>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICEmail" runat="server" InputType="Email" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtAddress" runat="server" Width="75%" Enabled="false"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>City</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCity" runat="server" Width="250px" Enabled="false" ReadOnly="True"></telerik:RadTextBox></td>
                                    <td>Post Code</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPostCode" runat="server" Width="250px" Enabled="false" ReadOnly="True"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>State</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtState" runat="server" Enabled="false"  Width="250px">
                                        </telerik:RadTextBox>
                                    </td>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtMobileNo" runat="server" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true"  Width="250px" Enabled="false" ReadOnly="True"></telerik:RadTextBox>
                                        <asp:ImageButton ID="btnMobileNo" runat="server" ImageUrl="images/phone_answer_icon.png" OnClick="btnMobileNo_Click" Visible="false" />
                                        <asp:Label ID="lblMobileNo" runat="server" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Office No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtOfficeNo" runat="server" Width="250px" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true"  Enabled="false" ReadOnly="True"></telerik:RadTextBox></td>

                                    <td>Fax No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtFaxNox" runat="server" Width="250px"  InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true"  Enabled="false" ReadOnly="True"></telerik:RadTextBox></td>
                                </tr>
                                
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <fieldset>
                            <legend>Reported By</legend>
                            <table>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByName" runat="server" Width="250px"></telerik:RadTextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByEmail" InputType="Email" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Office No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtPICContactNo" runat="server" AutoPostBack="true" InputType="Number" onkeydown="javascript: return event.keyCode == 69 ? false : true"  Width="250px"></telerik:RadTextBox></td>
                                    <%--<asp:RegularExpressionValidator Display="Dynamic" ID="MaskedTextBoxRegularExpressionValidator" runat="server" ErrorMessage="Numbers only" ControlToValidate="txtPICContactNo" ValidationExpression="^[1-9]\d"></asp:RegularExpressionValidator>--%>
                                </tr>
                                <tr runat="server" visible="false">
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtReportByContactNo" runat="server" Width="250px"></telerik:RadTextBox></td>
                                </tr>
                                
                                
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <fieldset>
                            <legend>Support 



                            </legend>
                            <telerik:RadTextBox ID="txtSupportRemarks" runat="server" Width="80%" TextMode="MultiLine" Enabled="false" ReadOnly="true"></telerik:RadTextBox>
                        </fieldset>
                    </td>
                </tr>
            </table>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
            <table>
                <tr>
                    <td>
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar4" Width="100%" Height="200px" BackColor="#eeeeee">
                            <Items>
                                <telerik:RadPanelItem Text="Assignment" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr hidden="hidden">
                                                <td>Department<span class="auto-style4">*</span></td>
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
                        <telerik:RadPanelBar RenderMode="Lightweight" runat="server" ID="RadPanelBar3" Width="100%" Height="200px" BackColor="#eeeeee">
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
                                                    <telerik:RadComboBox ID="drpEscalateToVendor" runat="server" Width="250px" Filter="Contains" AutoPostBack="true" OnSelectedIndexChanged="drpEscalateToVendor_SelectedIndexChanged" MarkFirstMatch="true"></telerik:RadComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Vendor Accepted</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadComboBox ID="drpVendorAccepted" runat="server" Width="250px" Filter="Contains" AutoPostBack="true" MarkFirstMatch="true"></telerik:RadComboBox>
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
                                                    <telerik:RadTextBox ID="txtTaskID" runat="server" Width="200px" Enabled="false" ReadOnly="True"></telerik:RadTextBox>
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
                                                    <%--<telerik:RadTextBox ID="txtTaskCreatedDate" runat="server" Width="200px" ReadOnly="True"></telerik:RadTextBox>--%>
                                                    <telerik:RadDateInput ID="txtTaskCreatedDate" runat="server" Width="200px"  Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
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
                                                    <telerik:RadTextBox ID="txtTaskCreatedBy" runat="server" Width="200px"  Enabled="false" ReadOnly="True"></telerik:RadTextBox>
                                                </td>
                                                <td>Actual Start</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="txtTaskActualStart" runat="server" Width="200px">
                                                        <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                                        </DateInput>
                                                    </telerik:RadDateTimePicker>
                                                </td>
                                                <td>Actual Finish</td>
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
                                                    <telerik:RadButton ID="btnTaskSave" runat="server" Text="Save Task" Enabled="true" OnClick="btnTaskSave_Click"></telerik:RadButton>
                                                    <telerik:RadButton ID="btnTaskClear" runat="server" Text="Clear" Enabled="true" OnClick="btnTaskClear_Click"></telerik:RadButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="9">
                                                    <telerik:RadGrid ID="RadGridTask" runat="server" AllowSorting="true" OnSortCommand="RadGridTask_SortCommand" Visible="true" AutoGenerateColumns="false">
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
                                                                <telerik:GridBoundColumn DataField="actualend" HeaderText="Actual Finish DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
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
                                <telerik:RadPanelItem Text="Created By" Expanded="True" BackColor="#eeeeee">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td>Group</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtOwnerGroup" runat="server" Width="250px" Enabled="false" OnTextChanged="txtOwnerGroup_TextChanged" ReadOnly="True"></telerik:RadTextBox></td>
                                            </tr>
                                            <tr>
                                                <td>User</td>
                                                <td>:</td>
                                                <td>
                                                    <telerik:RadTextBox ID="txtOwnerBy" runat="server" Width="250px" Enabled="false" ReadOnly="True"></telerik:RadTextBox></td>
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
        <telerik:RadPageView runat="server" TabIndex="2">
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
                                    <td>Knowledgebase
                                    </td>
                                    <td>:                        
                                    </td>
                                    <td colspan="4">
                                        <telerik:RadComboBox ID="drpChecklist" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpChecklist_SelectedIndexChanged" ExpandDirection="Down" EnableScreenBoundaryDetection="false"></telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lablex">Case Log - Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtCaseLogsx" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
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
                                        <telerik:RadTextBox ID="txtCaselogRemarksText" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true" Visible="false" Enabled="false"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr hidden="hidden">
                                    <td class="lablex">Case Log - Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtCaseLogsxOLD" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
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
                                        <%--<telerik:RadTextBox ID="RadTextBox1" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true" Visible="false" Enabled="false"></telerik:RadTextBox>--%>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Case Log Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCaseLogType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" OnSelectedIndexChanged="drpCaseLogType_SelectedIndexChanged"></telerik:RadComboBox>
                                    </td>
                                    <td hidden="hidden">Case Log Category</td>
                                    <td hidden="hidden">:</td>
                                    <td hidden="hidden">
                                        <telerik:RadComboBox ID="drpCaseLogCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpCaseLogCategory_SelectedIndexChanged1"></telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Attachment</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
                                        <asp:FileUpload ID="FileUploadInc" runat="server" />
                                        <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="Upload" runat="server" accept="image/gif, image/jpeg" OnClick="btnUploadInc_Click" />
                                        <br />
                                        <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>

                                    </td>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Follow up date</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblFollowUp" runat="server" Visible="true"></asp:Label>
                                        <telerik:RadDateTimePicker RenderMode="Lightweight" ID="txtFollowUpDateTime" runat="server">
                                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                                            </DateInput>
                                        </telerik:RadDateTimePicker>
                                    </td>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="BtnIncExternal" runat="server" Text="Submit" OnClick="BtnIncExternal_Click" CssClass="GreenButton"/></td>
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
            <telerik:RadGrid ID="GridView3" runat="server" AllowSorting="true" OnSortCommand="GridView3_SortCommand" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                               <%-- <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>--%>
                                <a onclick="javascript:window.open('wf-viewcaselog.aspx?caselogid=<%#DataBinder.Eval(Container.DataItem,"rid")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=200, left=700, width=500 height=300');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "rid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="caselog" HeaderText="Case Log" HtmlEncode="False"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('upload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="caselogtype" HeaderText="Caselog Type"></telerik:GridBoundColumn>
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
                        <telerik:RadTextBox ID="txtChangeRequestorEmail" InputType="Email" runat="server" Width="250px" /></td>
                    <td>Change Approver Email</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtChangeApproverEmail" InputType="Email" runat="server" Width="250px" /></td>
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
                    <td>Actual Finish Date</td>
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

                                        <telerik:RadTextBox ID="txtCaseLogMACDxText" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true" Visible="false" Enabled="false"></telerik:RadTextBox>
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
            <telerik:RadGrid ID="GridView7" runat="server" AllowSorting="true" OnSortCommand="GridView7_SortCommand" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV7" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="caselog" HeaderText="Case Log" HtmlEncode="False"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('../upload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="caselogtype" HeaderText="Caselog Type"></telerik:GridBoundColumn>
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
                                        <telerik:RadComboBox ID="drpOperationalTier1" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier1_SelectedIndexChanged" ></telerik:RadComboBox>
                                        <telerik:RadComboBox ID="drpOperationalTier11" Visible="false" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier1_SelectedIndexChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 2</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpOperationalTier2" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier2_SelectedIndexChanged" ></telerik:RadComboBox>
                                        <telerik:RadComboBox ID="drpOperationalTier22" Visible="false"  runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpOperationalTier2_SelectedIndexChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tier 3</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpOperationalTier3" runat="server"  Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True"></telerik:RadComboBox>
                                        <telerik:RadComboBox ID="drpOperationalTier33" Visible="false"  runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3" hidden="hidden">
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
                <tr hidden="hidden">
                    <td>Product Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtProductName" runat="server" Width="250px" /></td>
                    <td>Model/Version</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtModel" runat="server" Width="250px" /></td>
                </tr>
                <tr hidden="hidden">
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
        <telerik:RadPageView runat="server" TabIndex="5" Visible="false">
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
                                        <telerik:RadDateInput ID="txtContractStartDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>Vendor RMA #</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtVendorRMA" runat="server" Width="250px" /></td>
                                </tr>
                                <tr>
                                    <td>Contract End Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtContractEndDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtContractEndDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
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
                                        <telerik:RadDateInput ID="txtB2BStartDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                                    <td>B 2 B Contract Email</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtB2BContractEmail" InputType="Email" runat="server" Width="250px" ReadOnly="true" /></td>
                                </tr>
                                <tr>
                                    <td>B 2 B End Date</td>
                                    <td>:</td>
                                    <td>
                                        <%--<telerik:RadTextBox ID="txtB2BEndDate" runat="server" Width="250px" ReadOnly="true" /></td>--%>
                                        <telerik:RadDateInput ID="txtB2BEndDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
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
                <tr hidden="hidden">
                    <td>Total Incident Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtTotalIncidentTime" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Submitter</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSubmitter" runat="server" Width="250px" ReadOnly="true" Enabled="false" /></td>
                    <td>Last Modified By</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtLastModifiedBy" runat="server" Width="250px" ReadOnly="true" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Submit Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtSubmitDate" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                        <telerik:RadDateInput ID="txtSubmitDate" runat="server" Width="250px" Enabled="false" ReadOnly="True" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                    <td>Last Modified On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtLastModifiedOn" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                        <telerik:RadDateInput ID="txtLastModifiedOn" runat="server" Width="250px" Enabled="false" ReadOnly="True" DateFormat="dd/MM/yyyy HH:mm:ss" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                </tr>
                <tr>
                    <td>Reported On<span class="auto-style4">*</span></td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtReportedOnx" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <%--<td>Actual Incident Occur Date<span class="auto-style4">*</span></td>--%>
                    <td>Actual Incident Occur Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtActualIncidentOccurDatex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Target Acknowledgement Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtTargetAcknowledgementDate" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                        <%--<telerik:RadDateInput ID="txtTargetAcknowledgementDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput>--%>
                        <telerik:RadDateTimePicker ID="txtTargetAcknowledgementDate" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Acknowledged On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtAcknowledgedOn" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                       <%-- <telerik:RadDateInput ID="txtAcknowledgedOn" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput>--%>
                        <telerik:RadDateTimePicker ID="txtAcknowledgedOn" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Target Resolution Date</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtTargetResolutionDate" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                        <%--<telerik:RadDateInput ID="txtTargetResolutionDate" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput>--%>
                        <telerik:RadDateTimePicker ID="txtTargetResolutionDate" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Solved On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtResolvedOn" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                        <%--<telerik:RadDateInput ID="txtResolvedOn" runat="server" Width="250px" ReadOnly="True" DisplayDateFormat="dd/MM/yy" Enabled="false"></telerik:RadDateInput>--%>
                        <telerik:RadDateTimePicker ID="txtResolvedOn" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                   
                    <td>Closed On</td>
                    <td>:</td>
                    <td>
                        <%--<telerik:RadTextBox ID="txtClosedOn" runat="server" Width="250px" ReadOnly="true" Enabled="false"/></td>--%>
                       <%-- <telerik:RadDateInput ID="txtClosedOn" runat="server" Width="250px" ReadOnly="True" Enabled="false" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>--%>
                         <%--<telerik:RadDateInput ID="txtClosedOn" runat="server" Width="250px" ReadOnly="True" Enabled="false" DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>--%>

                        <telerik:RadDateTimePicker ID="txtClosedOn" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss tt"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteArrivalTimex" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy HH:mm:ss tt">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Travel Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadMaskedTextBox ID="txtTravelTimex" Mask="####:##" runat="server" Width="250px" InputType="Time"></telerik:RadMaskedTextBox>
                    </td>
                </tr>
                <tr>
                    <td hidden="hidden">Onsite Completion Time</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <telerik:RadDateTimePicker ID="txtOnsiteResolutionTimex" runat="server" Width="250px">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
                    <td>Severity Level Exempt<span class="auto-style4">*</span></td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpSLAExempt" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Repair Turnaround Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtRepairTurnaroundTimex" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy HH:mm:ss">
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
                <tr hidden="hidden">
                    <td>Actual Response Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtActualResponseCompliance" runat="server" ReadOnly="true" Enabled="false" Width="250px" /></td>
                    <td>Actual Resolution Compliance</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtActualResolutionCompliance" runat="server" ReadOnly="true" Enabled="false" Width="250px" /></td>
                </tr>
                <tr hidden="hidden">
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
                <tr hidden="hidden">
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
                        <telerik:RadComboBox ID="drpFollowUpRequired" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"  AutoPostBack="true" OnSelectedIndexChanged="drpFollowUpRequired_SelectedIndexChanged"/>
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
                    <td>Resolution Method</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionMethod" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                     <td>Resolution Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtRequiredResolutionDatex" runat="server" Width="250px" Enabled="false">
                            <DateInput DateFormat="dd/MM/yyyy" runat="server" DisplayDateFormat="dd/MM/yy"></DateInput>
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
                                    <td>Add to Knowledgebase</td>
                                  <td>:</td>	
                                    <td><telerik:RadCheckBox ID="cbxAddKnowledgebase" OnClick="cbxAddKnowledgebase_Click" runat="server" Checked="false"></telerik:RadCheckBox></td>	
                                    <td>&nbsp;</td>	
                                    <td>&nbsp;</td>	
                                    <td>&nbsp;</td>	
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
                <tr runat="server" id="QuantityID">
                    <td>Quantity</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpQuantity" Width="250px" Value="1" EmptyMessage="Enter units count" MinValue="1" ClientEvents-OnValueChanged="CalculateTotalCost" ShowSpinButtons="true" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                    <td>Unit Price</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpPrice" Width="250px" Value="1" EmptyMessage="Enter unit price" Type="Currency" MinValue="0" ClientEvents-OnValueChanged="CalculateTotalCost"></telerik:RadNumericTextBox></td>
                </tr>
                <tr runat="server" id="AmountID">
                    <td>Expense Amount</td>
                    <td>:</td>
                    <td>
                        <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtExpenseAmountx" Width="250px" Value="1" Type="Currency" MinValue="0" ReadOnly="true"></telerik:RadNumericTextBox></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>

                    <td>Expense Notes</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtExpenseNotes" runat="server" Width="250px" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <telerik:RadGrid ID="GridView8" AllowSorting="true" OnSortCommand="GridView8_SortCommand" runat="server" Visible="true" AutoGenerateColumns="false" OnPreRender="GridView8_PreRender">
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
            <div runat="server" id="divAuditTrails" visible="false">
            </div>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server" OnSortCommand="GridViewAuditTrail_SortCommand" AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="intI" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="notes" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="agentid" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="datetime" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="10">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" OnDetailTableDataBind="RadGridView_DetailTableDataBind" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" DataKeyNames="inc_inclidentid" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">

                    <DetailTables>
                        <telerik:GridTableView DataKeyNames="inc_inclidentid" Name="IncidentID" Width="100%">
                            <Columns>
                                <telerik:GridTemplateColumn HeaderText="Child ID" UniqueName="LinkID">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                            CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_status" HeaderText="Status"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_assignedto" HeaderText="AssignedTo"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="inc_mainincidentid" HeaderText="Parent Ticket ID" ItemStyle-ForeColor="Red"></telerik:GridBoundColumn>
                            </Columns>
                        </telerik:GridTableView>
                    </DetailTables>
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="SR ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("inc_inclidentid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("inc_inclidentid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="SR ID">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-helpdesk2.aspx?inclidentid=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>&show=<%#DataBinder.Eval(Container.DataItem,"inc_inclidentid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "inc_inclidentid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="inc_reportdatetime" HeaderText="Log DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_duedatetime" HeaderText="Due DateTime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_Status" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_customerid" HeaderText="Customer"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_LevelID" HeaderText="Level"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inc_AssignedTo" HeaderText="Assigned To"></telerik:GridBoundColumn>
                        
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="11">
            <telerik:RadGrid ID="GridView9" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView9_SortCommand" AutoGenerateColumns="false">
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
                                        <telerik:RadTextBox ID="RadEditor1Text" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true" Visible="false" Enabled="false"></telerik:RadTextBox>

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
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="false">
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
        <telerik:RadPageView runat="server" TabIndex="12">
            <telerik:RadGrid ID="RadGridEmail" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="RadGridEmail_SortCommand" MasterTableView-PageSize="99" OnItemCommand="RadGridEmail_ItemCommand">
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">
                    <Selecting AllowRowSelect="true" />
                </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("emailid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandEmail" Text='<%# Eval("emailid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailfrom" HeaderText="Email From"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailto" HeaderText="Email To"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="receiveddate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubject" HeaderText="Subject"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attcount" HeaderText="Attachments"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailtype" HeaderText="Type"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            <table>
                <tr>
                    <td>Email ID</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtMessageID" runat="server" ReadOnly="true" InputType="Email" Width="250px">
                        </telerik:RadTextBox><asp:Label ID="txtMessageType" runat="server" Visible="false"></asp:Label>
                    </td>
                    <td>Received Datetime</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtReceived" runat="server" Width="250px" ReadOnly="true"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>From</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtFrom" runat="server" Width="75%" ReadOnly="true"></telerik:RadTextBox>
                        <%-- <telerik:RadButton ID="btnNX" runat="server" Text=">" Skin="Telerik" Enabled="true" Width="11px" OnClick="btnNX_Click"></telerik:RadButton>--%>
                    </td>
                </tr>
                <tr>
                    <td>To</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtTo" runat="server" Width="75%" ReadOnly="true"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email CC</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtCC" runat="server" Width="75%" ReadOnly="true"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email BCC</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtBCC" runat="server" Width="75%" ReadOnly="true"></telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtSubject" runat="server" Width="75%" ReadOnly="true"></telerik:RadTextBox>
                    </td>
                </tr>

                <tr>
                    <td>Body Message</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtBodyHtml" NewLineMode="Br" Width="80%" Height="500px" CssClass="styles/radeditor.css" EditModes="Preview">
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
                        <telerik:RadTextBox ID="txtBodyHtmlText" runat="server" Width="80%" TextMode="MultiLine" ReadOnly="true" Visible="false" Enabled="false"></telerik:RadTextBox>

                    </td>
                </tr>
                <tr>
                    <td>Attachment</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadGrid ID="RadGridAttc" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridAttc_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="99" Width="75%">
                            <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                            <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="attid" HeaderText="ID"></telerik:GridBoundColumn>
                                    <telerik:GridTemplateColumn HeaderText="File">
                                        <ItemTemplate>
                                            <a onclick="javascript:window.open('upload/attach/<%#DataBinder.Eval(Container.DataItem,"attfilename")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "attfilename")%></a>
                                        </ItemTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn HeaderText="Remove">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("attid") %>'
                                                CommandName="Show" OnCommand="useLinkButton_Command" Text="X"></asp:LinkButton>
                                        </ItemTemplate>
                                    </telerik:GridTemplateColumn>
                                </Columns>
                                <PagerStyle PageSizeControlType="None" />
                            </MasterTableView>
                        </telerik:RadGrid>
                        <asp:FileUpload ID="FileUpload1" runat="server" Visible="false" /><asp:Button ID="btnUpload" Text="Click to Upload" runat="server" OnClick="UploadMultipleFiles" Visible="false" /><asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>:</td>
                    <td></td>
                    <td>
                        <telerik:RadButton ID="btnNewEmail" runat="server" Text="New Email" Skin="Telerik" OnClick="btnNewEmail_Click"></telerik:RadButton>
                        <telerik:RadButton ID="btnReplyEmail" runat="server" Text="Reply" Skin="Telerik" OnClick="btnReplyEmail_Click" Enabled="false"></telerik:RadButton>
                        <telerik:RadButton ID="btnForwardEmail" runat="server" Text="Forward" Skin="Telerik" OnClick="btnForwardEmail_Click" Enabled="false"></telerik:RadButton>
                        <telerik:RadButton ID="btnUnConsign" runat="server" Text="Undo Consign" Skin="Telerik" OnClick="btnUnConsign_Click" Enabled="false"></telerik:RadButton>
                    </td>
                    <td>
                        <telerik:RadButton ID="btnSendEmail" runat="server" Text="Send" Skin="Telerik" Enabled="false" OnClick="btnSendEmail_Click"></telerik:RadButton>
                    </td>
                    <td></td>
                </tr>
            </table>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="14">
            <telerik:RadGrid ID="RadGridTracking" runat="server" OnSortCommand="RadGridTracking_SortCommand" AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="intI" HeaderText="Tracking ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="departmentdesc" HeaderText="Department"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="description" HeaderText="Description"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Primary"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="caselogremarks" HeaderText="Case Log Remarks"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="sladuration" HeaderText="Severity Level Tracking"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="15">
            <telerik:RadGrid ID="RadGridSlaTracking" runat="server" OnSortCommand="RadGridSlaTracking_SortCommand" AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="intI" HeaderText="Severity Level Tracking Id"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="inclidentid" HeaderText="Ticket ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="description" HeaderText="Description"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="duration" HeaderText="Duration"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Datetime" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="16">
            <telerik:RadGrid ID="GridView6" runat="server" OnSortCommand="GridView6_SortCommand" AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="intI" HeaderText="ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="levelid" HeaderText="Level"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusfrom" HeaderText="Old Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="status" HeaderText="New Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="notes" HeaderText="notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="agentid" HeaderText="action by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="datetime" HeaderText="action date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="17">
            <telerik:RadGrid ID="RadGridVoiceLogger" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanged="RadGrid3_PageIndexChanged" AllowSorting="true" OnSortCommand="RadGrid3_SortCommand">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px"  PageSize="99">
                    <Columns>
                        <telerik:GridBoundColumn DataField="vid" HeaderText="ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="calldatetime" HeaderText="Action Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="callno" HeaderText="Call No"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="agentid" HeaderText="AgentID"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Voice">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-voice.aspx?uid=<%#DataBinder.Eval(Container.DataItem,"uid")%>&show=<%#DataBinder.Eval(Container.DataItem,"uid")%>');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "uid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            </telerik:RadPageView>
    </telerik:RadMultiPage>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="drpCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtReportByName" />
                    <telerik:AjaxUpdatedControl ControlID="txtReportByEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtReportByContactNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICName" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICContactNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtOfficeNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNox" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="btnMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="lblMobileNo" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnRefreshCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCustomer" />
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
                    <telerik:AjaxUpdatedControl ControlID="cbxAddtoknowledgebase" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssignGroup">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAssignIndividual" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssignSecondary" />
                    <telerik:AjaxUpdatedControl ControlID="drpIncidentStatus" />
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                    <telerik:AjaxUpdatedControl ControlID="cbxAddtoknowledgebase" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssignIndividual">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpIncidentStatus" />
                    <telerik:AjaxUpdatedControl ControlID="drpStatusReason" />
                    <telerik:AjaxUpdatedControl ControlID="cbxAddtoknowledgebase" />
                    <telerik:AjaxUpdatedControl ControlID="txtSRID" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssetCategory">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAssetSite" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetEquipment" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpAssetSite">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpAssetEquipment" />
                    <telerik:AjaxUpdatedControl ControlID="drpCustomer1" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICName" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="txtMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtOfficeNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNox" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetCategory" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpQuickMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpCustomer1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="drpPriority" />--%>
                    <telerik:AjaxUpdatedControl ControlID="drpRequestType" />
                    <%--<telerik:AjaxUpdatedControl ControlID="drpAssetCategory" />--%>
                    <%--<telerik:AjaxUpdatedControl ControlID="drpChannel" />--%>
                    <telerik:AjaxUpdatedControl ControlID="drpAssetEquipment" />
                    <telerik:AjaxUpdatedControl ControlID="txtSummary" />
                    <telerik:AjaxUpdatedControl ControlID="txtIncidentDetails" />
                    <telerik:AjaxUpdatedControl ControlID="txtCurrentUpdate" />
                    <telerik:AjaxUpdatedControl ControlID="ViewAsset" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetCategory" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICName" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="txtMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtOfficeNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNox" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetSite" />
                    <telerik:AjaxUpdatedControl ControlID="drpSLACode" />
                    <telerik:AjaxUpdatedControl ControlID="drpImpact" />
                    <telerik:AjaxUpdatedControl ControlID="drpUrgency" />
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                    <telerik:AjaxUpdatedControl ControlID="drpRequestTypeSub" />
                    <telerik:AjaxUpdatedControl  ControlID="txtSLToolTip"/>
                    <telerik:AjaxUpdatedControl ControlID="txtUrgencyToolTip"/>
                    <telerik:AjaxUpdatedControl ControlID="txtImpactToolTip"/>
                    <telerik:AjaxUpdatedControl  ControlID="drpSLAExempt"/>
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
                    <telerik:AjaxUpdatedControl ControlID="cbxAddtoknowledgebase" />
                    <telerik:AjaxUpdatedControl ControlID="txtRequiredResolutionDatex" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpUrgency">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                    <telerik:AjaxUpdatedControl ControlID="txtUrgencyToolTip"/>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpEscalateToVendor">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpVendorAccepted" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpVendorAccepted">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpEscalateToVendor" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpImpact">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                     <telerik:AjaxUpdatedControl ControlID="txtImpactToolTip"/>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpSLACode">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate1" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResolutionDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtTargetResponseDate" />
                    <telerik:AjaxUpdatedControl ControlID="txtRequiredResolutionDatex" />
                    <telerik:AjaxUpdatedControl ControlID="drpUrgency" />
                    <telerik:AjaxUpdatedControl ControlID="drpImpact" />
                    <telerik:AjaxUpdatedControl ControlID="drpPriority" />
                    <telerik:AjaxUpdatedControl  ControlID="txtSLToolTip"/>
                    <telerik:AjaxUpdatedControl ControlID="txtUrgencyToolTip"/>
                    <telerik:AjaxUpdatedControl ControlID="txtImpactToolTip"/>
                    <telerik:AjaxUpdatedControl  ControlID="drpSLAExempt"/>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="drpCustomer1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtPICName" />
                    <telerik:AjaxUpdatedControl ControlID="txtPICEmail" />
                    <telerik:AjaxUpdatedControl ControlID="txtAddress" />
                    <telerik:AjaxUpdatedControl ControlID="txtCity" />
                    <telerik:AjaxUpdatedControl ControlID="txtPostCode" />
                    <telerik:AjaxUpdatedControl ControlID="txtState" />
                    <telerik:AjaxUpdatedControl ControlID="txtMobileNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtOfficeNo" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNox" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetSite" />
                    <telerik:AjaxUpdatedControl ControlID="drpAssetCategory" />
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
                    <telerik:AjaxUpdatedControl ControlID="drpCaseLogType"/>
                    <telerik:AjaxUpdatedControl ControlID="lblFileUploadInc"/>
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
    <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow1" runat="server" OnUnload="RadWindow1_Unload" DestroyOnClose="true" OnDisposed="RadWindow1_Unload"
        Height="555"
        Width="333">
    </telerik:RadWindow>
    <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow2" runat="server" OnUnload="RadWindow2_Unload" DestroyOnClose="true" OnDisposed="RadWindow2_Unload"
        Height="555"
        Width="333">
    </telerik:RadWindow>
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
