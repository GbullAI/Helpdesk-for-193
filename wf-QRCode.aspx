<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-QRCode.aspx.cs" Inherits="ServiceDesk3d.wf_QRCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/default.css?version=2" rel="stylesheet" />
    <link href="styles/base.css?version=2" rel="stylesheet" />
    <style type="text/css">
        @media print {
            #btnPrint, #btnDownload {
                display: none;
            }
        }


    </style>
</head>
<body style="background-color:white">
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server" ID="RadScriptManager1"></telerik:RadScriptManager>     
        <div style="text-align:center">
            <asp:Label runat="server" Visible="false" ID="lblAssetID"></asp:Label>
            <asp:Image runat="server" Width="150px" Height="150px" ID="imgQR"></asp:Image><br />
            Equipment ID : <b><asp:Label runat="server" ID="lblEquipmentID"></asp:Label></b><br /><br />
            <telerik:RadButton runat="server" ID="btnPrint" OnClick="btnPrint_Click" Text="Print" Width="120px" BackColor="Green" ForeColor="White" ></telerik:RadButton>
            <telerik:RadButton runat="server" ID="btnDownload" OnClick="btnDownload_Click" Text="Download" Width="120px" BackColor="CornflowerBlue" ForeColor="White"></telerik:RadButton>
        </div>
    </form>
</body>
</html>
