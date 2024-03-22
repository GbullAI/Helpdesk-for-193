<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-email.aspx.cs" Inherits="ServiceDesk3d.wf_email" %>
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
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
        </telerik:RadAjaxLoadingPanel>
        <asp:Timer ID="Xtimer" runat="server" Enabled="true" Interval="30000" OnTick="Xtimer_Tick" ></asp:Timer>
     <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="Xtimer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid4"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid5"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rowData"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="RadGrid2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rowData"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="RadGrid4">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rowData"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="RadGrid5">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rowData"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
     </telerik:RadAjaxManager>

   <%--  <asp:UpdatePanel runat="server" ID="updTimer">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Enabled="false" Interval="6666" OnTick="Xtimer_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>--%>

        <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="400px" Height="120px" ShowCloseButton="true" EnableShadow="true" Skin="Sunset">
        <ContentTemplate>
            <table><tr>
                <td>
                    <asp:Image ID="imgRadNotification" runat="server" />
                </td>
                <td>
                    <telerik:RadLabel ID="lblRadNotification" runat="server" Font-Size="18px" ></telerik:RadLabel>
                </td>
                   </tr>            
                </table>
        </ContentTemplate>
    </telerik:RadNotification>
             <div class="formRow">
        <telerik:RadButton ID="btnSearch3" runat="server" Text="Search" OnClick="btnSearch3_Click"  CssClass="BlueButton"  />
                 <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" OnClientClicking="showClearPrompt" CssClass="GreyButton" />
    </div>
            <table>
                 <tr>
                            <td>Attachments</td>
                            <td>:</td>
                            <td >
                                <telerik:RadComboBox ID="drpAttachments" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>
                            </td>
                            <td>Attachments Contains</td>
                            <td>:</td>
                            <td>
                                <telerik:RadRadioButtonList runat="server" ID="radHasAttachments" AutoPostBack="false" CssClass="content" Columns="2" Direction="Horizontal">	
                    <Items>	
                        <telerik:ButtonListItem Text="Yes" Value="1"/>	
                        <telerik:ButtonListItem Text="No" Value="0" />	
                    </Items>	
                </telerik:RadRadioButtonList>	
                                <%--<telerik:RadTextBox ID="RadTextBox2" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>--%>
                            </td>
                        </tr>
                 <tr>
                            <td>From</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtEmailFrom" runat="server" Width="250px" ReadOnly="false" ></telerik:RadTextBox>
                            </td>
                      <td>Body</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtEmailBody" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                           
                        </tr>
                  <tr>
                            <td>Received Date From</td>
                            <td>:</td>
                            <td >
                                <telerik:RadDatePicker ID="txtRDFrom" runat="server" Width="250px" MinDate="1900-01-01" MaxDate="2099-01-01" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>
                            <td>Received Date To</td>
                            <td>:</td>
                            <td>
                                <telerik:RadDatePicker ID="txtRDTo" runat="server" Width="250px" MinDate="1900-01-01" MaxDate="2099-01-01" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>
                        </tr>
                <tr>
                            <td>Subject</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtEmailSubject" runat="server" Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                            <td>To Email</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtEmailTo" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                        </tr>
            </table>
            <table>
                <tr>
                    <td>Mailbox</td>
                    <td>:</td>
                    <td><telerik:RadComboBox ID="drpMailbox" runat="server"  Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpMailbox_SelectedIndexChanged"></telerik:RadComboBox></td>
                </tr>
            </table>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">        
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="New Emails" Selected="True">                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Spam Emails(Last 30 Days)">
            </telerik:RadTab>         
            <telerik:RadTab TabIndex="2" runat="server" Text="No Action(Last 30 Days)">
            </telerik:RadTab>         
            <telerik:RadTab TabIndex="3" runat="server" Text="Search All">
            </telerik:RadTab>         
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" >
        <telerik:RadPageView runat="server" TabIndex="0">      
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="8" OnItemCommand="RadGrid1_ItemCommand" OnPageIndexChanged="RadGrid1_PageIndexChanged" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AllowMultiRowSelection="true">
                <ClientSettings EnableRowHoverStyle="false" >  
                        <Selecting AllowRowSelect="true"  /> 
                        </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px"  >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID" UniqueName="EmailId">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("emailid") %>'
                                                        CommandName="RowClick" Text='<%# Eval("emailid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailfrom" HeaderText="Email From" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailtorecipient" HeaderText="Email To" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="receiveddate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubject" HeaderText="emailsubject" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attcount" HeaderText="Attachments" ></telerik:GridBoundColumn>    
                        <telerik:GridBoundColumn DataField="incidentno" HeaderText="Ticket No" ></telerik:GridBoundColumn>  
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Agent" ></telerik:GridBoundColumn> 
                        <telerik:GridClientSelectColumn HeaderText="Select" UniqueName="forSelect"  ></telerik:GridClientSelectColumn>                
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>            
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
                        <telerik:RadGrid ID="RadGrid2" runat="server" Visible="true" AutoGenerateColumns="false"  AllowPaging="true"  MasterTableView-PageSize="15" OnItemCommand="RadGrid2_ItemCommand" AllowSorting="true" OnSortCommand="RadGrid2_SortCommand" OnPageIndexChanged="RadGrid2_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">  
                        <Selecting AllowRowSelect="true" /> 
                        </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton2" runat="server" CommandArgument='<%# Eval("emailid") %>'
                                                        CommandName="Show"  Text='<%# Eval("emailid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailfrom" HeaderText="Email From" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailtorecipient" HeaderText="Email To" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="receiveddate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubject" HeaderText="emailsubject" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attcount" HeaderText="Attachments" ></telerik:GridBoundColumn>      
                        <telerik:GridBoundColumn DataField="incidentno" HeaderText="Ticket No" ></telerik:GridBoundColumn>   
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Agent" ></telerik:GridBoundColumn>              
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>

        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
                        <telerik:RadGrid ID="RadGrid4" runat="server" Visible="true" AutoGenerateColumns="false"  AllowPaging="true"  MasterTableView-PageSize="15" OnItemCommand="RadGrid4_ItemCommand" AllowSorting="true" OnSortCommand="RadGrid4_SortCommand" OnPageIndexChanged="RadGrid4_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">  
                        <Selecting AllowRowSelect="true" /> 
                        </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton3" runat="server" CommandArgument='<%# Eval("emailid") %>'
                                                        CommandName="Show" Text='<%# Eval("emailid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailfrom" HeaderText="Email From" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailtorecipient" HeaderText="Email To" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="receiveddate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubject" HeaderText="emailsubject" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attcount" HeaderText="Attachments" ></telerik:GridBoundColumn>   
                        <telerik:GridBoundColumn DataField="incidentno" HeaderText="Ticket No" ></telerik:GridBoundColumn>  
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Agent" ></telerik:GridBoundColumn>                   
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>            
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="3">
            <table >
                        <tr>
                            <td>Email Sender</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtSeachFrom" runat="server" Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                            <td>To Email</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSearchTo" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                        </tr>
                <tr>
                            <td>Subject</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtSearchSubject" runat="server" Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                            <td>Body</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtSearchBody" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                        </tr>
                <tr>
                            <td>Ticket No</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtTicket" runat="server" Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                            <td>Agent</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtAgent" runat="server"  Width="250px" ReadOnly="false"  ></telerik:RadTextBox>
                            </td>
                        </tr>
                <tr>
                            <td>Received Date From</td>
                            <td>:</td>
                            <td >
                                <telerik:RadDatePicker ID="txtReceivedDateFrom" runat="server" Width="250px" MinDate="1900-01-01" MaxDate="2099-01-01" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>
                            <td>Received Date To</td>
                            <td>:</td>
                            <td>
                                <telerik:RadDatePicker ID="txtReceivedDateTo" runat="server" Width="250px" MinDate="1900-01-01" MaxDate="2099-01-01" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>
                        </tr>
                <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                               <telerik:RadButton ID="btnSearch2" runat="server" Text="Search" OnClick="btnSearch2_Click" ></telerik:RadButton>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>

                </table> 
                        <telerik:RadGrid ID="RadGrid5" runat="server" Visible="true" AutoGenerateColumns="false"  AllowPaging="true"  MasterTableView-PageSize="50" OnItemCommand="RadGrid5_ItemCommand" AllowSorting="true" OnSortCommand="RadGrid5_SortCommand">
                <ClientSettings EnableRowHoverStyle="false" EnablePostBackOnRowClick="true">  
                        <Selecting AllowRowSelect="true" /> 
                        </ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton4" runat="server" CommandArgument='<%# Eval("emailid") %>'
                                                        CommandName="Show" Text='<%# Eval("emailid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="emailfrom" HeaderText="Email From" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailtorecipient" HeaderText="Email To" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="receiveddate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="emailsubject" HeaderText="emailsubject" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="attcount" HeaderText="Attachments" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="incidentno" HeaderText="Ticket No" ></telerik:GridBoundColumn> 
                        <telerik:GridBoundColumn DataField="assignedto" HeaderText="Agent" ></telerik:GridBoundColumn>                     
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
    <div id="rowData" runat="server">        
                    <table >
                        <tr>
                            <td>Email ID</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtMessageID" runat="server" Width="250px" ReadOnly="true"  ></telerik:RadTextBox>
                            </td>
                            <td>Consign Ticket ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtTicketID" runat="server"  Width="250px" AutoPostBack="true" OnTextChanged="txtTicketID_textchanged"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Message Type</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtMessageType" runat="server"  Width="250px" ReadOnly="true" ></telerik:RadTextBox>
                            </td>                        
                            <td>Received Datetime</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadTextBox ID="txtReceived" runat="server"  Width="250px" ReadOnly="true" ></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>From</td>
                            <td>:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtFrom" runat="server"  Width="75%" ReadOnly="true" ></telerik:RadTextBox>
                            </td>        
                        </tr>
                        <tr>
                            <td>To</td>
                            <td>:</td>
                            <td colspan="4">                                
                                <telerik:RadTextBox ID="txtTo" runat="server"  Width="75%" ReadOnly="true" ></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email CC</td>
                            <td>:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtCC" runat="server"  Width="75%" ReadOnly="true"  ></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Email BCC</td>
                            <td>:</td>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtBCC" runat="server"  Width="75%" ReadOnly="true"  ></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                        <td>Subject</td>
                        <td>:</td>
                        <td colspan="4">
                            <telerik:RadTextBox ID="txtSubject" runat="server"  Width="75%"  ReadOnly="true" ></telerik:RadTextBox>
                        </td>                        
                        </tr>                       
                        <tr>
                        <td>Body Message</td>
                        <td>:</td>
                        <td colspan="4">
                            <telerik:RadEditor RenderMode="Lightweight" EnableResize="true" runat="server" ID="txtBodyHtml" NewLineMode="Br" Width="80%" Height="500px" CssClass="styles/radeditor.css" EditModes="Preview" ViewStateMode="Disabled" AllowScripts="false"  >
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
                         <tr>
                        <td>Attachment</td>
                        <td>:</td>
                        <td colspan="4">
                            <telerik:RadGrid ID="RadGrid3" runat="server" Visible="true" AutoGenerateColumns="false"  AllowPaging="true" AllowSorting="true" OnSortCommand="RadGrid3_SortCommand" MasterTableView-PageSize="99" Width="75%" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>                        
                        <telerik:GridBoundColumn DataField="attid" HeaderText="ID" ></telerik:GridBoundColumn>                 
                        <telerik:GridTemplateColumn HeaderText="File">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('upload/attach/<%#DataBinder.Eval(Container.DataItem,"attfilename")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "attfilename")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
                        </td>                        
                        </tr>
                        <tr>
                            <td colspan="1">
                                Assignment
                            </td>
                            <td colspan="1">
                                :
                            </td>
                            <td colspan="4">
                                <telerik:RadComboBox ID="drpAssignLevel" runat="server" Width="150px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignLevel_SelectedIndexChanged" ExpandDirection="Up" EnableScreenBoundaryDetection="false" Visible="false"></telerik:RadComboBox>
                                <telerik:RadComboBox ID="drpAssignGroup" runat="server" Width="150px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssignGroup_SelectedIndexChanged" ExpandDirection="Up" EnableScreenBoundaryDetection="false" ></telerik:RadComboBox>
                                <telerik:RadComboBox ID="drpAssignIndividual" runat="server" Width="350px" Filter="Contains" MarkFirstMatch="true" ExpandDirection="Up" EnableScreenBoundaryDetection="false" ></telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">Action</td>
                            <td colspan="1"></td>
                            <td colspan="4">
                                <telerik:RadButton ID="btnNew" runat="server" Text="Assign New Ticket" OnClick="btnNew_Click"   />
                                <telerik:RadButton ID="btnCreateSub" runat="server" Text="New Sub Ticket" OnClick="btnCreateSub_Click" Visible="false" ></telerik:RadButton>
                                <telerik:RadButton ID="btnSearch" runat="server" Text="Consign To Ticket" OnClick="btnSearch_Click" />
                                <telerik:RadButton ID="btnSave" runat="server" Text="Tag As SPAM" OnClick="btnSave_Click"   />
                                <telerik:RadButton ID="RadButton1" runat="server" Text="Tag As No Action" OnClick="RadButton1_Click"   />                                
                            </td>
                        </tr>
                        </table>                    
                
    </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
