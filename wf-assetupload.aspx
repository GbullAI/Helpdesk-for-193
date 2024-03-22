<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-assetupload.aspx.cs" Inherits="ServiceDesk3d.wf_assetupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
 
    <table>
        <tr>
            <td><h2>Asset Upload</h2></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <asp:Label ID="lblFileUploadInc" runat="server"></asp:Label>
            <asp:FileUpload ID="FileUploadInc" runat="server" />
            <asp:Button CssClass="btn btn-sky shiny" ID="btnUploadInc" Text="Upload" runat="server" accept=".xls,.xlsx" OnClick="btnUploadInc_Click" />
            <br />
            <asp:Label ID="lblUploadMessageInc" runat="server"></asp:Label>
        </tr>
    </table>

    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Asset Rental List" Selected="True">
                <TabTemplate>
                    Asset Uploads List
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="RadGridAssetUpload" runat="server" AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <%--<telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("rid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_CommandGV3" Text='<%# Eval("rid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>--%>
                        <telerik:GridBoundColumn DataField="auattachmentid" HeaderText="ID"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Attachments">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('upload/assetsupload/<%#DataBinder.Eval(Container.DataItem,"Attachments")%>','Scripto','toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=700, width=600, height=800');" href="#" id="a6"><%#DataBinder.Eval(Container.DataItem, "Attachments")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created By"></telerik:GridBoundColumn>	
                        <telerik:GridBoundColumn DataField="createddatetime" HeaderText="Created DateTime" DataFormatString="{0:dd/MM/yyyy HH:mm}"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
         
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>