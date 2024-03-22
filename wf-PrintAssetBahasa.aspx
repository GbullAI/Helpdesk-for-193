<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-PrintAssetBahasa.aspx.cs" Inherits="ServiceDesk3d.wf_PrintAssetBahasa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maklumat Aset</title>
    <script type="text/javascript">
        function printing() {
            window.print();
        }
    </script>
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
        
        body {
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:5%">
            <table>
                <tr>
                    <td>
                        <img src="images/jasper-report-logo.png"/>
                    </td>
                    <td style="text-align:right;">
                        <h3><asp:Label runat="server" ID="lblReportID"></asp:Label></h3>
                        <h3>Perincian Aset</h3>
                        <h3>ID Aset : <asp:Label runat="server" ID="lblAssetIDHeader"></asp:Label></h3>
                        <h3>Tarikh : <asp:Label runat="server" ID="lblDateNow"></asp:Label></h3>
                    </td>
                </tr>
            </table>
            <h2>Maklumat Aset</h2>
            <table>
                <tr>
                    <td>ID Aset</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetId"></asp:Label>
                    </td>
                    <td>Lokasi Aset </td>
                    <td>:</td>
                    <td>

                        <asp:Label runat="server" ID="lblFirstCategory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ID Peralatan</td>
                    <td>:</td>
                    <td>

                        <asp:Label runat="server" ID="lblEquipmentId"></asp:Label>
                    </td>
                    <td>Jenis Aset</td>
                    <td>:</td>
                    <td>

                        <asp:Label runat="server" ID="lblSecondCategory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Status </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblStatus"></asp:Label>
                    </td>
                    <td>Model Asset </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblThirdCategory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Pengguna</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblCustomer"></asp:Label>
                    </td>

                    <td>No. Siri</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSerialNumber"></asp:Label>
                    </td>
                    <%--<td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>--%>
                </tr>

                <tr>
                    <td>No. Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractNumber"></asp:Label>
                    </td>


                    <td>Pemilik Aset</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetOwner"></asp:Label>
                    </td>
                </tr>
                <%-- hidden="hidden"--%>
                <tr hidden="hidden">
                    <td>Tarikh Mula MA</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblStartDate"></asp:Label>
                    </td>

                    <td>Jenis Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractType"></asp:Label>
                    </td>
                </tr>
                <%-- hidden="hidden"--%>
                <tr hidden="hidden">
                    <td>Tarikh Tamat MA</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEndDate"></asp:Label>
                    </td>
                    <td>Durasi Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractDuration"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td hidden="hidden">Status MA</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <asp:Label runat="server" ID="lblMAStatus"></asp:Label>
                    </td>
                    <td hidden="hidden">Diurus Oleh</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <asp:Label runat="server" ID="lblManagedBy"></asp:Label>
                    </td>

                </tr>

                <tr>
                    <td>Catatan Pengguna</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblRemarks"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ID Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSiteId"></asp:Label>
                    </td>
                    <td>Nama Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSiteName"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Alamat Kawasan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSiteAdress"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>PIC Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePic"></asp:Label>
                    </td>
                    <td>Emel PIC Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicEmail"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Kontak PIC Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicContact"></asp:Label>
                    </td>
                    <td>No.Tel. Bimbit PIC Kawasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicMobile"></asp:Label>
                    </td>

                </tr>
                <tr hidden="hidden">
                    <td>Aset Utama</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMasterAsset"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
            <h2>Perincian Aset</h2>
                    </td>
                </tr>
                <tr>
                    <td>Jenis </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetType"></asp:Label>
                    </td>
                    <td>Tarikh Perolehan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProcDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Nama Syarikat Pembekal</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyName"></asp:Label>
                    </td>
                    <td>PIC Pembekal</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyPIC"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Alamat Pembekal</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSupplyAdd"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Kontak Pembekal</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyContact"></asp:Label>
                    </td>
                    <td>Emel Pembekal</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyEmail"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Nama Hos</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblHostName"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>ID Aset</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetIDX"></asp:Label>
                    </td>
                    <td>Lokasi Aset</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetLoc"></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td>Tag Name</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtAssetTagName" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>Priority </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetPriority" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>--%>
                <%--<tr>
                    <td>Status Reason </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetStatusReason" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>Supported </td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpAssetSupported" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                </tr>--%>
                <tr>
                    <td>Sistem Operasi</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblOS"></asp:Label></td>
                </tr>
                <tr>
                    <td>Kunci Produk</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey"></asp:Label></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Perisian Dipasang </td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSoftInstall"></asp:Label></td>
                </tr>
                <tr>
                    <td>Tahap 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier1"></asp:Label>
                    </td>
                    <td>Tarikh Diterima</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblReceiveDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tahap 2 </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier2"></asp:Label>
                    </td>
                    <td>Tarikh Dipasang</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblInstallDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tahap 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier3"></asp:Label>
                    </td>
                    <td>Tarikh Dilupuskan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblDisposeDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Penerangan Aset</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetDesc"></asp:Label>
                    </td>
                    <td>No. Bahagian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPartNumber"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Model</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblModel"></asp:Label>
                    </td>
                    <td>No. Siri 1 Sistem</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSystemSN1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Jenama </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblBrand"></asp:Label>
                    </td>
                    <td>Dibuat </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMade"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Komponen 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent1"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent2"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent3"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 4</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent4"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 5</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent5"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 6</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent6"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 7</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent7"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 8</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent8"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 9</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent9"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Komponen 10</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent10"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Jenis OS</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOSType"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Versi Firmware</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOSFirmVersion"></asp:Label>
                    </td>
                    <td>Status EOL</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEOLStatus"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Adakah Maya</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblIsVirtual"></asp:Label>
                    </td>
                    <td>Tarikh EOL</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEOLDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Alamat IP</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblIPAddress"></asp:Label>
                    </td>
                    <td>Nama Produk</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProductName"></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td>EOS Status</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpEOSStatus" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>
                    <td>EOS Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtEOSDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>
                </tr>--%>
                <tr>
                    <td>Kekerapan PM</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPMFrequency"></asp:Label>
                    </td>
                    <%--<td>PM Start Date</td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtPMStartDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>--%>
                </tr>
                <%--<tr>
                    <td>PIC Rank</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICrank" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>PIC Designation</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICdesignation" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                </tr>
                <tr>
                    <td>PIC Service no</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtSitePICserviceno" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>PIC Service</td>
                    <td>:</td>
                    <td>
                       <telerik:RadComboBox ID="drpSitePICservice" runat="server" Width="250px"></telerik:RadComboBox> 
                    </td>
                </tr>
                <tr>
                    <td>PIC Fax</td>
                    <td>:</td>
                    <td>
                       <telerik:RadTextBox ID="txtsitePICfax" runat="server" Width="250px"></telerik:RadTextBox> 
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
                <tr>
                    <td>Sejarah Log Perkhidmatan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblServiceHistory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Perisian 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware1"></asp:Label>
                    </td>
                    <td>Kunci Produk 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Perisian 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware2"></asp:Label>
                    </td>
                    <td>Kunci Produk 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey2"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Perisian 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware3"></asp:Label>
                    </td>
                    <td>Kunci Produk 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Catatan Tambahan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblAddRemarks"></asp:Label></td>

                </tr>
                <tr>
                    <td>Kos</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblCost"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
            <h2>Perincian Kontrak</h2>
                    </td>
                </tr>
                <tr>
                    <td>No.Pesanan Pembelian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseOrder"></asp:Label>
                    </td>
                    <td>Tarikh Pembelian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseDate"></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td>SOR Number</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtSaleOrderNo" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>SOR Date </td>
                    <td>:</td>
                    <td>
                        <telerik:RadDatePicker ID="txtSorDatex" runat="server" Width="250px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                    </td>
                </tr>--%>
                <tr>
                    <td>No. Invois</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblInvoice"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <%--<td>Billing Frequency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpBillingFreq" runat="server" Width="250px"></telerik:RadComboBox>
                    </td>--%>
                </tr>
                <tr>
                    <td>Nama Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractName"></asp:Label>
                    </td>
                    <td>Tarikh Mula MA</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMAStartDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>:</td>
                    <td></td>
                    <td>Tarikh Mula MA</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMAEndDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Penjual OEM(Prinsipal)</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOEMVendor"></asp:Label>
                    </td>
                    <td>No Kontrak OEM(Prinsipal)</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOEMContractNum"></asp:Label>
                    </td>
                </tr>
                <%--<tr>                    
                     <td>ACV </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtACV" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>TCV </td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTCV" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>--%>
                <%--<tr>                    
                     <td>ACV (USD)</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtACVUSD" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                    <td>TCV (USD)</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTCVUSD" runat="server" Width="250px"></telerik:RadTextBox>
                    </td>
                </tr>--%>
                <tr>
                    <td>Jangkamasa Waranti</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyPeriod"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tarikh Mula Waranti</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyStart"></asp:Label>
                    </td>
                    <td>Tarikh Tamat Waranti</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyEnd"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Wilayah</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetRegion"></asp:Label>
                    </td>
                    <td>Belanjawan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetBudget"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Catatan Kontrak</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblContractRemarks"></asp:Label>
                    </td>
                </tr>
                <tr hidden="hidden">
                    <td>Belanjawan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblBudget"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
            <h2>Maklumat Kontrak</h2>
                    </td>
                </tr>
                <tr>
                    <td>Kontraktor</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractor"></asp:Label>
                    </td>
                    <td>Individu Untuk Dihubungi</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContactPerson"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>ID Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractID"></asp:Label>
                    </td>
                    <td>No.Telefon </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContactPhone"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tarikh Mula Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractStart"></asp:Label>
                    </td>
                    <td>Emel kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractEMail"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tarikh Tamat Kontrak</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractEnd"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Catatan Penjual</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblVendorRemarks"></asp:Label></td>

                </tr>
                <tr>
                    <td colspan="6">
            <h2>Pelbagai</h2>
                    </td>
                </tr>
                <tr>
                    <td>Nama Pembekal</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplierName"></asp:Label>
                    </td>
                    <td>Harga Pembelian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchasePrice"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>No. Pesanan Pembelian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseOrderX"></asp:Label>
                    </td>
                    <td>Tarikh Pembelian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseDateX"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>No. Invois</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblInvoiceNum"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Penggantian Perkakasan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblHardwareReplacement"></asp:Label>
                    </td>
                    <td>Kumpulan</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblGroup"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Sokongan Perisian</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftwareSupport"></asp:Label>
                    </td>
                    <td>Tahap </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblLevel"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Sokongan Buruh</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblLabourSupport"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Catatan Sokongan</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSupportRemarks"></asp:Label></td>

                </tr>
                
            </table>
            <h2>Kitaran Hidup Aset</h2>
            <asp:GridView ID="gvAssetLifeCycle" runat="server">
     <%--           <Columns>
                                <asp:BoundField DataField="assetlifecycledatetime" HeaderText="Date Time" />
                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                <asp:BoundField DataField="Site" HeaderText="Site ID" />
                                <asp:BoundField DataField="createdby" HeaderText="Created By" />
                                <asp:BoundField DataField="createddatetime" HeaderText="Created Date Time" />
                </Columns>--%>
            </asp:GridView>
            <telerik:RadScriptManager runat="server" ID="RadScriptManager1"></telerik:RadScriptManager>
            <telerik:RadGrid ID="radGridAssetLifeCycle" runat="server" Visible="false" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" MasterTableView-PageSize="20">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn SortExpression="assetlifecycledatetime" DataField="assetlifecycledatetime" HeaderText="Date time" DataFormatString="{0:dd/MM/yyyy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="statusid" DataField="statusid" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="siteid" DataField="siteid" HeaderText="SiteID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="creuserid" DataField="creuserid" HeaderText="Created By"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn SortExpression="credatetime" DataField="credatetime" HeaderText=" Created Date time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
            <asp:Label ID="lblAssetLifeCycleMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
