<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-printTicket.aspx.cs" Inherits="ServiceDesk3d.printTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket Information</title>
    <script type="text/javascript">
        function printing() {
            window.print();
        }
    </script>
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

        body {
            background-color: white;
        }

        .alignleft {
            float: left;
        }

        .alignright {
            float: right;
        }

        .signBox{
            border:1px solid black;
            width:250px;
            height:65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="images/jasper-report-logo.png" width="30%" height="30%" />
            <h3>Ticket Information</h3>
            <table>
                <tr>
                    <td>
                        <table>

                            <tr>
                                <td>Incoming Call No</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblIncomingPhoneNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Site</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAssetSite" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Asset Location
                                    <!---->
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAssetCategory" runat="server"></asp:Label>
                                </td>

                            </tr>
                            <tr>
                                <td>Equipment ID
                                    <!---->
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAssetEquipment" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <%--<tr>
                                <td>Country</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblCountryAccess" runat="server"></asp:Label>
                                </td>
                            </tr>--%>
                            <tr>
                                <td>Service Request ID</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSRID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Customer</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblCustomer" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Request Type</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblRequestType" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Status</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblIncidentStatus" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Status Reason</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblStatusReason" runat="server"></asp:Label>

                                </td>
                            </tr>

                            <tr>
                                <td>Appointment Datetime</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAppointment" runat="server"></asp:Label>
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
                                <td>Channel</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblChannel" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Target Resolution Date</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblTargetResolutionDate1" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Target Response Date</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblTargetResponseDate" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>SLA Code</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSLACode" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr hidden="hidden">
                                <td>Site Status</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSiteStatus" runat="server"></asp:Label></td>
                            </tr>

                            <tr hidden="hidden">
                                <td>Monitored</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblMonitored" runat="server"></asp:Label></td>
                            </tr>

                            <tr>
                                <td>Urgency</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblUrgency" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Impact</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblImpact" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Priority</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblPriority" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="lablex" style="height: 26px">Summary</td>
                    <td class="auto-style2">:</td>
                    <td colspan="4" class="auto-style3">
                        <asp:Label ID="lblSummary" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="lablex">Current Update</td>
                    <td class="auto-style1">:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCurrentUpdate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="lablex">Descriptions</td>
                    <td class="auto-style1">:</td>
                    <td colspan="4">
                        <asp:Label ID="lblDescriptions" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Customer Information</h3>
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
                                        <asp:Label ID="lblReportsBy" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactNo" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset>
                            <legend>Contact Details</legend>
                            <table>
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactEmail" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Contact No</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactPhone" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <fieldset>
                            <legend>Address</legend>
                            <table>
                                <tr>
                                    <td>Address</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <asp:Label ID="lblAddress" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>City</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblCity" runat="server"></asp:Label></td>
                                    <td>Post Code</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblPostCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>State</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblState" runat="server"></asp:Label></td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                   <%-- <td>Country</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblCountry" runat="server"></asp:Label></td>--%>
                                </tr>
                                <tr>
                                    <td>Office No</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblOfficeNo" runat="server"></asp:Label></td>
                                    <td>Mobile No</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblMobileNo" runat="server"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>Fax No</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblFaxNo" runat="server"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>Support Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblSupportRemarks" runat="server"></asp:Label></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <h3>Assignment</h3>
                        <table>
                            <tr hidden="hidden">
                                <td>Department</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblDepartment" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Group</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblGroup" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Primary</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblPrimary" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Secondary</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSecondary" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <h3>Status</h3>
                        <table>
                            <tr>
                                <td>Onsite Engineer Required</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblOnsiteEngineerReq" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>FE Reassign</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblFEReassign" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Escalate To Vendor</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblEscalateToVendor" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vendor Accepted</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblVendorAccepted" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <h3>Task</h3>
            <table>
                <tr>
                    <td>Task ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTaskID" runat="server"></asp:Label>
                    </td>
                    <td>Plan Start</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblPlanStart" runat="server"></asp:Label>
                    </td>
                    <td>Plan End</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblPlanEnd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Created Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCreateDate" runat="server"></asp:Label>
                    </td>
                    <td>Assigned To</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblAssignedTo" runat="server"></asp:Label>
                    </td>
                    <td>Status</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTaskStatus" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Created By</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCreatedBy" runat="server"></asp:Label>
                    </td>
                    <td>Actual Start</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualStart" runat="server"></asp:Label>
                    </td>
                    <td>Actual End</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualEnd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Task Descriptions</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTaskDescriptions" runat="server"></asp:Label>
                    </td>
                    <td>Task Updates</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblTaskUpdates" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="9">
                        <asp:GridView runat="server" ID="grdTask" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="taskno" HeaderText="ID" />
                                <asp:BoundField DataField="taskdesc" HeaderText="Task Descriptions" />
                                <asp:BoundField DataField="taskstatus" HeaderText="Status" />
                                <asp:BoundField DataField="taskowner" HeaderText="Assigned To" />
                                <asp:BoundField DataField="planstart" HeaderText="Plan Start" />
                                <asp:BoundField DataField="planend" HeaderText="Plan End" />
                                <asp:BoundField DataField="actualstart" HeaderText="Actual Start" />
                                <asp:BoundField DataField="actualend" HeaderText="Actual End" />
                                <asp:BoundField DataField="createdby" HeaderText="Created By" />
                                <asp:BoundField DataField="createddate" HeaderText="Created Date" />
                            </Columns>
                        </asp:GridView>
                        <%--<telerik:RadGrid ID="RadGridTask" runat="server">
                                                        <MasterTableView>
                                                            <Columns>
                                                                <telerik:GridBoundColumn DataField="taskno" HeaderText="ID"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="taskdesc" HeaderText="Task Descriptions"></telerik:GridBoundColumn>
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
                                                    </telerik:RadGrid>--%>
                    </td>
                </tr>
            </table>
            <h3>Owner</h3>
            <table>
                <tr>
                    <td>Group</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOwnerGroup" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Owner</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOwner" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Incident Details</h3>
            <table>
                <tr>
                    <td>Knowledgebase
                    </td>
                    <td>:                        
                    </td>
                    <td colspan="4">
                        <asp:Label ID="lblKnowledgeBase" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="lablex">Case Log - Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCaseLogRemarks" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Case Log Type</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCaseLogType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Follow up date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUp" runat="server" Visible="true"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <asp:GridView runat="server" ID="grdCaseLog" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="caselog" HeaderText="Case Log" />
                    <asp:BoundField DataField="Attachments" HeaderText="Attachments" />
                    <asp:BoundField DataField="caselogtype" HeaderText="Case Log Type" />
                    <asp:BoundField DataField="caselogby" HeaderText="Action By" />
                    <asp:BoundField DataField="caselogdate" HeaderText="Action Date Time" />
                </Columns>
            </asp:GridView>
            <h3>Classification</h3>
            <table>
                <tr>
                    <td>Tier 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier1" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tier 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier2" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tier 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier3" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <h3>SLA Details</h3>
            <table>
                <tr>
                    <td>Submitter</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSubmitter" runat="server"></asp:Label></td>
                    <td>Last Modified By</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblLastModifiedBy" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Submit Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSubmitDate" runat="server"></asp:Label></td>
                    <td>Last Modified On</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblLastModifiedDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Reported On</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblReportedOn" runat="server"></asp:Label></td>
                    <td>Actual Incident Occur Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualIncidentDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Target Acknowledgement Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTargetAcknowledgeDate" runat="server"></asp:Label></td>
                    <td>Acknowledged On</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblAcknowledgeOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Target Resolution Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTargetResolutionDate" runat="server"></asp:Label></td>
                    <td>Resolved On</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolvedOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Required Resolution Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblRequiredResolutionDate" runat="server"></asp:Label></td>
                    <td>Closed On</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblClosedOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteArrivalTime" runat="server"></asp:Label></td>
                    <td>Travel Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTravelTime" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Onsite Completion Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteCompletion" runat="server"></asp:Label></td>
                    <td>SLA Exempt</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSLAExempt" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Repair Turnaround Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblRepairTurnaround" runat="server"></asp:Label></td>
                    <td>Onsite Delivery Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteDelivery" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Resolution Details</h3>
            <table>
                <tr>
                    <td>Resolution Category</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionCategory" runat="server"></asp:Label></td>
                    <td>Follow-Up Required</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpReuired" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Resolution Type</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionType" runat="server"></asp:Label>
                    </td>
                    <td>Follow-Up Action</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpAction" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Resolution Item</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionItem" runat="server"></asp:Label>
                    </td>
                    <td>Follow-Up Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Summary</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblResolutionSummary" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Resolutions</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblResolutions" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Root Causes</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblRootCauses" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Resolution Method</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionMethod" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
            </table>
            <h3>Audit Trails</h3>
            
                        <asp:GridView runat="server" ID="grdAuditTrails" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="audittrailid" HeaderText="ID" />
                                <asp:BoundField DataField="levelid" HeaderText="Level" />
                                <asp:BoundField DataField="statusfrom" HeaderText="Old Status" />
                                <asp:BoundField DataField="status" HeaderText="New Status" />
                                <asp:BoundField DataField="notes" HeaderText="Notes" />
                                <asp:BoundField DataField="agentid" HeaderText="Action By" />
                                <asp:BoundField DataField="datetime" HeaderText="Action Date" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblAuditTrailsMsg" runat="server"></asp:Label>
            <h3>Request History</h3>
            
                        <asp:GridView runat="server" ID="grdRequestHistory" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="inc_inclidentid" HeaderText="SR ID" />
                                <asp:BoundField DataField="inc_reportdatetime" HeaderText="Log Date Time" />
                                <asp:BoundField DataField="inc_duedatetime" HeaderText="Due Date Time" />
                                <asp:BoundField DataField="inc_Status" HeaderText="Status" />
                                <asp:BoundField DataField="inc_LevelID" HeaderText="Level" />
                                <asp:BoundField DataField="inc_AssignedTo" HeaderText="Assigned To" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblRequestHistoryMsg" runat="server"></asp:Label>
            
            <h3>Related Request</h3>
                        <asp:GridView runat="server" ID="grdRelatedRequest" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="inc_inclidentid" HeaderText="SR ID" />
                                <asp:BoundField DataField="inc_reportdatetime" HeaderText="Log Date Time" />
                                <asp:BoundField DataField="inc_duedatetime" HeaderText="Due Date Time" />
                                <asp:BoundField DataField="inc_Status" HeaderText="Status" />
                                <asp:BoundField DataField="inc_LevelID" HeaderText="Level" />
                                <asp:BoundField DataField="inc_AssignedTo" HeaderText="Assigned To" />
                                <asp:BoundField DataField="TotalRemoteTimex" HeaderText="Total Remote Time" />
                                <asp:BoundField DataField="TotalOnSiteTimex" HeaderText="Total Onsite Time" />
                                <asp:BoundField DataField="TravelTimex" HeaderText="Travel Time" />
                                <asp:BoundField DataField="TotalIncidentTimex" HeaderText="Total Incident Time" />
                                <asp:BoundField DataField="RelationshipType" HeaderText="Relationship Type" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblRelatedRequestMsg" runat="server"></asp:Label>

            <h3>Signatures</h3>
            <div>
                <p class="alignleft">Engineer</p>
                <p class="alignright">Customer</p>
            </div>
            <div style="clear: both;"></div>
            <div>
                <div class="signBox alignleft"></div>
                <div class="signBox alignright"></div>
            </div>
            <div style="clear: both;"></div>
            <div>
                <p class="alignleft">Name:</p>
                <p class="alignright">Name:<asp:TextBox runat="server" ID="spaceName" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
            </div>
            <div style="clear: both;"></div>
            <div>
                <p class="alignleft">Date:</p>
                <p class="alignright">Date:<asp:TextBox runat="server" ID="spaceDate" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
            </div>
        </div>
    </form>
</body>
</html>
