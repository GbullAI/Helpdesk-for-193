<%@ Page Language="C#" MasterPageFile="~/SiteMbl.Master" AutoEventWireup="true" CodeBehind="wf-helpdesk2-m.aspx.cs" Inherits="ServiceDesk3d.wf_helpdesk2_m"  ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Row">
        <div class="Column100">
            <telerik:RadTextBox ID="txtResponseSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="txtResolutionSLA" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="lblSLACode" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="txtMainSRID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="txtStatusID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="txtAssignedTo" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadTextBox ID="txtAssetID" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
            <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
        </div>
    </div>
    <div class="Row">
        <div class="Column33">
            <telerik:RadButton ID="btnHome" runat="server" Skin="Web20" Text="Home" Width="95%" OnClick="btnHome_Click"></telerik:RadButton>
        </div>
        <div class="Column33">
            <telerik:RadButton ID="btnBack" runat="server" Skin="Web20" Text="Hide" Width="95%" OnClick="btnBack_Click"></telerik:RadButton>
        </div>
        <div class="Column34">
            <telerik:RadButton ID="btnSave" runat="server" Skin="Web20" Text="Save" Width="95%" OnClick="btnSave_Click"></telerik:RadButton>
        </div>
    </div>
    <div class="Row">
        <div class="Column35">SR ID</div>
        <div class="Column5">:</div>
        <div class="Column60">
            <telerik:RadTextBox ID="txtSRID" runat="server" Width="100%" ReadOnly="True" Enabled="false"></telerik:RadTextBox>
        </div>
    </div>
    <div class="Row">
        <div class="Column35">Customer</div>
        <div class="Column5">:</div>
        <div class="Column60">
            <telerik:RadTextBox ID="txtCustomer" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
        </div>
    </div>
    <div id="divSR" runat="server" visible="true">
        <div class="Row">
            <div class="Column35">Location</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtLocation" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Contract #</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtContractNo" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Asset Type</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtAssetType" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Serial #</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtSerialNo" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Request Type</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtRequestType" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Status</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpIncidentStatus" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="drpIncidentStatus_SelectedIndexChanged"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Status Reason</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpStatusReason" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">LogDateTime</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtLogDateTime" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtLogDateTime" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Target Resolution Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtTargetResolutionDate1" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtTargetResolutionDate1" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Target Response Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtTargetResponseDate" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtTargetResponseDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">SLA Code</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtSLACode" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Site Status</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtSiteStatus" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Monitored</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtMonitored" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Urgency</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtUrgency" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Impact</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtImpact" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Priority</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtPriority" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Vendor Ref #</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtVendorRef" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Customer Ref #</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtCustomerRefNo" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>

        <div class="Row">
            <div class="Column35">Appointment Datetime</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtAppointment" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Summary</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtSummary" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Current Update</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtCurrentUpdate" runat="server" Width="100%" ReadOnly="False"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Descriptions</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtIncidentDetails" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
    </div>
    <br />
    <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnCustomer" runat="server" Text="Customer Information" Width="99%" OnClick="btnCustomer_Click"></telerik:RadButton>
        </div>
    </div>
    <div id="divCustomerView" runat="server" visible="false" title="Customer Information">
        <div class="Row">
            <div class="Column35">Name</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtPICName" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Email</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtPICEmail" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Contact No</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtPICContactNo" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Address</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtAddress" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">City</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtCity" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Post Code</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtPostCode" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">State</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtState" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <%--<div class="Row">
            <div class="Column35">Country</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtCountry" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>--%>
        <div class="Row">
            <div class="Column100">Support Remarks</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtSupportRemarks" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
    </div>

    <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnAssigment" runat="server" Text="Assignment" Width="99%" OnClick="btnAssigment_Click"></telerik:RadButton>
        </div>
    </div>
    <div id="divAssigment" runat="server" visible="false" title="Assignemnt">
        <div class="Row">
            <div class="Column35">Onsite Engineer Required</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpOnsiteEngineerRequired" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">FE Reassign</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpFEReassign" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Escalate To Vendor</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpEscalateToVendor" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadButton ID="btnAssignmentUpdate" runat="server" Skin="Web20" Text="Update Assignment Status" Width="99%" OnClick="btnAssignmentUpdate_Click"></telerik:RadButton>
            </div>
        </div>
    </div>
    <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnClassification" runat="server" Text="Classification" Width="99%" OnClick="btnClassification_Click"></telerik:RadButton>
        </div>
    </div>
    <div id="divClassification" runat="server" visible="false" title="Classifications">
        <div class="Row">
            <div class="Column35">Product Name</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtProductName" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Model/Version</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtModel" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Manufacturer</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtManufacturer" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
    </div>
    <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnSLA" runat="server" Text="SLA Compliance" Width="99%" OnClick="btnSLA_Click"></telerik:RadButton>
        </div>
    </div>
    <div id="divSLADetail" runat="server" visible="false" title="SLA">
        <div class="Row">
            <div class="Column35">Total Incident Time</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtTotalIncidentTime" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Travel Time</div>
            <div class="Column5">:</div>
            <div class="Column60">
                H
                <telerik:RadNumericTextBox ID="txtTravelTimeH" runat="server" ShowSpinButtons="True" Value="0" MinValue="0" MaxValue="9999" Type="Number" InvalidStyleDuration="100" Width="40%">
                    <NumberFormat AllowRounding="True" KeepNotRoundedValue="False" DecimalDigits="0"></NumberFormat>
                </telerik:RadNumericTextBox>M
                <telerik:RadNumericTextBox ID="txtTravelTimeM" runat="server" ShowSpinButtons="True" Value="0" MinValue="0" MaxValue="59" Type="Number" InvalidStyleDuration="100" Width="40%">
                    <NumberFormat AllowRounding="True" KeepNotRoundedValue="False" DecimalDigits="0"></NumberFormat>
                </telerik:RadNumericTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Submit Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtSubmitDate" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtSubmitDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Actual Incident Occur Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtActualIncidentOccurDatex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Target Acknowledgement Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtTargetAcknowledgementDate" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtTargetAcknowledgementDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Acknowledged On</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtAcknowledgedOn" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtAcknowledgedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Target Resolution Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtTargetResolutionDate" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtTargetResolutionDate" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Resolved On</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtResolvedOn" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtResolvedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Closed On</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <%--<telerik:RadTextBox ID="txtClosedOn" runat="server" Width="100%" ReadOnly="True"></telerik:RadTextBox>--%>
                <telerik:RadDateInput ID="txtClosedOn" runat="server" Width="250px" ReadOnly="True"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Required Resolution Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtRequiredResolutionDatex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Onsite Arrival Time</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtOnsiteArrivalTimex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Onsite Completion Time</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtOnsiteResolutionTimex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Repair Turnaround Time</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtRepairTurnaroundTimex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Response Breached Reason</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtBreachedReason1" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Resolution Breached Reason</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtBreachedReason2" runat="server" Height="71px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadButton ID="btnSLAUpdate" runat="server" Skin="Web20" Text="Update SLA Compliance" Width="99%" OnClick="btnSLAUpdate_Click"></telerik:RadButton>
            </div>
        </div>
    </div>
    <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnResolution" runat="server" Text="Resolution Detail" Width="99%" OnClick="btnResolution_Click"></telerik:RadButton>
        </div>
    </div>
    <div id="divResolution" runat="server" visible="false" title="Resolution Details">
        <div class="Row">
            <div class="Column35">Resolution Category</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpResolutionCategory" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Resolution Type</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpResolutionType" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Resolution Item</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpResolutionItem" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Follow-Up Required</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpFollowUpRequired" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Follow-Up Action</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadTextBox ID="txtFollowUpAction" runat="server" Width="100%" ReadOnly="false"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Follow-Up Date</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadDateTimePicker ID="txtFollowUpDatex" runat="server" Width="100%">
                    <DateInput DateFormat="dd/MM/yyyy HH:mm" runat="server" DisplayDateFormat="dd/MM/yy HH:mm">
                    </DateInput>
                </telerik:RadDateTimePicker>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Summary</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtResolutionsSummary" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Resolutions</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtResolutionsx" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column100">Root Causes</div>
        </div>
        <div class="Row">
            <div class="Column100">
                <telerik:RadTextBox ID="txtRootCauses" runat="server" Height="66px" Width="100%" ReadOnly="False" TextMode="MultiLine"></telerik:RadTextBox>
            </div>
        </div>
        <div class="Row">
            <div class="Column35">Resolution Method</div>
            <div class="Column5">:</div>
            <div class="Column60">
                <telerik:RadComboBox ID="drpResolutionMethod" runat="server" Width="100%"></telerik:RadComboBox>
            </div>
        </div>
        <div class="Row">
        <div class="Column100">
            <telerik:RadButton ID="btnResUpdate" runat="server" Skin="Web20" Text="Update Resolution Detail" Width="99%" OnClick="btnResUpdate_Click" BackColor="#3399FF"></telerik:RadButton>
        </div>
    </div>
        </div> 

    <!---- Template ---->
    <div class="Row">
        <div class="Column35"></div>
        <div class="Column5"></div>
        <div class="Column60"></div>
        <telerik:RadLabel runat="server" ID="lblMs" Text="Notifications"></telerik:RadLabel>
    </div>
</asp:Content>
