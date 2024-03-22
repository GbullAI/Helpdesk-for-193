<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-sla.aspx.cs" Inherits="ServiceDesk3d.wf_sla"  ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <script type="text/javascript">
            function showClearPrompt(sender, args) {
                var answer = confirm("Filled up information will be clear, are you sure?");

                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
         }

         function showRemovePrompt(sender, args) {
                var answer = confirm("Are you sure you want to remove this sla?");

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
        <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="BlueButton" />
        <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
        <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"  Visible="false" CssClass="GreenButton" />
        <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClientClicking="showRemovePrompt" OnClick="btnRemove_Click"  Visible="false" CssClass="RedButton" />
        <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClientClicking="showClearPrompt" OnClick="btnCancel_Click" CssClass="GreyButton" />
        <telerik:RadCheckBox ID="cbxCopy" runat="server" Checked="false" Text="Copy" ></telerik:RadCheckBox>
    </div>
    <table>
        <tr hidden="hidden">
        <td>SLA Track Type</td>	
            <td>:</td>	
            <td>	
                <telerik:RadComboBox ID="drpSLATrackType" runat="server" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpSLATrackType_SelectedIndexChanged"></telerik:RadComboBox>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>	
        <tr>
            <td>Severity Level</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSLACode" runat="server" Width="250px" OnTextChanged="txtSLACode_TextChanged"></telerik:RadTextBox>
            </td>
            <td>Severity Level Name</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtSLAName" runat="server" Width="250px"></telerik:RadTextBox>
            </td>
        </tr>
        <tr id="rowGroup" runat="server" hidden="hidden">	
            <td>Group</td>	
            <td>:</td>	
            <td>	
                <telerik:RadComboBox ID="drpSLAGroup" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>	
            </td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
            <td>&nbsp;</td>	
        </tr>
        <div runat="server" visible="false">
            
        <tr>
            <td>Log Time From</td>
            <td>:</td>
            <td>
                <telerik:RadTimePicker RenderMode="Lightweight"  ID="RadTimePicker1" TimeView-Interval="00:30:00" runat="server"></telerik:RadTimePicker>
                </td>
            <td>Log Time To</td>
            <td>:</td>
            <td>
                <telerik:RadTimePicker RenderMode="Lightweight"  ID="RadTimePicker2" TimeView-Interval="00:30:00" runat="server"></telerik:RadTimePicker></td>
        </tr>
        <tr>
            <%--<td>Country </td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCountry" runat="server" Width="250px"></telerik:RadComboBox>
            </td>--%>
            <td>Priority</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpPriority" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Customer</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCustomer" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Request Type</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpRequestType" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>   
        <tr>
            <td>&nbsp;</td>
            <td>:</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>:</td>
            <td>
                &nbsp;</td>
        </tr>
            </div>
        <tr hidden="hidden">
            <td>Coverage Day</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCoverageDay" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
            <td>Coverage Hour</td>
            <td>:</td>
            <td>
                <telerik:RadComboBox ID="drpCoverageHour" runat="server" Width="250px"></telerik:RadComboBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Initial Response Time(In Minutes)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtIR" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
            <td>Onsite Time(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtOS" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Resolution Time(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtRT" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td hidden="hidden">NB</td>
            <td hidden="hidden">:</td>
            <td hidden="hidden"><telerik:RadCheckBox ID="cbxNB" runat="server" Text="Yes"></telerik:RadCheckBox></td>            
        </tr>
         <tr hidden="hidden">
            <td>Level 1(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLevel1" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
            <td>Level 2(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLevel2" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Level 3(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLevel3" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
             <td>Level 4(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLevel4" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
        </tr>
        <tr hidden="hidden">
            <td>Level 5(In Hours)</td>
            <td>:</td>
            <td>
                <telerik:RadTextBox ID="txtLevel5" runat="server" Width="250px" InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true"></telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr hidden="hidden">
            <td>Remarks</td>
            <td>:</td>
            <td colspan="4">
                <telerik:RadTextBox ID="txtRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
        </tr>
    </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Severity Level List" Selected="True">
                <TabTemplate>
                    Severity Level List
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Audit Trail" Selected="True">
                <TabTemplate>
                    Audit List
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" MasterTableView-PageSize="10" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Severity Level">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("slaid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("slaid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="sladesc" HeaderText="Severity Level; Name"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="departmentid" HeaderText="Group"></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="coverageday" HeaderText="Coverage Day" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="coveragehour" HeaderText="Coverage Hour" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="InitialResponse" HeaderText="Initial Response(In Minutes)" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="onsitetime" HeaderText="Onsite Time(In Hours)" Visible="false"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="resolutiontime" HeaderText="Resolution Time(In Hours)" Visible="false"></telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>       
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Audit Trail"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
               <h3><asp:Label runat="server" ID="lblDelete" Text="Delete Trail"></asp:Label></h3>
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
    </telerik:RadMultiPage>
</asp:Content>
