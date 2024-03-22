<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-dashboardhelpdesk.aspx.cs" Inherits="ServiceDesk3d.wf_dashboardhelpdesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <iframe id="dashboardhelpdesk_iframe" runat="server" style="border:none; width:100%; height:800px;"><br><br>    </iframe>
    </div>
</asp:Content>

