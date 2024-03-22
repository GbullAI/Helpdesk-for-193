<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-checklist.aspx.cs" Inherits="ServiceDesk3d.wf_checklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
    <style type="text/css">	
        .BlueButton	
        {	
            background-color: #008CBA !important;	
            color: white !important;	
        }	
        .RedButton	
        {	
            background-color: #f44336 !important;	
            color: white !important;	
        }	
        .GreenButton	
        {	
            background-color: #4CAF50 !important;	
            color: white !important;	
        }	
        .GreyButton	
        {	
            background-color: #808080 !important;	
            color: white !important;	
        }	
        .PurpleButton	
        {	
            background-color: #6A0DAD !important;	
            color: white !important;	
        }	
        .BrownButton	
        {	
            background-color: brown !important;	
            color: white !important;	
        }	
          	
        .YellowButton	
        {	
            background-color: #ff9800 !important;	
            color: white !important;	
        }	
    </style>
    <script type="text/javascript">	
            function showClearPrompt(sender, args) {	
                var answer = confirm("Filled up information will be clear, are you sure?");	
                if (answer) {	
                    sender.click();	
                }	
                else args.set_cancel(true);	
         }	
         function showRemovePrompt(sender, args) {	
                var answer = confirm("Are you sure you want to remove this checklist?");	
                if (answer) {	
                    sender.click();	
                }	
                else args.set_cancel(true);	
            }	
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="333px"></telerik:RadNotification>
    <div class="formRow">
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
    <table>
        <tr>
            <td>ID</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtChecklistID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
            </td>
            <td hidden="hidden">Fault Code</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden">
                <telerik:RadTextBox ID="txtFaultCode" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>Title</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtTitle" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Category</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadComboBox ID="drpSystem" runat="server" Width="250px" ExpandDirection="Down" EnableScreenBoundaryDetection="false" ></telerik:RadComboBox>
            </td>
        </tr> <tr>
            <td>Classifications Tier 1</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadComboBox ID="drpTier1" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down" OnSelectedIndexChanged="drpTier1_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Classifications Tier 2</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadComboBox ID="drpTier2" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down" OnSelectedIndexChanged="drpTier2_SelectedIndexChanged"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>Classifications Tier 3</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadComboBox ID="drpTier3" runat="server" Width="250px" AutoPostBack="true" ExpandDirection="Down"></telerik:RadComboBox>
            </td>
        </tr>
        <tr>
                    <td>Resolution Category</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionCategory" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Type</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionType" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Item</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionItem" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Resolution Method</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpResolutionMethod" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" />
                    </td>
                </tr>
                <tr>
                    <td>Summary</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtResolutionsSummary" TextMode="MultiLine" runat="server" Width="70%" /></td>
                </tr>
                <tr>
                    <td>Resolutions</td>
                    <td>:</td>
                    <td colspan="4">
                        <%--<telerik:RadTextBox ID="txtResolutionsx" TextMode="MultiLine" runat="server" Width="70%" />--%>
                        <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtResolutionsx" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
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
                                    <telerik:EditorTool Name="InsertAnchor" />
                                    <telerik:EditorTool Name="InsertLink" />                                    
                                </telerik:EditorToolGroup>
                            </Tools>
                            <Content>         
                            </Content>
                        </telerik:RadEditor>
                    </td>
                </tr>
                <tr>
                    <td>Root Causes</td>
                    <td>:</td>
                    <td colspan="4">
                        <telerik:RadTextBox ID="txtRootCauses" TextMode="MultiLine" runat="server" Width="70%" /></td>
                </tr>
        <tr hidden="hidden">
            <td>Content</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtDescriptionx" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">
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
                                    <telerik:EditorTool Name="InsertAnchor" />
                                    <telerik:EditorTool Name="InsertLink" />                                    
                                </telerik:EditorToolGroup>
                            </Tools>
                            <Content>         
                            </Content>
                        </telerik:RadEditor>
            </td>    
              </tr> 	
        <tr hidden="hidden">	
            <td>Content</td>	
            <td>:</td>	
            <td colspan="4">	
                <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="txtDescriptionxOld" NewLineMode="Br" Width="80%" Height="200px" CssClass="styles/radeditor.css">	
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
                                    <telerik:EditorTool Name="InsertAnchor" />	
                                    <telerik:EditorTool Name="InsertLink" />                                    	
                                </telerik:EditorToolGroup>	
                            </Tools>	
                            <Content>         	
                            </Content>	
                        </telerik:RadEditor>	
            </td>            
        </tr>        
        <tr hidden="hidden">
            <td>File Name</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtLink" runat="server" Width="555px" LabelWidth="0px" ></telerik:RadTextBox> e.g. guide.html
                </td> 
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Checklist List" Selected="True">
                <TabTemplate>
                    List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Logs">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" Visible="false" runat="server" Text="Delete Log">
                <TabTemplate>
                    Delete Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("checklistid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("checklistid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="checklistdesc" HeaderText="Title"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="FaultCode" HeaderText="Fault Code"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="resolutioncategory" HeaderText="Category"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>     
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="Label1" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" OnSortCommand="GridViewAuditTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewAuditTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                       <%-- <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>

             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Delete Log"></asp:Label></h3>
               <telerik:RadGrid ID="GridViewDeleteTrail" runat="server"  AllowSorting="true" Visible="true"  OnSortCommand="GridViewDeleteTrail_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="10" OnPageIndexChanged="GridViewDeleteTrail_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Deleted by"></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
             </telerik:RadPageView>	
        <telerik:RadPageView runat="server" TabIndex="2">
        </telerik:RadPageView> 
    </telerik:RadMultiPage>
</asp:Content>