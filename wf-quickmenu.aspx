<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-quickmenu.aspx.cs" Inherits="ServiceDesk3d.wf_quickmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <telerik:RadNotification runat="server" VisibleOnPageLoad="false" Visible="false" ID="lblM" Width="400px" Height="300px" ShowCloseButton="true" EnableShadow="true" Skin="Sunset">
        <ContentTemplate>
            <table><tr>
                <td>
                    <asp:Image ID="imgRadNotification" runat="server" />
                </td>
                <td>
                    <telerik:RadLabel ID="lblRadNotification" runat="server" Font-Size="22px" ></telerik:RadLabel>
                </td>
                   </tr>            
                </table>
        </ContentTemplate>
    </telerik:RadNotification>
    <div class="formRow">
                                    <telerik:RadButton ID="btnSearch" runat="server" Text="Search"  OnClick="btnSearch_Click" style="width: 61px" CssClass="BlueButton" />
                                    <telerik:RadButton ID="btnNew" runat="server" Text="New"  OnClick="btnNew_Click" CssClass="GreenButton" />
                                    <telerik:RadButton ID="btnSave" runat="server" Text="Save"  OnClick="btnSave_Click" Visible="false" CssClass="GreenButton" />
                                    <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" Visible="false" CssClass="RedButton" />
                                    <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" CssClass="GreyButton" />
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <table>
                                <tr>                                    
                                    <td>Quick Menu ID</td>
                                    <td>:</td>
                                    <td>                                        
                                        <telerik:RadTextBox ID="txtQMID" runat="server" ReadOnly="True" Enabled="false" Width="250px" Visible="true">
                                        </telerik:RadTextBox>
                                    </td>
                                    
                                </tr>
            <tr>                                    
                                    <td>Quick Menu Name <span style="color:red">*</span></td>
                                    <td>:</td>
                                    <td colspan="4">                                        
                                        <telerik:RadTextBox ID="txtQMName" runat="server" ReadOnly="False" Width="90%" Visible="true">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                           
                                    <td>Asset Location</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCategory" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="drpAssetCategory_SelectedIndexChanged1">
                                        </telerik:RadComboBox>
                                    </td>
                                        <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
             <tr>
                            
                            <td>Branch ID</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpAssetSite" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpAssetSite_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                 
                <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                        </tr>
                                <tr>
                                    <td>Equipment ID</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpProduct" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px">
                                        </telerik:RadComboBox>
                                    </td>
                                    
                                     <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
            <tr>
                <td>Customer Name</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpCustomer" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" >
                                        </telerik:RadComboBox>
                                          <telerik:RadButton ID="btnAddNewCustomer" runat="server" Text="" OnClick="btnAddNewCustomer_click" ToolTip="Click here to add new customer" Width="30px">
                                    <Icon PrimaryIconUrl="images/addicon.png" />
                                </telerik:RadButton>
                                <telerik:RadButton ID="btnRefreshCustomer" runat="server" Text="" OnClick="btnRefreshCustomer_click" ToolTip="Click here to reload customer list" Width="30px">
                                    <Icon PrimaryIconUrl="images/refresh.png" />
                                </telerik:RadButton>
                                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                 <td>Request Type</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpTypeOfIncident" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" >
                                        </telerik:RadComboBox>
                                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Sub Request Type</td>	
                            <td>:</td>	
                            <td>	
                                <telerik:RadComboBox ID="drpRequestTypeSub" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true"></telerik:RadComboBox>	
                            </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                            <td>Status</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpStatus" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" Enabled="false" >
                                        </telerik:RadComboBox>
                                    </td>
                        </tr>
            
            <tr>
                                    <td hidden="hidden">Priority</td>
                                    <td hidden="hidden">:</td>
                                    <td hidden="hidden">
                                        <telerik:RadComboBox ID="drpPriority1" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" >
                                        </telerik:RadComboBox>
                                    </td>
                                   <%-- <td>Incident Type II</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadComboBox ID="drpIncidentTypeII" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" >
                                        </telerik:RadComboBox>
                                    </td>--%>
                                </tr>      
            <tr>
                                    
                                    <td hidden="hidden">Channel</td>
                                    <td hidden="hidden">:</td>
                                    <td hidden="hidden">
                                        <telerik:RadComboBox ID="drpChannel" runat="server" Filter="Contains" MarkFirstMatch="true" Width="250px" >
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>  
                                <tr>
                                    <td>Title</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtShortD" runat="server" Width="90%" ReadOnly="False"></telerik:RadTextBox>
                                        
                                    </td>                                    
                                </tr>    
            <tr>
                <td>Current Update</td>
                                    <td>:</td>
                                    <td  colspan="4">
                                        <telerik:RadTextBox ID="txtActionUpdate" runat="server" Width="90%" ReadOnly="False" TextMode="MultiLine" Height="80px"></telerik:RadTextBox>
                                        
                                    </td>
            </tr>
            <tr>
                <td>Descriptions</td>
                                    <td>:</td>
                                    <td  colspan="4">
                                        <telerik:RadTextBox ID="txtLongD" runat="server" Width="90%" ReadOnly="False" TextMode="MultiLine" Height="80px"></telerik:RadTextBox>
                                        
                                    </td>
            </tr>
            
                            </table>
                </td>
                <td>

                    <table>
                        <tr>
                            <td>Severity Level&nbsp<img src="images/infoico64.png" alt="Select Severity Level" title="Select Severity Level" height="15" width="15" />
                            </td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpSLACode" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpSLACode_SelectedIndexChanged1"></telerik:RadComboBox>
                            </td>
                 <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                
                        </tr>
            <tr>
                <td>Urgency</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpUrgency" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpUrgency_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                 <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

                        <tr>
                          
                            <td>Impact&nbsp<img src="images/infoico64.png" alt="Info" title="Select impact of the incident" height="15" width="15" /></td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpImpact" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" AutoPostBack="True" OnSelectedIndexChanged="drpImpact_SelectedIndexChanged"></telerik:RadComboBox>
                            </td>
                             <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                             
                        </tr>
            <tr>
               
                <td>Priority</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpPriority" runat="server" Width="250px" Filter="Contains" MarkFirstMatch="true" Enabled="False"></telerik:RadComboBox>
                            </td>
                 <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                    </table>
                </td>
            </tr>
        </table>
        
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Quick Menu List" Selected="True">
                <TabTemplate>
                    Quick Menu List
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
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AutoGenerateColumns="false"  AllowPaging="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" MasterTableView-PageSize="10" OnPageIndexChanged="RadGrid1_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="false" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("qmid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_Command" Text='<%# Eval("qmid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="qmdesc" HeaderText="Quick Menu Name" ></telerik:GridBoundColumn>
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
                        <%--<telerik:GridBoundColumn DataField="createddate" HeaderText="Date Time" DataFormatString="{0:dd/MM/yyyy hh:mm:ss tt}"></telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="timeused" HeaderText="TimeUsed(Minutes)"></telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
               <h3><asp:Label runat="server" ID="lblDelete" Text="Delete Log"></asp:Label></h3>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
