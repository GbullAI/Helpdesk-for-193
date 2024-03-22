<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-upload.aspx.cs" Inherits="ServiceDesk3d.wf_upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/upload.css" rel="stylesheet" />
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
     <div class="formrow">
          
         <h2>Select file to upload....</h2>
         <label class="control-label">Upload Type : </label>
                                                <asp:DropDownList ID="drpUploadType" runat="server" CssClass="form-control input-xs">
                                                    <asp:ListItem>A</asp:ListItem>
                                                    <asp:ListItem>B</asp:ListItem>
                                                </asp:DropDownList>
         <br />
<asp:FileUpload ID="FileUpload1" runat="server" />
                                                <br />
                                                Records Count :<asp:Label ID="lblCount" runat="server"></asp:Label><br />
                                                <asp:Button CssClass="btn btn-sky shiny" ID="btnUpload" Text="Upload" runat="server" OnClick="UploadMultipleFiles" accept="image/gif, image/jpeg" />
                                                <br />
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Height="111px" Modal="true">               
            </telerik:RadAjaxLoadingPanel> 
         <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" LoadingPanelID="RadAjaxLoadingPanel1">
         <asp:Button class="btn btn-success" ID="btnSuccessx" Text="btnSuccess" runat="server" Visible="false" OnClick="btnSuccessx_Click" />
                                                <asp:Button class="btn btn-warning" ID="btnFailedx" Text="btnFailed" runat="server" Visible="false" />
                                                <asp:Label ID="lblFilename" runat="server"></asp:Label>
                                                <asp:Label ID="lblID" runat="server"></asp:Label>
             <asp:Label ID="Label1" runat="server"></asp:Label>
             </telerik:RadAjaxPanel>
    </div>

    <div class="widget-body" runat="server" id="div_latest" visible="false">
                    <div class="widget-main ">
                        <div class="row">
                            <div class="col-lg-12 col-sm-12 col-xs-12">
                                <div class="widget">
                                    
                                    <div class="widget-header bordered-left bordered-darkorange">
                                        <span class="widget-caption">Latest uploads....</span>
                                    </div>
                                    <div class="widget-body bordered-left bordered-warning">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-bordered" PageSize="20">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Upload ID" HeaderStyle-BackColor="#2dc3e8">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("uploadid") %>'
                                                                CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("uploadid") %>'></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderStyle BackColor="#2DC3E8"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center" Width="100px" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Filename" HeaderText="File Name" HeaderStyle-BackColor="#2dc3e8">
                                                        <HeaderStyle BackColor="#2DC3E8"></HeaderStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="udate" HeaderText="Upload Date" HeaderStyle-BackColor="#2dc3e8" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" DataFormatString="{0:dd/MM/yy}" HtmlEncode="false">
                                                        <HeaderStyle BackColor="#2DC3E8" CssClass="hidden-xs"></HeaderStyle>
                                                        <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="uploadtype" HeaderText="Upload Type" HeaderStyle-BackColor="#2dc3e8" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                        <HeaderStyle BackColor="#2DC3E8" CssClass="hidden-xs"></HeaderStyle>
                                                        <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="datacount" HeaderText="Record Count" HeaderStyle-BackColor="#2dc3e8" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                        <HeaderStyle BackColor="#2DC3E8" CssClass="hidden-xs"></HeaderStyle>
                                                        <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="processdt" HeaderText="Process Date" HeaderStyle-BackColor="#2dc3e8" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs"  DataFormatString="{0:dd/MM/yy}" HtmlEncode="false">
                                                        <HeaderStyle BackColor="#2DC3E8" CssClass="hidden-xs"></HeaderStyle>
                                                        <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="processnotes" HeaderText="Process Results" HeaderStyle-BackColor="#2dc3e8" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                        <HeaderStyle BackColor="#2DC3E8" CssClass="hidden-xs"></HeaderStyle>
                                                        <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>


                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
