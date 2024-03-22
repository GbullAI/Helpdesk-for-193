<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-user.aspx.cs" Inherits="ServiceDesk3d.wf_user" %>
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
                var answer = confirm("Are you sure you want to remove this user?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:SqlDataSource runat="server" ID="SqlDataSourceCountry" ProviderName="MySql.Data.MySqlClient" /> --%>
    <asp:SqlDataSource runat="server" ID="SqlDataSourceGroup" ProviderName="MySql.Data.MySqlClient" /> 
    <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="300px" Height="300px" ShowCloseButton="true" EnableShadow="true">
    </telerik:RadNotification>
    <div class="formRow">
                <telerik:RadButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" style="width: 61px" CssClass="BlueButton" />
                <telerik:RadButton ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" CssClass="GreenButton" />
                <telerik:RadButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
                <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt" Visible="false" CssClass="RedButton" />
                <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
    <div>
       <table >
           <tr>
               <td>User ID <span style="color:red">*</span></td><td>:</td><td><telerik:RadTextBox ID="txtuserid" runat="server" Width="250px" /></td>
               <td>First Name</td><td>:</td><td><telerik:RadTextBox ID="txtname" runat="server" Width="250px" /></td>
           </tr>
           <tr>
               <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
               <td>Last Name</td><td>:</td><td><telerik:RadTextBox ID="txtnamelast" runat="server" Width="250px" OnTextChanged="txtnamelast_TextChanged" /></td>
           </tr>
           <tr>
               <td>Password</td><td>:</td><td><telerik:RadTextBox ID="txtpassword" runat="server" autocomplete="new-password" TextMode="Password" Width="250px"/></td>
               <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
               <%--<td>Country</td><td>:</td><td><telerik:RadComboBox ID="drpCountry" runat="server" Width="250px"></telerik:RadComboBox></td>--%>
           </tr>
           <tr>
               <td>Repeat Password</td><td>:</td><td><telerik:RadTextBox ID="txtretypepassword" TextMode="Password" runat="server" Width="250px"/></td>
               <td>Email <span style="color:red">*</span></td><td>:</td><td><telerik:RadTextBox ID="txtemail" runat="server" Width="250px" InputType="Email" /></td>
           </tr>
           <tr>
               <td>Mobile No</td><td>:</td><td><telerik:RadTextBox ID="txtmobileno" runat="server" Width="250px"  InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true" /></td>
               <td>Office No</td><td>:</td><td><telerik:RadTextBox ID="txtphoneno" runat="server" Width="250px"  InputType="Number" ShowButton="false"  MinValue="0" onkeydown="javascript: return event.keyCode == 69 ? false : true" /></td>
           </tr>
           <tr>
               <td>System Role <span style="color:red">*</span></td><td>:</td><td><telerik:RadComboBox ID="ddlrole" runat="server" Width="250px"></telerik:RadComboBox></td>
               <td></td><td></td><td></td>
           </tr>
           <tr>
               <td hidden="hidden">Department</td><td hidden="hidden">:</td><td hidden="hidden"><telerik:RadComboBox ID="ddllevel" runat="server" Width="250px"></telerik:RadComboBox></td>
               <td>Group <span style="color:red">*</span></td><td>:</td><td><telerik:RadComboBox ID="ddldepartment" runat="server" Width="250px"></telerik:RadComboBox></td>
               <td>Superior <span style="color:red">*</span></td><td>:</td><td><telerik:RadComboBox ID="drpSuperior" runat="server" Width="250px"></telerik:RadComboBox></td>
           </tr>
           <tr>
               <td hidden="hidden">Level</td><td hidden="hidden">:</td><td hidden="hidden"><telerik:RadComboBox ID="drpRateGroup" runat="server" Width="250px"></telerik:RadComboBox></td>
               <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
           </tr>
           <tr>
               <td>Is Force Change Password</td><td>:</td>
            <td><telerik:RadCheckBox ID="cbxIsForceChangePassword" runat="server" Checked="false"></telerik:RadCheckBox></td>
               <td>Status</td><td>:</td><td>
                   <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                    <asp:Button ID="cmdResetStatus" runat="server" Text="" OnClick="cmdResetStatus_Click" />
                                        </td>
              <%-- <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>--%>
           </tr>
            <tr hidden="hidden">
               <td>changepassword</td><td>:</td><td><telerik:RadTextBox ID="txtChangePassword" runat="server" Width="250px"></telerik:RadTextBox></td>
                <td>IsFirstLogin</td><td>:</td><td><telerik:RadTextBox ID="txtIsFirstLogin" runat="server" Width="250px"></telerik:RadTextBox></td>
                <%--<td>Is Force Change Password</td><td>:</td>
            <td><telerik:RadCheckBox ID="cbxForceChangePassword" runat="server" Checked="false"></telerik:RadCheckBox></td>--%>
           </tr>
               <%--<tr>
               <td>Country Access</td><td>:</td><td colspan="4"><telerik:RadAutoCompleteBox RenderMode="Lightweight" ID="txtCountryAccess" runat="server" AllowCustomEntry="true"
    InputType="Token" Delimiter=";" DataSourceID="SqlDataSourceCountry" DataTextField="CountryDesc" DataValueField="CountryID" Width="80%">
</telerik:RadAutoCompleteBox></td>
           </tr>--%>
           
           <tr>
               <td>Group Access</td><td>:</td><td colspan="4"><telerik:RadAutoCompleteBox RenderMode="Lightweight" ID="txtGroupAccess" runat="server" AllowCustomEntry="true"
    InputType="Token" Delimiter=";" DataSourceID="SqlDataSourceGroup" DataTextField="departmentdesc" DataValueField="departmentid" Width="80%" OnClientEntryAdding="restrictDuplicateEntry" OnEntryRemoved="txtGroupAccess_EntryRemoved" OnEntryAdded="txtGroupAccess_EntryAdded">
</telerik:RadAutoCompleteBox></td>
           </tr>
          
       </table>
    </div>
    <telerik:RadTextBox ID="txtGroupAccessRemove" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
        <telerik:RadTextBox ID="txtGroupAccessAdd" runat="server" Visible="false" Width="44px"></telerik:RadTextBox>
<telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Users" Selected="True">
                <TabTemplate>
                    Users
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Event Log">
                <TabTemplate>
                    Event Log
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
    <telerik:RadGrid ID="GridView1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" OnSortCommand="GridView1_SortCommand" MasterTableView-PageSize="20" OnPageIndexChanged="GridView1_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="User ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("userid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("userid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="userfirstname" HeaderText="Name" ></telerik:GridBoundColumn>                        
                        <telerik:GridBoundColumn DataField="role" HeaderText="Role" ></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="levelid" HeaderText="Department" ></telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="departmentid" HeaderText="Group" ></telerik:GridBoundColumn>     
                        <telerik:GridBoundColumn DataField="mobileno" HeaderText="Mobile No" ></telerik:GridBoundColumn>                   
                        <telerik:GridBoundColumn DataField="phoneno" HeaderText="Office No" ></telerik:GridBoundColumn>      
                        <telerik:GridBoundColumn DataField="supervisor" HeaderText="Superior" ></telerik:GridBoundColumn>    
                        <telerik:GridBoundColumn DataField="GroupID" HeaderText="Level" ></telerik:GridBoundColumn>    
                        <%--<telerik:GridBoundColumn DataField="countryid" HeaderText="Country" ></telerik:GridBoundColumn>--%>                                
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
             <h3><asp:Label runat="server" ID="lblAuditTrail" Text="Event Log"></asp:Label></h3>
            <telerik:RadGrid ID="GridViewAuditTrail" runat="server"  AllowSorting="true" Visible="true" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="8" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="12px" AlternatingItemStyle-Height="12px" HeaderStyle-Height="14px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="audittrailid" HeaderText="Log ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="audittraildesc" HeaderText="Notes"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createdby" HeaderText="Created by"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
             <h3><asp:Label runat="server" ID="Label1" Text="Delete Log"></asp:Label></h3>
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
    <telerik:RadCodeBlock runat="server">

        <script type="text/javascript">
            function restrictDuplicateEntry(sender, eventArgs) {
                var entries = sender.get_entries(),
                    count = entries.get_count();

                for (var i = 0; i < count; i++) {
                    if (entries.getEntry(i).get_text() == eventArgs.get_entry().get_text())
                    {
                        eventArgs.set_cancel(true);
                        return;
                    }
                }
            }
        </script>

    </telerik:RadCodeBlock>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
