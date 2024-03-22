<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-admin-params.aspx.cs" Inherits="ServiceDesk3d.wf_admin_params" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function RowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>        
    </telerik:RadCodeBlock>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><asp:Label ID="lblH2" runat="server" Visible="true"></asp:Label></h2>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="divMsgs"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadFormDecorator RenderMode="Lightweight" ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="true" />
    <p id="divMsgs" runat="server"> 
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM">
    </telerik:RadNotification>
        </p>
    <asp:Label ID="lblName" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblTable" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblIDField" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblDescField" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblID" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblDesc" runat="server" Visible="false"></asp:Label>
    <div id="demo" >
        <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" CssClass="RadGrid" GridLines="None"
            AllowPaging="True" PageSize="20" AllowSorting="True" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="False"
            ShowStatusBar="true" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" 
            AllowAutomaticUpdates="True" DataSourceID="SqlDataSource1" OnItemDeleted="RadGrid1_ItemDeleted"
            OnItemInserted="RadGrid1_ItemInserted" OnItemUpdated="RadGrid1_ItemUpdated" OnItemCommand="RadGrid1_ItemCommand"
            OnPreRender="RadGrid1_PreRender" OnItemDataBound="RadGrid1_ItemDataBound">
            <MasterTableView CommandItemDisplay="TopAndBottom" EditMode="EditForms" DataSourceID="SqlDataSource1" >
                <Columns>
                    <telerik:GridEditCommandColumn>
                    </telerik:GridEditCommandColumn>
                    <telerik:GridBoundColumn UniqueName="IsActive" HeaderText="As Active" DataField="isactive">
                    </telerik:GridBoundColumn>
                    <telerik:GridButtonColumn CommandName="Delete" Text="Delete" UniqueName="column">
                    </telerik:GridButtonColumn>
                </Columns>
                <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <table id="Table2" cellspacing="2" cellpadding="1" width="100%" border="0" rules="none"
                            style="border-collapse: collapse;">
                            <tr class="EditFormHeader">
                                <td colspan="2">
                                    <b>lblName</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table id="Table3" width="450px" border="0" class="module">
                                        <tr>
                                            <td>lblID:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtID" runat="server" Text='<%# Bind("billingfreqid") %>' Enabled="false">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>lblDesc:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDesc" runat="server" Text='<%# Bind("billingfreqdesc") %>' TabIndex="1">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Is Active:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="drpIsActive" runat="server" SelectedValue='<%# Bind("isactive") %>'>
                                                    <asp:ListItem Value="0" Text="No">No</asp:ListItem>
                                                    <asp:ListItem Value="1" Text="No">Yes</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>                                       
                                        
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="btnUpdate" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                                        runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'></asp:Button>&nbsp;
                                    <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False"
                                        CommandName="Cancel"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </FormTemplate>
                </EditFormSettings>
            </MasterTableView>
            <ClientSettings>
                <ClientEvents OnRowDblClick="RowDblClick"></ClientEvents>
            </ClientSettings>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" ProviderName="MySql.Data.MySqlClient" runat="server"  ConnectionString="Server=localhost;Database=helpdesk3dx;Uid=root;Pwd=rootpass;pooling=false;" >
        <DeleteParameters>            
        </DeleteParameters>
        <InsertParameters>            
            <asp:Parameter Name="IsActive" Type="Int32" DefaultValue="1"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IsActive" Type="Int32" DefaultValue="1"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
