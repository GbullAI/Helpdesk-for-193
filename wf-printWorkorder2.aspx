<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-printWorkorder2.aspx.cs" Inherits="ServiceDesk3d.wf_printWorkorder2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Work Order Information</title>
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

        .signBox {
            border: 1px solid black;
            width: 250px;
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin: 3%">
            <table>
                <tr>
                    <td>
                        <img src="images/jasper-report-logo.png"/>
                    </td>
                </tr>
            </table>
            <h2>Work Order</h2>
            <table>
                <tr>

                    <asp:Label ID="lblSession" runat="server" Visible="false"></asp:Label>
                </tr>
                <tr>
                    <td>Work Order No</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblWorkOrderNo" runat="server" ReadOnly="true" Width="250px" Enabled="false">
                        </asp:Label>
                    </td>
                    <td>Requester</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblRequester" runat="server" Width="250px">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Equipment ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEquipmentID"></asp:Label>
                    </td>
                    <td>Work Order Type</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWorkOrderType"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Engineer</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEngineer"></asp:Label>
                    </td>
                    <td>Priority</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPriority"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblStatus"></asp:Label>
                    </td>
                    <td>Material Cost</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblMaterialCost" runat="server" Width="250px">
                        </asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>Date Initiated</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblDPDateInitiated"></asp:Label>
                    </td>

                    <td>Time Start (HH:mm)</td>
                    <td>:</td>
                    <td><asp:Label ID="lblTimeReport1" runat="server"  MaxLength="2" Visible="true"></asp:Label>:
                    <asp:Label ID="lblTimeReport2" runat="server"  MaxLength="2" Visible="true"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Date Schedule </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblDPDateSchedule"></asp:Label>

                    </td>
                    <td>Time Service (HH:mm) </td>
                    <td>:</td>
                    <td><asp:Label ID="lblTimeRespond1" runat="server" MaxLength="2" Visible="true"></asp:Label>:
                        <asp:Label ID="lblTimeRespond2" runat="server"  MaxLength="2" Visible="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Date Completed (HH:mm)</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblDPdatecomplete"></asp:Label>
                    </td>
                    <td>Time Completed (HH:mm)</td>
                    <td>:</td>
                    <td><asp:Label ID="lblTimeComplete1" runat="server"  MaxLength="2" Visible="true"></asp:Label>:
                <asp:Label ID="lblTimeComplete2" runat="server"  MaxLength="2" Visible="true"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Reference No</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblReferenceNo" runat="server" Width="250px">
                        </asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Hour Taken(H:m)</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblHourTaken" runat="server" ReadOnly="true"  Enabled="false"></asp:Label> : 
                        <asp:Label ID="lblHourTakenM" runat="server" ReadOnly="true"  Enabled="false"></asp:Label>
                    </td>
                    <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOnsiteArrivalTimex"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Work Requested</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblWorkRequested" runat="server" Width="90%" TextMode="MultiLine"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Corrective Action</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCorrectiveAction" runat="server" Width="90%" TextMode="MultiLine"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Cause of Failure</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCauseOfFailure" runat="server" Width="90%" TextMode="MultiLine"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Problem Symptoms</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblSymptoms" runat="server" Width="90%" TextMode="MultiLine"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Remedy/Job Done</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblJobDone" runat="server" Width="90%" TextMode="MultiLine"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <h2>Audit Trail</h2>
            <asp:GridView ID="gvAuditTrail" runat="server"></asp:GridView>
            <asp:Label ID="lblAuditTrailMsg" runat="server"></asp:Label>
        
        <br />
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
            <p class="alignright" style="position: relative;left: -6px;">Name:<asp:TextBox runat="server" ID="spaceName" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
        </div>
        <div style="clear: both;"></div>
        <div>
            <p class="alignleft">Date:</p>
            <p class="alignright" style="position: relative;left: -13px;">Date:<asp:TextBox runat="server" ID="spaceDate" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
        </div>
            </div>
    </form>
</body>
</html>
