<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-process.aspx.cs" Inherits="ServiceDesk3d.wf_process"  ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
.Default.reWrapper{border:1px solid #828282}.Default.RadEditor{background-color:#eee}.Default.reWrapper{border:1px solid #828282}.Default.RadEditor{background-color:#eee}.RadEditor{-moz-box-sizing:content-box;box-sizing:content-box}.RadEditor{-moz-box-sizing:content-box;box-sizing:content-box}.reWrapper_corner{font-size:1px;line-height:1px}.reWrapper_corner{border:0;padding:0}.reWrapper_corner{font-size:1px;line-height:1px}.reWrapper_corner{border:0;padding:0}.reWrapper_center{font-size:1px;line-height:1px}.reWrapper_center{border:0;padding:0}.reWrapper_center{font-size:1px;line-height:1px}.reWrapper_center{border:0;padding:0}.reLeftVerticalSide{padding:1px}.reLeftVerticalSide{font-size:1px;line-height:1px}.reLeftVerticalSide{border:0;padding:0}.reLeftVerticalSide{padding:1px}.reLeftVerticalSide{font-size:1px;line-height:1px}.reLeftVerticalSide{border:0;padding:0}
         .auto-style1 {
             width: 17px;
         }
         .RadEditor.reWrapper .reToolCell{vertical-align:top;padding-bottom:1px}.RadEditor.reWrapper .reToolCell{vertical-align:top;padding-bottom:1px}.reToolCell{border:0;padding:0}.reToolCell{border:0;padding:0}.reToolbarWrapper{margin-top:0}.reToolbarWrapper{margin-top:0}.reRightVerticalSide{padding:1px}.reRightVerticalSide{font-size:1px;line-height:1px}.reRightVerticalSide{border:0;padding:0}.reRightVerticalSide{padding:1px}.reRightVerticalSide{font-size:1px;line-height:1px}.reRightVerticalSide{border:0;padding:0}.Default.RadEditor .reContentCell{background-color:white}.Default.RadEditor .reContentCell{border:1px solid #828282}.Default.RadEditor .reContentCell{background-color:white}.Default.RadEditor .reContentCell{border:1px solid #828282}.RadEditor .reContentCell{vertical-align:top}.RadEditor .reContentCell{vertical-align:top}.reContentCell{background-color:#fff}.reContentCell{border:0;padding:0}.reContentCell{background-color:#fff}.reContentCell{border:0;padding:0}.reToolZone{border:0;padding:0}.reToolZone{border:0;padding:0}.reEditorModesCell{border:0;padding:0}.reEditorModesCell{border:0;padding:0}.Default.RadEditor .reEditorModes{background-color:#eee}.Default.RadEditor .reEditorModes{background-color:#eee}.reEditorModes{float:left;padding:1px 0!important}.reEditorModes{float:left;padding:1px 0!important}.reEditorModes ul{padding:0!important;margin:0!important;list-style:none!important}.reEditorModes ul{padding:0!important;margin:0!important;list-style:none!important}.reEditorModes li{float:left!important}.reEditorModes li{padding:0!important;margin:0!important;list-style:none!important}.reEditorModes li{float:left!important}.reEditorModes li{padding:0!important;margin:0!important;list-style:none!important}.reBottomZone{text-align:right;vertical-align:bottom}.reBottomZone{border:0;padding:0}.reBottomZone{text-align:right;vertical-align:bottom}.reBottomZone{border:0;padding:0}.RadEditor .reResizeCell{vertical-align:bottom;text-align:right;position:relative}.RadEditor .reResizeCell{vertical-align:bottom;text-align:right;position:relative}.reResizeCell{border:0;padding:0}.reResizeCell{border:0;padding:0}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton"/>
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" CssClass="GreyButton" />
    </div>
    <table>
        <tr>
            <td>Process ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtBusProcId" runat="server" Enabled="false"></telerik:RadTextBox>
            </td>
            <td>Status</td>
            <td>:</td>
            <td>
                <telerik:RadCheckBox ID="cbxBusProcStatus" runat="server" Text="Active">
                </telerik:RadCheckBox>
            </td>
        </tr>
        <tr>
            <td>Process Name</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtBusProcName" runat="server" Width="88%"></telerik:RadTextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>No
            </td>
            <td>Target Operand
            </td>
            <td>Target 1 Expression
            </td>
            <td>Target Condition
            </td>
            <td>Target 2 Expression
            </td>
        </tr>
        <tr>
            <td>1
            </td>
            <td></td>
            <td>
                <telerik:RadComboBox ID="ddltarget1exp1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget1con" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget1exp2" runat="server" Width="250px"></telerik:RadComboBox>
            </td>

        </tr>
        <tr>
            <td>2
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget2opr" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget2exp1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget2con" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget2exp2" runat="server" Width="250px"></telerik:RadComboBox>
            </td>

        </tr>
        <tr>
            <td>3
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget3opr" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget3exp1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget3con" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget3exp2" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>4
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget4opr" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget4exp1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget4con" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget4exp2" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>5
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget5opr" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget5exp1" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget5con" runat="server"></telerik:RadComboBox>
            </td>
            <td>
                <telerik:RadComboBox ID="ddltarget5exp2" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Preset Emails
            </td>
            <td>&nbsp;</td>
            <td>Action Recipient&#39;s</td>
            <td>Adhoc Email</td>
        </tr>
        <tr>
            <td>
                <asp:ListBox ID="lbPresetRecipientEmails" runat="server" Height="100px"
                    SelectionMode="Multiple" Width="232px" />
            </td>
            <td>
                <asp:Button ID="btnERSelectSingle" runat="server" Text="  >" OnClick="btnERSelectSingle_Click" /><br />
                <asp:Button ID="btnERSelectAll" runat="server" Text=">>" OnClick="btnERSelectAll_Click" /><br />
                <asp:Button ID="btnERWithdrawSingle" runat="server" Text="  <" OnClick="btnERWithdrawSingle_Click" /><br />
                <asp:Button ID="btnERWithdrawAll" runat="server" Text="<<" OnClick="btnERWithdrawAll_Click" />
            </td>
            <td>
                <br />
                <asp:ListBox ID="lbEmailRecipients" runat="server" Height="100px"
                    SelectionMode="Multiple" Width="236px" />
            </td>
            <td>&nbsp;<br />
                <asp:TextBox ID="txtManualEmails" runat="server" Width="150px" />
                <br />
                <asp:Button ID="btnAddManualEmail" runat="server" Text="Add to Recipient" OnClick="btnAddManualEmail_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>Subjects :</td>
            <td colspan="2">&nbsp;<asp:TextBox ID="txtSubjects" runat="server" Height="22px" MaxLength="255"
                Width="512px" Wrap="true" />
            </td>
        </tr>
        <tr>
            <td>Preset Expressions</td>
            <td>&nbsp;</td>
            <td colspan="2">Message Body                                                                                
            </td>
            </tr>
                                                                        <tr>
                                                                            <td>&nbsp;<asp:ListBox ID="lbPresetEmailExpressions" runat="server" Height="100px"
                                                                                SelectionMode="Multiple" Width="232px" />
                                                                            </td>
            <td>
                <asp:Button ID="btnEBSelectSingle" runat="server"
                    OnClick="btnEBSelectSingle_Click" Text="  >" /><br />
                <asp:Button ID="btnEBSelectAll" runat="server" OnClick="btnEBSelectAll_Click"
                    Text=">>" />
            </td>
            <td colspan="2">

                            <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtEmailBodyx" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
                                <CssFiles>
                                     <telerik:EditorCssFile Value="styles/radeditor.css" />
                                 </CssFiles>
                                <Tools>
                                    <telerik:EditorToolGroup>
                                        <telerik:EditorTool Name="FindAndReplace" />
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="Undo" />
                                        <telerik:EditorTool Name="Redo" />
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="Cut" />
                                        <telerik:EditorTool Name="Copy" />
                                        <telerik:EditorTool Name="Paste" />  
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="Bold" />  
                                        <telerik:EditorTool Name="Italic" />  
                                        <telerik:EditorTool Name="Underline" />  
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="ForeColor" />  
                                        <telerik:EditorTool Name="BackColor" />  
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="FontName" />  
                                        <telerik:EditorTool Name="RealFontSize" />  
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="JustifyLeft" />  
                                        <telerik:EditorTool Name="JustifyRight" />  
                                        <telerik:EditorSeparator Visible="true"/>
                                        <telerik:EditorTool Name="LinkManager" />  
                                        <telerik:EditorTool name="Links" />  
                                        <telerik:EditorTool name="InsertLink" />  
                                    </telerik:EditorToolGroup>                                     
                                </Tools> 
                                <Content>         
                                </Content>
                            </telerik:RadEditor>

            </td>
        </tr>
    </table>
    <div>
        <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false" AllowPaging="true" MasterTableView-PageSize="10" >
            <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
            <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                <Columns>
                    <telerik:GridTemplateColumn HeaderText="BR ID">
                        <ItemTemplate>
                            <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("brid") %>'
                                CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("brid") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridBoundColumn DataField="brname" HeaderText="Process Name"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Status" HeaderText="Status"></telerik:GridBoundColumn>
                </Columns>
                <PagerStyle PageSizeControlType="None" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
</asp:Content>
