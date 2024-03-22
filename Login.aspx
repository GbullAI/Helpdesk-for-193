<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ServiceDesk3d.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server"  />

    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png" />    
    <link rel="apple-touch-icon" sizes="57x57" href="images/apple-icon-57x57.png" />    
    <link rel="android-icon" type="image/png" sizes="36x36"  href="images/android-icon-36x36.png" />
</head>
<%--<body style="background-position: center top; background-color:white; background-repeat: no-repeat;">--%>
<body style="background-position: center top; background-image: url('images/helpdesk-bg.jpg'); background-repeat: no-repeat; overflow:hidden">
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
        <telerik:RadPageLayout ID="RadPageLayout1" runat="server" GridType="Fluid" style="text-align: center; margin-top:120px" EnableAjaxSkinRendering="False" EnableEmbeddedBaseStylesheet="True" EnableEmbeddedScripts="False" EnableEmbeddedSkins="False" HtmlTag="Div" RegisterWithScriptManager="True" RenderMode="Classic" ShowGrid="False">                        
           <telerik:LayoutRow >
               <Columns>

               </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow style="border:1px solid white; border-radius:5px; background-color:lavender; width:600px; margin-left:300px;">                               
                <Columns>
                    <telerik:LayoutColumn>                        
                        <img src="images/jasper-report-logo.png" />
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn>
                        <h4 style="color:black"><asp:Label ID="maintitle" runat="server"></asp:Label><%--Helpdesk & CMMS--%></h4>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn>
                        <telerik:RadTextBox runat="server" ID="txtUserID" EmptyMessage="User ID" Width="200px"></telerik:RadTextBox>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn><br /></telerik:LayoutColumn> 
                    <telerik:LayoutColumn>
                        <telerik:RadTextBox runat="server" ID="txtPassword" Width="200px" EmptyMessage="Password" TextMode="Password" placeholder="Password"></telerik:RadTextBox>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn><%--<a runat="server" href="ForgotPassword.aspx" title="Forgot Password">Forgot Password</a>--%></telerik:LayoutColumn> 
                    <telerik:LayoutColumn><br /></telerik:LayoutColumn> 
                    <telerik:LayoutColumn>
                        <telerik:RadButton runat="server" ID="btnLogin" Width="200px" OnClick="btnLogin_Click" Text="Login"></telerik:RadButton><br /><br />
                        <telerik:RadButton runat="server" ID="btnForgotPassword" Width="200px" OnClick="btnForgotPassword_Click" Text="Forgot Password"></telerik:RadButton>
                        <br /><br /><telerik:RadButton runat="server" ID="btnMobile" Width="200px" OnClick="btnMobile_Click" Text ="Mobile Login" Visible="false" ></telerik:RadButton>
                        <br /><asp:Label runat="server" ID="lblAD" ></asp:Label>
                    </telerik:LayoutColumn>
                </Columns>        
                                  
                    
                
            </telerik:LayoutRow>   
            <telerik:LayoutRow > 
                           <Columns >   
                               </Columns> 
            </telerik:LayoutRow>            
        </telerik:RadPageLayout>
        <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM"></telerik:RadNotification>
        <telerik:RadLabel runat="server" ID="lblDevice"></telerik:RadLabel>
    </form>
</body>
</html>
