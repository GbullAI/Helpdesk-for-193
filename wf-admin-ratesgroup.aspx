<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-admin-ratesgroup.aspx.cs" Inherits="ServiceDesk3d.wf_admin_ratesgroup" %>
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
    <h2>Service Rates Setting</h2>
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
    <asp:Label ID="Label3" runat="server" Visible="true"></asp:Label>
        </p>
    <div id="demo" >
        <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" CssClass="RadGrid" GridLines="None"
            AllowPaging="True" PageSize="20" AllowSorting="True" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="False"
            ShowStatusBar="true" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" 
            AllowAutomaticUpdates="True" DataSourceID="SqlDataSource1" OnItemDeleted="RadGrid1_ItemDeleted"
            OnItemInserted="RadGrid1_ItemInserted" OnItemUpdated="RadGrid1_ItemUpdated" OnItemCommand="RadGrid1_ItemCommand"
            OnPreRender="RadGrid1_PreRender" OnItemDataBound="RadGrid1_ItemDataBound">
            <MasterTableView CommandItemDisplay="TopAndBottom" EditMode="EditForms" DataSourceID="SqlDataSource1" DataKeyNames="rategroupid" >
                <Columns>
                    <telerik:GridEditCommandColumn UniqueName="EditCommandColumn">
                    </telerik:GridEditCommandColumn>                 
                    <telerik:GridBoundColumn UniqueName="RateGroupID" HeaderText="ID" DataField="rategroupid">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="RateGroupDesc" HeaderText="RateGroup Name" DataField="RateGroupDesc">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="IsActive" HeaderText="As Active" DataField="isactive">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="HourRates" HeaderText="Hour Rates" DataField="hourrates">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="DayRates" HeaderText="Day Rates" DataField="DayRates">
                    </telerik:GridBoundColumn>                    
                    <telerik:GridButtonColumn CommandName="Delete" Text="Delete" UniqueName="Delete">
                    </telerik:GridButtonColumn>
                </Columns>
                <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <table id="Table2" style="border-collapse: collapse;">
                            <tr class="EditFormHeader">
                                <td colspan="2">
                                    <b>Service Rates</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table id="Table3" border="0" class="module">
                                        <tr>
                                            <td>Rate Group ID:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("rategroupid") %>' Enabled="false">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Rate Group Name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("rategroupdesc") %>' TabIndex="1">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Is Active:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="drpIsActive" runat="server" Width="100px" SelectedValue='<%# Bind("isactive") %>'>
                                                    <asp:ListItem Value="0" Text="No">No</asp:ListItem>
                                                    <asp:ListItem Value="1" Text="No">Yes</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Hour Rates:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("hourrates") %>' TabIndex="2">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Day Rates:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dayrates") %>' TabIndex="2">
                                                </asp:TextBox>
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
                                <td colspan="2">
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
    <asp:SqlDataSource ID="SqlDataSource1" ProviderName="MySql.Data.MySqlClient" runat="server" ConnectionString="Server=localhost;Database=servicedeskasset_stag;Uid=root;Pwd=rootpass;pooling=false;"
        DeleteCommand="DELETE FROM tblrategroup WHERE rategroupid = @RateGroupID"
        InsertCommand="INSERT INTO tblrategroup(rategroupid,rategroupdesc,isactive,hourrates,dayrates) VALUES (@RateGroupID,@RateGroupDesc,@IsActive,@HourRates,@DayRates)"
        SelectCommand="SELECT * FROM tblrategroup" 
        UpdateCommand="UPDATE tblrategroup SET rategroupid=@RateGroupID,rategroupdesc=@RateGroupDesc,isactive=@IsActive,HourRates=@HourRates,DayRates=@DayRates  WHERE RateGroupID = @RateGroupID">
        <DeleteParameters>
            <asp:Parameter Name="RateGroupID" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RateGroupID" Type="String"></asp:Parameter>
            <asp:Parameter Name="RateGroupDesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="IsActive" Type="Int32" DefaultValue="1"></asp:Parameter>
            <asp:Parameter Name="HourRates" Type="Double"></asp:Parameter>
            <asp:Parameter Name="DayRates" Type="Double"></asp:Parameter>            
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RateGroupID" Type="String"></asp:Parameter>
            <asp:Parameter Name="RateGroupDesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="IsActive" Type="Int32" DefaultValue="1"></asp:Parameter>
            <asp:Parameter Name="HourRates" Type="Double"></asp:Parameter>
            <asp:Parameter Name="DayRates" Type="Double"></asp:Parameter>       
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
