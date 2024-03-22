<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-printWorkorder.aspx.cs" Inherits="ServiceDesk3d.wf_printWorkorder" %>

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
        
    <div>
        <table >      
        <tr>
                                
            <telerik:RadLabel ID="lblSession" runat="server" Visible="false" ></telerik:RadLabel>
        </tr>
        <tr>
            <td>Work Order No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtWorkOrderNo" runat="server" ReadOnly="true" Width="250px" Enabled="false">
                </telerik:RadTextBox>
            </td>
            <td>Requester<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRequester" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>                                
        </tr>
        <tr>
            <td>Equipment ID<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEquipmentID" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px"  AutoPostBack="True" OnSelectedIndexChanged="ddlEquipmentID_SelectedIndexChanged">
                </telerik:RadComboBox>

            </td>
            <td>Work Order Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlWorkOrderType" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddlWorkOrderType_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Engineer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlEngineer" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
            <td>Priority</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlPriority" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Status<span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="ddlStatus" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                </telerik:RadComboBox>
            </td>
            <td>Material Cost</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtMaterialCost" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
            
        </tr>      
        <tr>
            <td>Date Initiated</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateInitiated" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
            </td>
                                 
              <td>Time Start <span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                (HH)<telerik:RadTextBox ID="txtTimeReport1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeReport2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                                   
            </td>
        </tr>
        <tr>
           <td>Date Schedule </td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPDateSchedule" runat="server" MarkFirstMatch="true" Width="250px" DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
                                    
            </td>
                      <td>Time Service <span style="color: #ff0033">*</span></td>
            <td>:</td>
            <td>
                (HH)<telerik:RadTextBox ID="txtTimeRespond1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeRespond2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                                   
            </td>
        </tr>
        <tr>
            <td>Date Completed</td>
            <td>:</td>
            <td>
                <telerik:RadDatePicker ID="DPdatecomplete" runat="server" MarkFirstMatch="true" Width="250px"  DateInput-DateFormat="dd/MM/yyyy">
                    <Calendar runat="server">
                        <FastNavigationSettings EnableTodayButtonSelection="true"></FastNavigationSettings>
                    </Calendar>
                </telerik:RadDatePicker>
                                    
            </td>
            <td>Time Completed</td>
            <td>:</td>
            <td>
                       (HH)<telerik:RadTextBox ID="txtTimeComplete1" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>:
                (mm)<telerik:RadTextBox ID="txtTimeComplete2" runat="server" Width="50px" MaxLength="2" Visible="true"></telerik:RadTextBox>
                               
            </td>
        </tr>
        <tr>                                
            <td>Reference No</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtReferenceNo" runat="server" Width="250px">
                </telerik:RadTextBox>
            </td>
            <td></td>
            <td></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>Hour Taken</td>
            <td>:</td>
            <td>
                 <telerik:RadTextBox ID="txtHourTaken" runat="server" ReadOnly="true" Width="50px" Enabled="false"></telerik:RadTextBox>H	
                <telerik:RadTextBox ID="txtHourTakenM" runat="server" ReadOnly="true" Width="50px" Enabled="false"></telerik:RadTextBox>m
                <br /><span style="color: #ff0033">*(Auto calculate - No need to key in)</span>
            </td>
              <td>Onsite Arrival Time</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDateTimePicker ID="txtOnsiteArrivalTimex" runat="server" Width="250px" DisplayDateFormat="dd/MM/yy HH:mm:ss">
                            <DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server"></DateInput>
                        </telerik:RadDateTimePicker>
                    </td>
        </tr>
        <tr>
                 <td>Work Requested</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtWorkRequested" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Corrective Action</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCorrectiveAction" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Cause of Failure</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCauseOfFailure" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Problem Symptoms</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtSymptoms" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>

            </td>
        </tr>
        <tr>
            <td>Remedy/Job Done</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtJobDone" runat="server" Width="90%" TextMode="MultiLine"></telerik:RadTextBox>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>