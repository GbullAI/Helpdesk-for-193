<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginSSO.aspx.cs" Inherits="ServiceDesk3d.LoginSSO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server">
    <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
</telerik:RadScriptManager> 
        <div>
            <telerik:RadTextBox ID="txtUserId" runat="server" Visible="false" Width="200px"></telerik:RadTextBox>
            <%--<telerik:RadTextBox ID="txtlocation" runat="server" Visible="true" Width="0px" BorderColor="Transparent"  OnTextChanged="btnLogin_Click"></telerik:RadTextBox>--%>
            <telerik:RadButton runat="server" ID="btnLogin" Width="0px" OnClick="btnLogin_Click" BorderColor="Transparent"></telerik:RadButton>
        </div>

        <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            document.body.onload = function () {
                // document.getElementById("btnLogin").hidden = false;
                document.getElementById("btnLogin").click();
            }

            //window.onload = refreshParent;
            //function refreshParent() {
            //    var location = document.getElementById("txtlocation");
            //    window.opener.location.href = location.innerText;
            //}
        </script>
    </telerik:RadCodeBlock>
    </form>
</body>
</html>
