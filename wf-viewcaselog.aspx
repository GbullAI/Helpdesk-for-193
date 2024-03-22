<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-viewcaselog.aspx.cs" Inherits="ServiceDesk3d.wf_viewcaselog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#eee">
    <form id="form1" runat="server">
        <div>
            
            <table>
                <tr>
                    <td>Caselog ID</td>
                    <td>:</td>
                    <td><asp:Label runat="server" ID="lblCaselogID"></asp:Label></td>
                </tr>
                <tr>
                    <td>Case Log Description</td>
                    <td>:</td>
                    <td><asp:Label runat="server" ID="lblCaselogDesc"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attachments</td>
                    <td>:</td>
                    <td><a href="#" id="a6" runat="server"></a></td>
                </tr>
                <tr>
                    <td>Caselog Type</td>
                    <td>:</td>
                    <td><asp:Label runat="server" ID="lblCaselogType"></asp:Label></td>
                </tr>
                <tr>
                    <td>Action By</td>
                    <td>:</td>
                    <td><asp:Label runat="server" ID="lblActionBy"></asp:Label></td>
                </tr>
                <tr>
                    <td>Action DateTime</td>
                    <td>:</td>
                    <td><asp:Label runat="server" ID="lblActionDateTime"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
