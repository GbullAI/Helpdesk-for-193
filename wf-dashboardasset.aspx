<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-dashboardasset.aspx.cs" Inherits="ServiceDesk3d.wf_dashboardasset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <iframe  id="dashboardasset_iframe" runat="server" style="border:none; width:100%; height:800px;"><br><br>    </iframe>
    </div>
    <telerik:RadCodeBlock runat="server">        
    </telerik:RadCodeBlock>    
</asp:Content>