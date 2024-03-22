<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf-voice.aspx.cs" Inherits="ServiceDesk3d.wf_voice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <asp:Label ID="lblE" runat="server" Visible="false" ></asp:Label>
        <a href="http://10.23.171.80:8088/api/callrecording/" id="lnkVoice" runat="server" >Click To Play</a>
        </div>
    </form>
</body>
</html>
