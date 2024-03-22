<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-projectdb.aspx.cs" Inherits="ServiceDesk3d.wf_projectdb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Customer Informations" Selected="True">
                <TabTemplate>
                    Project
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Project Manager">
                <TabTemplate>
                    Project Manager
                </TabTemplate>
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Search">
                <TabTemplate>
                    Search
                </TabTemplate>
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0">
        <telerik:RadPageView runat="server" TabIndex="0">
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="20" >
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="10" HeaderStyle-Height="15px" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="11">
                    <Columns>
                        <telerik:GridBoundColumn DataField="ProjectID" HeaderText="Project ID"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name"></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Commercial">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbcommercial" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbcommercial" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbcommercial") %>' />
                                    <!--<%# Eval("dbcommercial") %>-->
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="useLinkButtondbcommercial" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbcommercialtooltip") %>
                                </telerik:RadToolTip>

                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Technical Design">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbtechnicaldesign" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbtechnicaldesign" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbtechnicaldesign") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip2" runat="server" TargetControlID="useLinkButtondbtechnicaldesign" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbtechnicaldesigntooltip") %>
                                </telerik:RadToolTip>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Schedule">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbschedule" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbschedule" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbschedule") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip3" runat="server" TargetControlID="useLinkButtondbschedule" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbscheduletooltip") %>
                                </telerik:RadToolTip>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Team Resources">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbteamresources" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbteamresources" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbteamresources") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip4" runat="server" TargetControlID="useLinkButtondbteamresources" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbteamresourcestooltip") %>
                                </telerik:RadToolTip>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Logistic">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondblogistic" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dblogistic" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dblogistic") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip5" runat="server" TargetControlID="useLinkButtondblogistic" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    Logistic summaries
                                </telerik:RadToolTip>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Technical Issues">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbtechnicalissues" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbtechnicalissues" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbtechnicalissues") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip6" runat="server" TargetControlID="useLinkButtondbtechnicalissues" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbtechnicalissuestooltip") %>
                                </telerik:RadToolTip>

                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Customer">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbcustomer" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbcustomer" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbcustomer") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip7" runat="server" TargetControlID="useLinkButtondbcustomer" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    Customer summaries
                                </telerik:RadToolTip>

                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Financial">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButtondbfinancial" runat="server" CommandArgument='<%# Eval("projectid") %>' CommandName="dbfinancial" OnCommand="useLinkButton_Command1">
                                    <img src='images/<%# Eval("dbfinancial") %>' />
                                </asp:LinkButton>
                                <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip8" runat="server" TargetControlID="useLinkButtondbfinancial" Width="150px"
                                    RelativeTo="Element" Position="MiddleRight">
                                    <%# Eval("dbfinancialtooltip") %>
                                </telerik:RadToolTip>

                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
        <!--- Peoject Manager Timeline----->
            <telerik:RadAjaxManager runat="server" ID="RadAjaxManager" >
                <AjaxSettings>
                    <telerik:AjaxSetting AjaxControlID="RadGantt1">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl  ControlID="RadGantt1"/>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings>
            </telerik:RadAjaxManager>
            <telerik:RadGantt RenderMode="Lightweight" runat="server" ID="RadGantt1"  
                AutoGenerateColumns="false" SelectedView="WeekView" ReadOnly="true" 
                EnableResources="true">
                <Columns>
                    <telerik:GanttBoundColumn DataField="Title" DataType="String"></telerik:GanttBoundColumn>        
                    <telerik:GanttBoundColumn DataField="Start" DataType="DateTime" DataFormatString="dd/MM/yy HH:mm:ss"></telerik:GanttBoundColumn>
                    <telerik:GanttBoundColumn DataField="End" DataType="DateTime" DataFormatString="dd/MM/yy HH:mm:ss"></telerik:GanttBoundColumn>
                </Columns>            
            </telerik:RadGantt>
            <!--<telerik:GanttResourceColumn HeaderText="Asssigned Resources"></telerik:GanttResourceColumn> -->
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="2">
            <div>
                <telerik:RadButton ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-sky shiny" Style="width: 161px" OnClick="btnSearch_Click" />
                <telerik:RadButton ID="RadButton2" runat="server" Text="Create New" CssClass="btn btn-sky shiny" Style="width: 161px" OnClick="RadButton2_Click" />
                <table>
                    <tr>
                        <%--<td>Country</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>--%>
                        <td>Project Manager</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpProjectManager" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Project ID</td>
                        <td>:</td>
                        <td>
                            <telerik:RadTextBox ID="txtProjectID" runat="server" Width="250px"></telerik:RadTextBox>
                        </td>
                        <td>Project Name</td>
                        <td>:</td>
                        <td>
                            <telerik:RadTextBox ID="txtProjectName" runat="server" Width="250px"></telerik:RadTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Customer</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpCustomer" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>

                        <td>Status</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpStatus" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>
                    </tr>

                   

                    <tr>
                        <td>Category</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpCategory" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>

                        <td>Delivery Status</td>
                        <td>:</td>
                        <td>
                            <telerik:RadComboBox ID="drpDeliveryStatus" runat="server" Width="250px"></telerik:RadComboBox>
                        </td>
                    </tr>

                    
                </table>
                <telerik:RadButton ID="RadButton1" runat="server" Text="Search" CssClass="btn btn-sky shiny" Style="width: 161px" OnClick="btnSearch_Click" />
            </div>
            <telerik:RadGrid ID="RadGrid2" runat="server" Visible="true" AutoGenerateColumns="false" OnPageIndexChanged="RadGrid2_PageIndexChanged">
                <ClientSettings EnableRowHoverStyle="false"></ClientSettings>
                <MasterTableView Font-Size="10" HeaderStyle-Height="16px">
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Project ID">
                            <ItemTemplate>
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("projectid") %>'
                                    CommandName="Show" OnCommand="useLinkButton_Command1" Text='<%# Eval("projectid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustomerID" HeaderText="Customer"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PlanFrom" HeaderText="PlanFrom Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PlanTo" HeaderText="PlanTo Date" DataFormatString="{0:dd/MM/yy}"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusid" HeaderText="Status"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CategoryID" HeaderText="Category"></telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="CountryID" HeaderText="Country"></telerik:GridBoundColumn>--%>
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-project.aspx?projectid=<%#DataBinder.Eval(Container.DataItem,"projectid")%>&show=<%#DataBinder.Eval(Container.DataItem,"projectid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "projectid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
    </telerik:RadMultiPage>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
