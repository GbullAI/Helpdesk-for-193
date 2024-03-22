<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="wf-helpdeskclosepopup.aspx.cs" Inherits="ServiceDesk3d.wf_helpdeskclosepopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server"  />
</head>
<body>
    <form id="form1" runat="server">    
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
<telerik:RadScriptManager runat="server">
    <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
</telerik:RadScriptManager> 
        <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <table>
        <tr>

        </tr>
        <tr>
            <td>Remarks</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCurrentUpdate" runat="server" Width="80%"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            window.onunload  = refreshParent;
            function refreshParent() {
               window.opener.location.href='wf-helpdesk-monitor.aspx';
            }
        </script>
    </telerik:RadCodeBlock> 
    </form>
</body>
</html>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <table>
        <tr>

        </tr>
        <tr>
            <td>Remarks</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtCurrentUpdate" runat="server" Width="80%"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            window.onunload  = refreshParent;
            function refreshParent() {
               window.opener.location.href='wf-helpdesk-monitor.aspx';
            }
        </script>
    </telerik:RadCodeBlock> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>--%>
