<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-emailtemplate.aspx.cs" Inherits="ServiceDesk3d.wf_emailtemplate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
    <script type="text/javascript">
            function showClearPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
         }
         function showRemovePrompt(sender, args) {
                var answer = confirm("Are you sure you want to remove this email template?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
     <h2>Email Templates</h2>
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Visible="false" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" Visible="false" CssClass="GreenButton"  />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" Visible="false" CssClass="GreyButton" />
        <table>
            <tr>
                <td style="height: 26px">Email Template ID</td>
                <td class="auto-style2">:</td>
                <td colspan="4" class="auto-style3">
                    <telerik:RadLabel runat="server" ID="lblTemplateID"></telerik:RadLabel>
                    <telerik:RadTextBox ID="txtTemplateID" runat="server" Width="250px" Visible="false" ReadOnly="true"></telerik:RadTextBox></td>
            </tr>
            <tr>
                <td style="height: 26px">Email Template Description</td>
                <td class="auto-style2">:</td>
                <td colspan="4" class="auto-style3">
                    <telerik:RadLabel runat="server" ID="lblTemplateDescription"></telerik:RadLabel>
                    <telerik:RadTextBox ID="txtTemplateDescription" runat="server" Width="250px" Visible="false" ReadOnly="true"></telerik:RadTextBox></td>
            </tr>
            <tr>
                <td style="height: 26px">Email Subject Template</td>
                <td class="auto-style2">:</td>
                <td colspan="4" class="auto-style3">
                    <telerik:RadTextBox ID="txtSubjectTemplate" runat="server" Width="80%" TextMode="MultiLine" Height="75px"></telerik:RadTextBox></td>
            </tr>
            <tr>
                <td>Email Body Template</td>
                <td class="auto-style1">:</td>
                <td colspan="4">
                                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtEmailTemplateHtml" NewLineMode="Br" Width="80%" Height="300px" CssClass="styles/radeditor.css">
                                            <CssFiles>
                                                <telerik:EditorCssFile Value="styles/radeditor.css" />
                                            </CssFiles>
                                            <Tools>
                                                <telerik:EditorToolGroup>
                                                    <telerik:EditorTool Name="FindAndReplace" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="Bold" />
                                                    <telerik:EditorTool Name="Italic" />
                                                    <telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="ForeColor" />
                                                    <telerik:EditorTool Name="BackColor" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="FontName" />
                                                    <telerik:EditorTool Name="RealFontSize" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="JustifyLeft" />
                                                    <telerik:EditorTool Name="JustifyRight" />
                                                    <telerik:EditorSeparator Visible="true" />
                                                    <telerik:EditorTool Name="LinkManager" />
                                                    <telerik:EditorTool Name="Links" />
                                                    <telerik:EditorTool Name="InsertLink" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                            <Content>         
                                            </Content>
                                        </telerik:RadEditor>
                    <telerik:RadTextBox ID="txtEmailTemplate" Visible="false" runat="server" Width="80%" TextMode="MultiLine" Height="300px"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <td>Add Information Templates</td>
                <td class="auto-style1">:</td>
                <td colspan="4">
                    <telerik:RadButton ID="btnAddTicketID" runat="server" Text="Add Ticket ID" OnClick="btnAddTicketID_Click" />
                    <telerik:RadButton ID="btnAddStatus" runat="server" Text="Add Ticket Status" OnClick="btnAddStatus_Click" />
                    <telerik:RadButton ID="btnAddAssignTo" runat="server" Text="Add Assigned To" OnClick="btnAddAssignTo_Click" />
                    <telerik:RadButton ID="btnAddDescription" runat="server" Text="Add Description" OnClick="btnAddDescription_Click" />
                    <telerik:RadButton ID="btnAddAssetID" runat="server" Text="Add Asset ID" OnClick="btnAddAssetID_Click" />
                    <telerik:RadButton ID="btnAddAssetRentalID" runat="server" Text="Add Rental ID" OnClick="btnAddAssetRentalID_Click" />
                </td>
            </tr>
        </table>
            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Email Template List" Selected="True">
                <TabTemplate>
                   Email Template List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Visible="false" Text="Event Log">
                <TabTemplate>
                  Event Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="gvEmailTemplates" runat="server" Visible="true" AllowSorting="true" OnSortCommand="gvEmailTemplates_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="gvEmailTemplates_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Template ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("emailtemplateid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("emailtemplateid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailtemplatedesc" HeaderText="Template Description"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubjecttemplate" HeaderText="Subject Template"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailbodytemplate" HeaderText="Body Template"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
