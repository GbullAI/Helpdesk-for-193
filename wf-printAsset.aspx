<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-printAsset.aspx.cs" Inherits="ServiceDesk3d.wf_printAsset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asset Information</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:5%">
            <h2>Asset Information</h2>
            <table>
                <tr>
                    <td>Asset ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetId"></asp:Label>
                    </td>
                    <td>Asset Location</td>
                    <td>:</td>
                    <td>

                        <asp:Label runat="server" ID="lblFirstCategory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Equipment ID</td>
                    <td>:</td>
                    <td>

                        <asp:Label runat="server" ID="lblEquipmentId"></asp:Label>
                    </td>
                    <td>Asset Type</td>
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
                    <td>Asset Model </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblThirdCategory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Customer</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblCustomer"></asp:Label>
                    </td>

                    <td>Serial No.</td>
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
                    <td>Contract No.</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractNumber"></asp:Label>
                    </td>


                    <td>Asset Owner</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetOwner"></asp:Label>
                    </td>
                </tr>
                <%-- hidden="hidden"--%>
                <tr hidden="hidden">
                    <td>MA Start Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblStartDate"></asp:Label>
                    </td>

                    <td>Contract Type</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractType"></asp:Label>
                    </td>
                </tr>
                <%-- hidden="hidden"--%>
                <tr hidden="hidden">
                    <td>MA End Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEndDate"></asp:Label>
                    </td>
                    <td>Contract Duration</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractDuration"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td hidden="hidden">MA Status</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <asp:Label runat="server" ID="lblMAStatus"></asp:Label>
                    </td>
                    <td hidden="hidden">Manage By</td>
                    <td hidden="hidden">:</td>
                    <td hidden="hidden">
                        <asp:Label runat="server" ID="lblManagedBy"></asp:Label>
                    </td>

                </tr>

                <tr>
                    <td>Customer Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblRemarks"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Site ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSiteId"></asp:Label>
                    </td>
                    <td>Site Name</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSiteName"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Site Address</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSiteAdress"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>Site PIC</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePic"></asp:Label>
                    </td>
                    <td>Site PIC Email</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicEmail"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>Site PIC Contact</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicContact"></asp:Label>
                    </td>
                    <td>Site PIC Mobile</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSitePicMobile"></asp:Label>
                    </td>

                </tr>
                <tr hidden="hidden">
                    <td>Master Asset</td>
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
            <h2>Asset Details</h2>
                    </td>
                </tr>
                <tr>
                    <td>Type </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetType"></asp:Label>
                    </td>
                    <td>Date Of Procurement</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProcDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Company Name</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyName"></asp:Label>
                    </td>
                    <td>Supplier PIC</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyPIC"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Address</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSupplyAdd"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Contact</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyContact"></asp:Label>
                    </td>
                    <td>Supplier Email</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplyEmail"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Host Name</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblHostName"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>Asset ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetIDX"></asp:Label>
                    </td>
                    <td>Asset Location </td>
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
                    <td>Operation System</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblOS"></asp:Label></td>
                </tr>
                <tr>
                    <td>Product Key</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey"></asp:Label></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Software Installed</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSoftInstall"></asp:Label></td>
                </tr>
                <tr>
                    <td>Tier 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier1"></asp:Label>
                    </td>
                    <td>Received Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblReceiveDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tier 2 </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier2"></asp:Label>
                    </td>
                    <td>Installed Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblInstallDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tier 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblTier3"></asp:Label>
                    </td>
                    <td>Disposed Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblDisposeDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Asset Descriptions</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetDesc"></asp:Label>
                    </td>
                    <td>Part #</td>
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
                    <td>System SN 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSystemSN1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Brand </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblBrand"></asp:Label>
                    </td>
                    <td>Made </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMade"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Component 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent1"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent2"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent3"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 4</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent4"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 5</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent5"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 6</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent6"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 7</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent7"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 8</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent8"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 9</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent9"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Component 10</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblComponent10"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>OS Type</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOSType"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>OS/Firmware Version </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOSFirmVersion"></asp:Label>
                    </td>
                    <td>EOL Status </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEOLStatus"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Is Virtual</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblIsVirtual"></asp:Label>
                    </td>
                    <td>EOL Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblEOLDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>IP Address</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblIPAddress"></asp:Label>
                    </td>
                    <td>Product Name</td>
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
                    <td>PM Frequency</td>
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
                    <td>Service Log History</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblServiceHistory"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Software 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware1"></asp:Label>
                    </td>
                    <td>Product Key 1</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Software 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware2"></asp:Label>
                    </td>
                    <td>Product Key 2</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey2"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Software 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftware3"></asp:Label>
                    </td>
                    <td>Product Key 3</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblProdKey3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Additional Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblAddRemarks"></asp:Label></td>

                </tr>
                <tr>
                    <td>Cost</td>
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
            <h2>Contract Details</h2>
                    </td>
                </tr>
                <tr>
                    <td>Purchase Order #</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseOrder"></asp:Label>
                    </td>
                    <td>Purchase Date</td>
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
                    <td>Invoice #</td>
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
                    <td>Contract Name</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractName"></asp:Label>
                    </td>
                    <td>MA Start Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMAStartDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>:</td>
                    <td></td>
                    <td>MA End Date </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblMAEndDate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>OEM(Principal) Vendor</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblOEMVendor"></asp:Label>
                    </td>
                    <td>OEM(Principal) Contract #</td>
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
                    <td>Warranty Period</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyPeriod"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Warranty Start Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyStart"></asp:Label>
                    </td>
                    <td>Warranty End Date </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblWarrantyEnd"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Region</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetRegion"></asp:Label>
                    </td>
                    <td>Budget</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblAssetBudget"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Contract Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblContractRemarks"></asp:Label>
                    </td>
                </tr>
                <tr hidden="hidden">
                    <td>Budget</td>
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
            <h2>Contract Information</h2>
                    </td>
                </tr>
                <tr>
                    <td>Contractor</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractor"></asp:Label>
                    </td>
                    <td>Contact Person</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContactPerson"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Contract ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractID"></asp:Label>
                    </td>
                    <td>Contact Phone </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContactPhone"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Contract Start Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractStart"></asp:Label>
                    </td>
                    <td>Contact Email </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractEMail"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Contract End Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblContractEnd"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Vendor Remarks </td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblVendorRemarks"></asp:Label></td>

                </tr>
                <tr>
                    <td colspan="6">
            <h2>Miscellanious</h2>
                    </td>
                </tr>
                <tr>
                    <td>Supplier Name</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSupplierName"></asp:Label>
                    </td>
                    <td>Purchase Price</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchasePrice"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Purchase Order #</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseOrderX"></asp:Label>
                    </td>
                    <td>Purchase Date</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblPurchaseDateX"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Invoice #</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblInvoiceNum"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Hardware Replacement </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblHardwareReplacement"></asp:Label>
                    </td>
                    <td>Group </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblGroup"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Software Support</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblSoftwareSupport"></asp:Label>
                    </td>
                    <td>Level </td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblLevel"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Labour Support</td>
                    <td>:</td>
                    <td>
                        <asp:Label runat="server" ID="lblLabourSupport"></asp:Label>
                    </td>
                    <td></td>
                    <td>:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Support Remarks</td>
                    <td>:</td>
                    <td colspan="4">
                        <asp:Label runat="server" ID="lblSupportRemarks"></asp:Label></td>

                </tr>
                
            </table>
            <h2>Asset Life Cycle</h2>
            <asp:GridView ID="gvAssetLifeCycle" runat="server"></asp:GridView>
            <asp:Label ID="lblAssetLifeCycleMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
