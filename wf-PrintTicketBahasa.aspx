<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-PrintTicketBahasa.aspx.cs" Inherits="ServiceDesk3d.wf_PrintTicketBahasa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maklumat Tiket</title>
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
            <table>
                <tr>
                    <td>
                        <img src="images/jasper-report-logo.png"/>
                    </td>
                    <td style="text-align:right;">
                        <h3><asp:Label runat="server" ID="lblReportID"></asp:Label></h3>
                        <h3>Perincian Insiden</h3>
                        <h3>ID Servis Permintaan : <asp:Label runat="server" ID="lblTicketIDHeader"></asp:Label></h3>
                        <h3>Tarikh : <asp:Label runat="server" ID="lblDateNow"></asp:Label></h3>
                    </td>
                </tr>
            </table>
            <h3>Maklumat Tiket</h3>
            <table>
                <tr>
                    <td>
                        <table>

                            <tr>
                                <td>No Panggilan Masuk</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblIncomingPhoneNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Kawasan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAssetSite" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Lokasi Aset
                                    <!---->
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblAssetCategory" runat="server"></asp:Label>
                                </td>

                            </tr>
                            <tr>
                                <td>ID Peralatan
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
                                <td>ID Servis Permintaan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSRID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Pengguna</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblCustomer" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Jenis Permintaan</td>
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
                                <td>Alasan Status</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblStatusReason" runat="server"></asp:Label>

                                </td>
                            </tr>

                            <tr>
                                <td>TarikhMasa Temujanji</td>
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
                                <td>Saluran</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblChannel" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Tarikh Sasaran Penyelesaian</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblTargetResolutionDate1" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Tarikh Sasaran Maklum Balas</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblTargetResponseDate" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Kod SLA</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSLACode" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr hidden="hidden">
                                <td>Status Kawasan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblSiteStatus" runat="server"></asp:Label></td>
                            </tr>

                            <tr hidden="hidden">
                                <td>Dipantau</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblMonitored" runat="server"></asp:Label></td>
                            </tr>

                            <tr>
                                <td>Kecemasan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblUrgency" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Kesan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblImpact" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>Keutamaan</td>
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
                    <td class="lablex" style="height: 26px">Rumusan</td>
                    <td class="auto-style2">:</td>
                    <td colspan="4" class="auto-style3">
                        <asp:Label ID="lblSummary" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="lablex">Kemaskini Semasa</td>
                    <td class="auto-style1">:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCurrentUpdate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="lablex">Penerangan</td>
                    <td class="auto-style1">:</td>
                    <td colspan="4">
                        <asp:Label ID="lblDescriptions" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Maklumat Pengguna</h3>
            <table>
                <tr>
                    <td colspan="3">
                        <fieldset>
                            <legend>Dilaporkan oleh</legend>
                            <table>
                                <tr>
                                    <td>Nama</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblReportsBy" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Emel</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>No. Kenalan</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactNo" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td colspan="3">
                        <fieldset>
                            <legend>Perincian Kenalan</legend>
                            <table>
                                <tr>
                                    <td>Nama</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Emel</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblContactEmail" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>No.Kenalan</td>
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
                            <legend>Alamat</legend>
                            <table>
                                <tr>
                                    <td>Alamat</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <asp:Label ID="lblAddress" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Bandar</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblCity" runat="server"></asp:Label></td>
                                    <td>Poskod</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblPostCode" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Negeri</td>
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
                                    <td>No. Pejabat</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblOfficeNo" runat="server"></asp:Label></td>
                                    <td>No. Tel. Bimbit</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lblMobileNo" runat="server"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>No. Faks</td>
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
                    <td>Catatan Sokongan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblSupportRemarks" runat="server"></asp:Label></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <h3>Tugasan</h3>
                        <table>
                            <tr hidden="hidden">
                                <td>Jabatan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblDepartment" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Kumpulan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblGroup" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Utama</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblPrimary" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Menengah</td>
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
                                <td>Jurutera Tapak Yang Diperlukan</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblOnsiteEngineerReq" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Tetapkan semula FE</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblFEReassign" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Meningkat Ke Penjual</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="lblEscalateToVendor" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Penjual Yang Diterima</td>
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
                    <td>ID Tugas</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTaskID" runat="server"></asp:Label>
                    </td>
                    <td>Mula Rancangan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblPlanStart" runat="server"></asp:Label>
                    </td>
                    <td>Tamat Rancangan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblPlanEnd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tarikh Dicipta</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCreateDate" runat="server"></asp:Label>
                    </td>
                    <td>Ditugaskan Ke</td>
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
                    <td>Dicipta Oleh</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCreatedBy" runat="server"></asp:Label>
                    </td>
                    <td>Permulaan Sebenar</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualStart" runat="server"></asp:Label>
                    </td>
                    <td>Penamat Sebenar</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualEnd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Penerangan Tugas</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTaskDescriptions" runat="server"></asp:Label>
                    </td>
                    <td>Kemaskini Tugas</td>
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
                                <asp:BoundField DataField="taskdesc" HeaderText="Penerangan Tugasan" />
                                <asp:BoundField DataField="taskstatus" HeaderText="Status" />
                                <asp:BoundField DataField="taskowner" HeaderText="Ditugaskan Pada" />
                                <asp:BoundField DataField="planstart" HeaderText="Mula Perancangan" />
                                <asp:BoundField DataField="planend" HeaderText="Tamat Perancangan" />
                                <asp:BoundField DataField="actualstart" HeaderText="Pemula Sebenar" />
                                <asp:BoundField DataField="actualend" HeaderText="Tamat Sebenar" />
                                <asp:BoundField DataField="createdby" HeaderText="Dicipta Oleh" />
                                <asp:BoundField DataField="createddate" HeaderText="Tarikh Dicipta" />
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
            <h3>Pemilik</h3>
            <table>
                <tr>
                    <td>Kumpulan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOwnerGroup" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Pemilik</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOwner" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Perincian Insiden</h3>
            <table>
                <tr>
                    <td>Asas Pengetahuan
                    </td>
                    <td>:                        
                    </td>
                    <td colspan="4">
                        <asp:Label ID="lblKnowledgeBase" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="lablex">Log Kes - Catatan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblCaseLogRemarks" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Jenis Log Kes</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblCaseLogType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tarikh Susulan </td>
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
                    <asp:BoundField DataField="caselog" HeaderText="Log Kes" />
                    <asp:BoundField DataField="Attachments" HeaderText="Lampiran" />
                    <asp:BoundField DataField="caselogtype" HeaderText="Jenis Log Kes" />
                    <asp:BoundField DataField="caselogby" HeaderText="Tindakan Oleh" />
                    <asp:BoundField DataField="caselogdate" HeaderText="Tarikh Tindakan" />
                </Columns>
            </asp:GridView>
            <h3>Pengkelasan</h3>
            <table>
                <tr>
                    <td>Tahap 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier1" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tahap 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier2" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tahap 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTier3" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            <h3>Perincian SLA</h3>
            <table>
                <tr>
                    <td>Pengirim</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSubmitter" runat="server"></asp:Label></td>
                    <td>Ubah Suai Terakhir Oleh</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblLastModifiedBy" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Tarikh Kiriman</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSubmitDate" runat="server"></asp:Label></td>
                    <td>Ubah Sua Terakhir Pada/td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblLastModifiedDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Dilaporkan Oleh</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblReportedOn" runat="server"></asp:Label></td>
                    <td>Tarikh Sebenar Insiden Terjadi</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblActualIncidentDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Targikh Sasaran Asas Pengetahuan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTargetAcknowledgeDate" runat="server"></asp:Label></td>
                    <td>Diakui Pada</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblAcknowledgeOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Tarikh Sasaran Penyelesaian</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTargetResolutionDate" runat="server"></asp:Label></td>
                    <td>Diselesaikan Pada</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolvedOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Tarikh Penyelesaian Diperlukan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblRequiredResolutionDate" runat="server"></asp:Label></td>
                    <td>Ditutup Pada</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblClosedOn" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Masa Tiba Di Tapak</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteArrivalTime" runat="server"></asp:Label></td>
                    <td>Masa Perjalanan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblTravelTime" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Masa Selesai Di Tapak</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteCompletion" runat="server"></asp:Label></td>
                    <td>Dikecualikan SLA</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSLAExempt" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Masa Pusing Pembaikan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblRepairTurnaround" runat="server"></asp:Label></td>
                    <td>Masa Penghantaran Di Tapak</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblOnsiteDelivery" runat="server"></asp:Label></td>
                </tr>
            </table>
            <h3>Perincian Penyelesaian</h3>
            <table>
                <tr>
                    <td>Kategori Penyelesaian</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionCategory" runat="server"></asp:Label></td>
                    <td>Susulan Diperlukan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpReuired" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Jenis Penyelesaian</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionType" runat="server"></asp:Label>
                    </td>
                    <td>Tindakan Susulan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpAction" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Item Penyelesaian</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionItem" runat="server"></asp:Label>
                    </td>
                    <td>Tarikh Susulan</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblFollowUpDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Rumusan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblResolutionSummary" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Penyelesaian</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblResolutions" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Punca Akar</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label ID="lblRootCauses" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Kaedah Penyelesaian</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblResolutionMethod" runat="server"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
            </table>
            <h3>Jalur Audit</h3>
            
                        <asp:GridView runat="server" ID="grdAuditTrails" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="audittrailid" HeaderText="ID" />
                                <asp:BoundField DataField="levelid" HeaderText="Tahap" />
                                <asp:BoundField DataField="statusfrom" HeaderText="Status Lama" />
                                <asp:BoundField DataField="status" HeaderText="Status Baru" />
                                <asp:BoundField DataField="notes" HeaderText="Nota" />
                                <asp:BoundField DataField="agentid" HeaderText="Tindakan Oleh" />
                                <asp:BoundField DataField="datetime" HeaderText="Tarikh Tindaakan" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblAuditTrailsMsg" runat="server"></asp:Label>
            <h3>Sejarah Permintaan</h3>
            
                        <asp:GridView runat="server" ID="grdRequestHistory" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="inc_inclidentid" HeaderText="ID SR" />
                                <asp:BoundField DataField="inc_reportdatetime" HeaderText="Tarikh Log" />
                                <asp:BoundField DataField="inc_duedatetime" HeaderText="Tarikh Akhir" />
                                <asp:BoundField DataField="inc_Status" HeaderText="Status" />
                                <asp:BoundField DataField="inc_LevelID" HeaderText="Tahap" />
                                <asp:BoundField DataField="inc_AssignedTo" HeaderText="Ditugaskan Pada" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblRequestHistoryMsg" runat="server"></asp:Label>
            
            <h3>Permintaan Berkaitan</h3>
                        <asp:GridView runat="server" ID="grdRelatedRequest" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="inc_inclidentid" HeaderText="ID SR" />
                                <asp:BoundField DataField="inc_reportdatetime" HeaderText="Tarikh Log" />
                                <asp:BoundField DataField="inc_duedatetime" HeaderText="Tarikh Akhir" />
                                <asp:BoundField DataField="inc_Status" HeaderText="Status" />
                                <asp:BoundField DataField="inc_LevelID" HeaderText="Tahap" />
                                <asp:BoundField DataField="inc_AssignedTo" HeaderText="Ditugaskan Pada" />
                                <asp:BoundField DataField="TotalRemoteTimex" HeaderText="Jumlah Masa Terpencil" />
                                <asp:BoundField DataField="TotalOnSiteTimex" HeaderText="Jumlah Masa Ditapak" />
                                <asp:BoundField DataField="TravelTimex" HeaderText="Masa Perjalanan" />
                                <asp:BoundField DataField="TotalIncidentTimex" HeaderText="Jumlah Masa Insiden" />
                                <asp:BoundField DataField="RelationshipType" HeaderText="Jenis Hubungan" />
                            </Columns>
                        </asp:GridView>
            <asp:Label ID="lblRelatedRequestMsg" runat="server"></asp:Label>

            <h3>Tandatangan</h3>
            <div>
                <p class="alignleft">Jurutera</p>
                <p class="alignright">Pengguna</p>
            </div>
            <div style="clear: both;"></div>
            <div>
                <div class="signBox alignleft"></div>
                <div class="signBox alignright"></div>
            </div>
            <div style="clear: both;"></div>
            <div>
                <p class="alignleft">Nama:</p>
                <p class="alignright">Nama:<asp:TextBox runat="server" ID="spaceName" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
            </div>
            <div style="clear: both;"></div>
            <div>
                <p class="alignleft">Tarikh:</p>
                <p class="alignright">Tarikh:<asp:TextBox runat="server" ID="spaceDate" Width="200px" Height="0px" BorderStyle="None"></asp:TextBox></p>
            </div>
        </div>
    </form>
</body>
</html>

