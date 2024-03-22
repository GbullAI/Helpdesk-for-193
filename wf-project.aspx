<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wf-project.aspx.cs" Inherits="ServiceDesk3d.wf_project"  ValidateRequest="false" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI.Gantt" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/base.css?version=1" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 110px;
        }
        .auto-style4 {
            width: 172px;
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
                var answer = confirm("Are you sure you want to remove this project?");
                if (answer) {
                    sender.click();
                }
                else args.set_cancel(true);
            }
        </script>
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

                                    <telerik:RadButton ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-sky shiny" Style="width: 61px" OnClick="btnSearch_Click1" />
                                    <telerik:RadButton ID="btnNew" runat="server" Text="New" CssClass="btn btn-sky shiny" OnClick="btnNew_Click1" />
                                    <telerik:RadButton ID="btnSave" runat="server" Text="Save" CssClass="btn btn-sky shiny" OnClick="btnSave_Click1" />
                                    <telerik:RadButton ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-sky shiny" OnClick="btnRemove_Click" OnClientClicking="showRemovePrompt"/>
                                    <telerik:RadButton ID="btnCancel" runat="server" Text="Clear" CssClass="btn btn-sky shiny" OnClick="btnCancel_Click1" OnClientClicking="showClearPrompt" />
                                    <telerik:RadButton ID="btnDashboard" runat="server" Text="Dashboard" CssClass="btn btn-sky shiny" OnClick="btnDashboard_Click" />
    </div>
    <div>
        
                    <table >
                        <tr>
                            <td>Project ID</td>
                            <td>:</td>
                            <td >
                                <telerik:RadTextBox ID="txtProjectID" runat="server" Width="250px" Enabled="false"></telerik:RadTextBox>
                            </td>
                            <td>Project Name</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtProjectName" runat="server"  Width="250px"></telerik:RadTextBox>
                            </td>
                        </tr>
                                                                        <tr>
                        <td>Customer</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpCustomer" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>

                                                                        <tr>
                        <td >Sale Person</td>
                        <td >:</td>
                        <td ><telerik:RadComboBox ID="drpSalePerson" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td >PreSales</td>
                        <td >:</td>
                        <td ><telerik:RadComboBox ID="drpPreSales" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>

                                                                        <tr>
                        <td>Category</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpCategory" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Delivery Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpDeliveryStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>

                                                                        <tr>
                        <td>Project Manager</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpProjectManager" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Solution</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpSolution" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>

                        
                        <tr>
                            <td>Plan Date From</td>
                            <td>:</td>
                            <td>
                                <telerik:RadDatePicker ID="txtPlanDateFromx" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>                        
                            <td>Plan Date To</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadDatePicker ID="txtPlanDateTox" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>
                        </tr>

                        <tr>
                            <td>Commission Date</td>
                            <td>:</td>
                            <td>
                                <telerik:RadDatePicker ID="txtCommissionDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                            </td>                        
                           <%-- <td>Country</td>
                            <td>:</td>
                            <td><telerik:RadComboBox ID="drpCountryAccess" runat="server" Width="250px"></telerik:RadComboBox>                                                                
                            </td>--%>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Currency</td>
                            <td>:</td>
                            <td>
                                <telerik:RadComboBox ID="drpCurrency" runat="server" Width="250px"></telerik:RadComboBox>
                            </td>                        
                            <td>Project Value</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadNumericTextBox ID="txtProjectValuex" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Project Cost</td>
                            <td>:</td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtProjectCostx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                            </td>                        
                            <td>Baseline Cost</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadNumericTextBox ID="txtBaselineCostx" runat="server"  Width="250px" Type="Currency" ReadOnly="True" ></telerik:RadNumericTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Update Cost</td>
                            <td>:</td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtUpdateCostx" runat="server"  Width="250px" Type="Currency" ReadOnly="True" ></telerik:RadNumericTextBox>
                            </td>                        
                            <td>Head Count</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadTextBox ID="txtHeadCount" runat="server"  Width="250px" InputType="Number"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Issue Count</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtIssueCount" runat="server"  Width="250px" InputType="Number"></telerik:RadTextBox>
                            </td>                        
                            <td>Issue Completed</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadTextBox ID="txtIssueCompleted" runat="server"  Width="250px" InputType="Number"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Expenses</td>
                            <td>:</td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtExpensesx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                            </td>                        
                            <td>Bill Amount</td>
                            <td>:</td>
                            <td>                                
                                <telerik:RadNumericTextBox ID="txtBillAmountx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                            </td>
                        </tr>                        
                        <tr>
                            <td>Created By</td>
                            <td>:</td>
                            <td>
                                <telerik:RadTextBox ID="txtCreatedBy" runat="server"  Width="250px"></telerik:RadTextBox>
                            </td>                        
                            <td>Created Date</td>
                            <td>:</td>
                            <td>                                
                                <%--<telerik:RadTextBox ID="txtCreatedDate" runat="server"  Width="250px"></telerik:RadTextBox>--%>
                                 <telerik:RadDateInput ID="txtCreatedDate" runat="server" Width="250px"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput>

                            </td>
                        </tr>

                        <tr>
                        <td>Remarks</td>
                        <td>:</td>
                        <td colspan="4"><telerik:RadTextBox ID="txtRemarks" runat="server" Width="88%" TextMode="MultiLine"></telerik:RadTextBox></td>
                        
                        </tr>

                        </table>                    
                
    </div>
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" OnTabClick="RadTabStrip1_TabClick" ScrollChildren="True" SelectedIndex="0">        
        <Tabs>
            <telerik:RadTab TabIndex="0" runat="server" Text="Customer Informations" Selected="True">                
                <TabTemplate>
                    Project List
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="1" runat="server" Text="Assigment">
                <TabTemplate>
                   Tasks
                </TabTemplate>                                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="2" runat="server" Text="Assigment">
                <TabTemplate>
                   Milestones
                </TabTemplate>                                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="3" runat="server" Text="Incident Details">                
                <TabTemplate>
                    Budget
                </TabTemplate>                
            </telerik:RadTab>
            <telerik:RadTab TabIndex="4" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Ticket
                </TabTemplate>                
            </telerik:RadTab>  
            <telerik:RadTab TabIndex="5" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Contract
                </TabTemplate>                
            </telerik:RadTab>  
            <telerik:RadTab TabIndex="6" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Time Sheet
                </TabTemplate>                
            </telerik:RadTab>   
            <telerik:RadTab TabIndex="7" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Status Updates
                </TabTemplate>                
            </telerik:RadTab>  
            <telerik:RadTab TabIndex="8" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Invoicing
                </TabTemplate>                
            </telerik:RadTab>           
            <telerik:RadTab TabIndex="9" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Booking
                </TabTemplate>                
            </telerik:RadTab>  
            <telerik:RadTab TabIndex="10" runat="server" Text="MACD Details">                
                <TabTemplate>
                    Attachment
                </TabTemplate>                
            </telerik:RadTab>  
        </Tabs>
    </telerik:RadTabStrip>
    <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" >
        <telerik:RadPageView runat="server" TabIndex="0" >
            <telerik:RadGrid ID="RadGrid1" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid1_SortCommand" AutoGenerateColumns="false" AllowPaging="true"  MasterTableView-PageSize="20" OnPageIndexChanged="RadGrid1_PageIndexChanged" >
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Project ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButton" runat="server" CommandArgument='<%# Eval("projectid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_Command1" Text='<%# Eval("projectid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustomerID" HeaderText="Customer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PlanFrom" HeaderText="PlanFrom Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PlanTo" HeaderText="PlanTo Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="statusid" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CategoryID" HeaderText="Category" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CountryID" HeaderText="Country" ></telerik:GridBoundColumn>                        
                        <telerik:GridTemplateColumn HeaderText="View in New Tab">
                            <ItemTemplate>
                                <a onclick="javascript:window.open('wf-project.aspx?projectid=<%#DataBinder.Eval(Container.DataItem,"projectid")%>&show=<%#DataBinder.Eval(Container.DataItem,"projectid")%>');" href="#" id="a6" ><%#DataBinder.Eval(Container.DataItem, "projectid")%></a>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle PageSizeControlType="None" />
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="1">
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
    AutoGenerateColumns="false" SelectedView="WeekView" 
    EnableResources="true" OnTaskUpdate="RadGantt1_TaskUpdate" OnTaskInsert="RadGantt1_TaskInsert" OnTaskDelete="RadGantt1_TaskDelete" OnDependencyInsert="RadGantt1_DependencyInsert" OnDependencyDelete="RadGantt1_DependencyDelete" OnAssignmentDelete="RadGantt1_AssignmentDelete" OnAssignmentInsert="RadGantt1_AssignmentInsert" OnAssignmentUpdate="RadGantt1_AssignmentUpdate">
    <Columns>
        <telerik:GanttBoundColumn DataField="Title" DataType="String"></telerik:GanttBoundColumn>        
        <telerik:GanttBoundColumn DataField="Start" DataType="DateTime" DataFormatString="dd/MM/yy HH:mm:ss"></telerik:GanttBoundColumn>
        <telerik:GanttBoundColumn DataField="End" DataType="DateTime" DataFormatString="dd/MM/yy HH:mm:ss"></telerik:GanttBoundColumn>
    </Columns>            
</telerik:RadGantt>
            <!--<telerik:GanttResourceColumn HeaderText="Asssigned Resources"></telerik:GanttResourceColumn> -->
        </telerik:RadPageView>

                <telerik:RadPageView runat="server" TabIndex="2">
            <table>
                <tr>
                    <td >
                        <fieldset>
                            <legend>Milestone</legend>
                            <table >
                                <tr>
                                    <td class="auto-style4">Milestone Descriptions</td>
                                    <td>:</td>
                                    <td><telerik:RadTextBox ID="txtMileStoneName" runat="server"  Width="250px"></telerik:RadTextBox></td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Task</td>
                                    <td>:</td>
                                    <td><telerik:RadComboBox ID="drpTask" runat="server" Width="250px"></telerik:RadComboBox> </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">Milestone Amount</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtMileStoneAmount" runat="server"  Width="250px" Type="Currency" >
                                        </telerik:RadNumericTextBox>
                                        <telerik:RadButton ID="btnNewMilestone" runat="server" CssClass="btnx" OnClick="btnNewMilestone_Click" Text="Add" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>

            <telerik:RadGrid ID="RadGridMileStone" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGridMileStone_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>                        
                        <telerik:GridBoundColumn DataField="milestoneid" HeaderText="ID" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="milestonedesc" HeaderText="Milestone Descriptions" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TaskName" HeaderText="Task" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="milestoneamount" HeaderText="Amount" ></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandRemoveMilestone" runat="server" CommandArgument='<%# Eval("milestoneid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandRemoveMileStone" Text='<%# Eval("milestoneid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

        <telerik:RadPageView runat="server" TabIndex="3">
            <table>
                <tr>
                    <td >
                        <fieldset>
                            <legend>Plan</legend>
                            <table >
                                <tr>
                                    <td>Plan Budget</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtPlanBudgetx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                    <td>Plan Resources</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtPlanResourcesx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Plan Hardware</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtPlanHardwarex" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                                
                            </table>
                        </fieldset>
                    </td>
                    </tr>
                <tr>
                    <td >
                        <fieldset>
                            <legend>Actual</legend>
                            <table >
                                <tr>
                                    <td >Actual Budget</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtActualBudgetx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                    <td>Actual Resources</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtActualResourcesx" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Actual Hardware</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtActualHardwarex" runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                                
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td >
                        <fieldset>
                            <legend>Costing</legend>
                            <table >
                                <tr>
                                    <td>Cost Name</td>
                                    <td>:</td>
                                    <td><telerik:RadTextBox ID="txtCostName" runat="server"  Width="250px"></telerik:RadTextBox></td>
                                    <td>Cost Type</td>
                                    <td>:</td>
                                    <td><telerik:RadComboBox ID="drpCostType" runat="server" Width="250px"></telerik:RadComboBox></td>
                                </tr>
                                <tr>
                                    <td>Unit Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtUnitCostx" runat="server"  Width="250px" Type="Currency" >
                                            <ClientEvents OnValueChanged="CalculateTotalCost" />
                                        </telerik:RadNumericTextBox>
                                    </td>
                                    <td>Quantity</td>
                                    <td>:</td>
                                    <td><telerik:RadTextBox ID="txtCostQuantity" runat="server"  Width="250px" >
                                        <ClientEvents OnValueChanged="CalculateTotalCost" />                                        
                                        </telerik:RadTextBox></td>
                                </tr>
                                <tr>
                                    <td>Total Cost</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadNumericTextBox ID="txtTotalCostx"  runat="server"  Width="250px" Type="Currency" ></telerik:RadNumericTextBox>
                                    </td>
                                    <td>Vendor</td>
                                    <td>:</td>
                                    <td><telerik:RadComboBox ID="drpCostVendor" runat="server" Width="250px"></telerik:RadComboBox></td>
                                </tr>
                                <tr>
                                    <td>PO No.</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadTextBox ID="txtCostPONo" runat="server" Width="250px">
                                        </telerik:RadTextBox>
                                    </td>
                                    <td>PO Date</td>
                                    <td>:</td>
                                    <td>
                                        <telerik:RadDatePicker ID="txtCostPODate" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtCostingRemarks" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                        <telerik:RadButton ID="btnBudgetNew" runat="server" Text="New" OnClick="btnBudgetNew_Click" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>

            <telerik:RadGrid ID="RadGrid2" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid2_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>                        
                        <telerik:GridBoundColumn DataField="BudgetID" HeaderText="BudgetID" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CostName" HeaderText="Cost Name" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CostType" HeaderText="Cost Type" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnitCost" HeaderText="UnitCost" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Quantity" HeaderText="Quantity" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalCost" HeaderText="Quantity" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PoNo" HeaderText="Po No." ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PoDate" HeaderText="PO Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="VendorID" HeaderText="Vendor" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cby" HeaderText="Created By" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="cdate" HeaderText="Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn HeaderText="Remove">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandRemoveCost" runat="server" CommandArgument='<%# Eval("BudgetID") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandRemoveCost" Text='<%# Eval("BudgetID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="4">
            <table>
                <tr>
                        <td colspan="6">
                            <telerik:RadButton ID="btnTicketNew" runat="server" Text="New" CssClass="btnx" OnClick="btnTicketNew_Click" />
                            <telerik:RadButton ID="btnTicketSave" runat="server" Text="Save" CssClass="btnx" OnClick="btnTicketSave_Click" />
                            <asp:Label ID="lblTicketID" runat="server" Visible="True"></asp:Label>
                        </td>
                        </tr>
                <tr>
                        <td>Log Date</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtTicketLogDate" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Target Closed Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtTicketTargetClosedDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        </tr>
                <tr>
                        <td>Priority</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTicketPriority" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Actual Closed Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtTicketActualClosedDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        </tr>
                 <tr>
                        <td>Raised By</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpRaiseBy" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Handle By</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpHandleBy" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>
                <tr>
                        <td>Category</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTicketCategory" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTicketStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>
                <tr>
                                    <td>Summary</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtTicketSummary" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                <tr>
                                    <td>Descriptions</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtTicketDesc" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                <tr>
                                    <td>Resolutions</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtTicketReso" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
            </table>
            <telerik:RadGrid ID="RadGrid3" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid3_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="TicketID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandTicket" runat="server" CommandArgument='<%# Eval("TicketID") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandTicket" Text='<%# Eval("TicketID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="Summary" HeaderText="Summary" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LogDate" HeaderText="LogDate" DataFormatString="{0:dd/MM/yyyy HH:mm}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TargetClosed" HeaderText="TargetClosed" DataFormatString="{0:dd/MM/yyyy HH:mm}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ActualClosed" HeaderText="ActualClosed" DataFormatString="{0:dd/MM/yyyy HH:mm}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="RaisedBy" HeaderText="RaisedBy" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StatusID" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CategoryID" HeaderText="Category" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="5">
            <table>
                <tr>
                        <td colspan="6">
                            <telerik:RadButton ID="btnAddContract" runat="server" Text="New" CssClass="btnx" OnClick="btnAddContract_Click" />
                            <telerik:RadButton ID="btnSaveContract" runat="server" Text="Save" CssClass="btnx" OnClick="btnSaveContract_Click" />
                            <asp:Label ID="lblContractID" runat="server" Visible="true"></asp:Label>

                        </td>
                        </tr>
                <tr>
                        <td>Sale Order No</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractSO" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Contract No.</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractNo" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                        <td>Contract Type</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpContractType" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Contract Value</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractValue" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                 <tr>
                        <td>PM Fee</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractPMFee" runat="server" Width="250px"></telerik:RadTextBox></td>
                        
                        <td>PM Fee(%)</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractPMFeePerc" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                        <td>Contract Start</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtContractStartx" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        
                        <td>Contract End</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtContractEndx" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        </tr>

                <tr>
                        <td>Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpContractStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Warranty</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractWarranty" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                    <td>Currency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpCurrencyContract" runat="server" Width="250px">
                        </telerik:RadComboBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                        <td>Update By</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtContractUpdateBy" runat="server"  Width="250px"></telerik:RadTextBox></td>
                             
                        
                        <td>Update Date</td>
                        <td>:</td>
                        <td><%--<telerik:RadTextBox ID="txtContractUpdateDate" runat="server"  Width="250px"></telerik:RadTextBox></td>--%>
                            <telerik:RadDateInput ID="txtContractUpdateDate" runat="server" Width="250px"  DisplayDateFormat="dd/MM/yy"></telerik:RadDateInput></td>
                        </tr>
                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtContractRemarks" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
               
            </table>
            <telerik:RadGrid ID="RadGrid4" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid4_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="ContractID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandContract" runat="server" CommandArgument='<%# Eval("ContractID") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandContract" Text='<%# Eval("ContractID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="SaleOrderNo" HeaderText="SaleOrderNo" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractNo" HeaderText="ContractNo" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractValue" HeaderText="ContractValue" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PMFee" HeaderText="PMFee" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractStart" HeaderText="ContractStart" DataFormatString="{0:dd/MM/yyyy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ContractEnd" HeaderText="ContractEnd" DataFormatString="{0:dd/MM/yyyy}" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="6">
            <table>
                <tr>
                        <td colspan="6">
                                            <telerik:RadButton ID="btnTSAdd" runat="server" Text="New" CssClass="btnx" OnClick="btnTSAdd_Click" />
                                            <telerik:RadButton ID="btnTSSave" runat="server" Text="Save" CssClass="btnx" OnClick="btnTSSave_Click" />
                                            <asp:Label ID="lblTSID" runat="server" Visible="true"></asp:Label>
                        </td>
                        </tr>
                <tr>
                        <td>Submission ID</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtTSSubmissionID" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTSSubmissionStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>
                        <tr>
                        <td>Start Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDateTimePicker ID="txtTSStartDatex" runat="server" Width="250px"><DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"> 
            </DateInput></telerik:RadDateTimePicker>
                        </td>
                        
                        <td>End Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDateTimePicker ID="txtTSEndDatex" runat="server" Width="250px"><DateInput DateFormat="dd/MM/yyyy HH:mm:ss" runat="server" DisplayDateFormat="dd/MM/yy HH:mm:ss"> 
            </DateInput></telerik:RadDateTimePicker>
                        </td>
                        </tr>
                <tr>
                    <td>Operational Categorization</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpTSOC" runat="server" Width="250px">
                        </telerik:RadComboBox>
                    </td>
                    <td>Duration</td>
                    <td>:</td>
                    <td>
                        <telerik:RadTextBox ID="txtTSDuration" runat="server" Width="250px">
                        </telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                        <td>Owner</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTSOwner" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Type</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTSType" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>
                <tr>
                        <td>Category</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpTSCategory" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>&nbsp;</td>
                        <td>:</td>
                        <td>&nbsp;</td>
                        </tr>
                 <tr>
                        <td>Approved By</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtTSApprovedBy" runat="server" Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Approved Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtTSApprovedDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        </tr>
                <tr>
                                    <td>Descriptions</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtTSDesc" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
               
            </table>
            <telerik:RadGrid ID="RadGrid5" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid5_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="TimeSheetID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandTS" runat="server" CommandArgument='<%# Eval("TimeSheetID") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandTS" Text='<%# Eval("TimeSheetID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="SubmissionID" HeaderText="SubmissionID" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StartDate" HeaderText="StartDate" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="EndDate" HeaderText="ContractEnd" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Duration" HeaderText="Duration" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SubmissionStatus" HeaderText="SubmissionStatus" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Owner" HeaderText="Owner" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="7">
            <table>
                <tr>
                        <td class="auto-style3">
                            <telerik:RadButton ID="btnUpdate" runat="server" Text="Update" CssClass="btnx" OnClick="btnUpdate_Click" />
                        </td>
                        <td></td>
                        <td></td>
                        
                        <td></td>
                        <td></td>
                        <td></td>
                        </tr>
                <tr>
                                    <td class="auto-style3">Status Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtStatusRemarks" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
               
            </table>
            <telerik:RadGrid ID="RadGrid6" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid6_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>                        
                        <telerik:GridBoundColumn DataField="updateid" HeaderText="ID" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Remarks" HeaderText="Remarks" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="uby" HeaderText="Update By" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="udate" HeaderText="Update Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="8">
            <table>
                <tr>
                        <td colspan="6">
                                            <telerik:RadButton ID="btnAddInvoice" runat="server" Text="New" CssClass="btnx" OnClick="btnAddInvoice_Click" />
                                            <telerik:RadButton ID="btnSaveInvoice" runat="server" Text="Save" CssClass="btnx" OnClick="btnSaveInvoice_Click" />
                                            <asp:Label ID="lblInvID" runat="server" Visible="False"></asp:Label>
                        </td>
                        </tr>
                <tr>
                        <td>Invoice Ref. No</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtInvRefNo" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Date Time</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtInvDateTime" runat="server" Width="250px"></telerik:RadTextBox></td>
                        </tr>
                        <tr>
                        <td>Category</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpInvCategory" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Value</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtInvValue" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                        <td>Milestone</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpInvMilestone" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Completed(%)</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtInvCompletePerc" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                    <td>Currency</td>
                    <td>:</td>
                    <td>
                        <telerik:RadComboBox ID="drpCurrencyINV" runat="server" Width="250px">
                        </telerik:RadComboBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtInvRemarks" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
               
            </table>
            <telerik:RadGrid ID="RadGrid7" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid7_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Invoice ID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandINV" runat="server" CommandArgument='<%# Eval("invoiceid") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandINV" Text='<%# Eval("invoiceid") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="RefNo" HeaderText="RefNo" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="InvoiceDate" HeaderText="InvoiceDate" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="InvoiceValue" HeaderText="Invoice Value" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="InvoicePerc" HeaderText="Invoice %" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CategoryID" HeaderText="Category" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StatusID" HeaderText="Milestone" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>
        <telerik:RadPageView runat="server" TabIndex="9">
            <table>
                <tr>
                        <td colspan="6">
                                            <telerik:RadButton ID="btnAddBooking" runat="server" Text="New" CssClass="btnx" OnClick="btnAddBooking_Click" />
                                            <telerik:RadButton ID="btnSaveBooking" runat="server" Text="Save" CssClass="btnx" OnClick="btnSaveBooking_Click" />
                                            <asp:Label ID="lblBookingID" runat="server" Visible="False"></asp:Label>
                        </td>
                        </tr>
                <tr>
                        <td>Booking ID</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtBkNo" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        
                        <td>Engineer</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpBkEngineer" runat="server" Width="250px"></telerik:RadComboBox></td>
                        </tr>
                        <tr>
                        <td>Start Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtBkStartDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        
                        <td>End Date</td>
                        <td>:</td>
                        <td>
                            <telerik:RadDatePicker ID="txtBkEndDatex" runat="server" Width="200px" >
                                    <DateInput runat="server" DisplayDateFormat="dd/MM/yy" DateFormat="dd/MM/yyyy"></DateInput>
                                </telerik:RadDatePicker>
                        </td>
                        </tr>
                <tr>
                        <td>Status</td>
                        <td>:</td>
                        <td><telerik:RadComboBox ID="drpBkStatus" runat="server" Width="250px"></telerik:RadComboBox></td>
                        
                        <td>Completed(%)</td>
                        <td>:</td>
                        <td><telerik:RadTextBox ID="txtBkCompletePerc" runat="server"  Width="250px"></telerik:RadTextBox></td>
                        </tr>
                <tr>
                                    <td>Remarks</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtBkRemarks" runat="server" TextMode="MultiLine" Width="66%">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
               
            </table>
            <telerik:RadGrid ID="RadGrid8" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid8_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="BookingID">
                            <ItemTemplate >
                                <asp:LinkButton ID="useLinkButtonCommandBK" runat="server" CommandArgument='<%# Eval("BookingID") %>'
                                                        CommandName="Show" OnCommand="useLinkButton_CommandBK" Text='<%# Eval("BookingID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn DataField="Engineer" HeaderText="Engineer" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StartDate" HeaderText="StartDate" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="EndDate" HeaderText="EndDate" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CompletePerc" HeaderText="Completed %" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="StatusID" HeaderText="Status" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Overlapcount" HeaderText="Overlap Projects" ></telerik:GridBoundColumn>                        
                        <telerik:GridBoundColumn DataField="uby" HeaderText="Update By" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="udate" HeaderText="Update Date" DataFormatString="{0:dd/MM/yy}" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

        <telerik:RadPageView runat="server" TabIndex="10">
            <table>
                <tr>
                                    <td>Descriptions</td>
                                    <td>:</td>
                                    <td colspan="4">
                                        <telerik:RadTextBox ID="txtAttachementDesc" runat="server" Width="250px">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                <tr>
                    <td>Select File</td>
                    <td>:</td> 
                        <td colspan="4">
                             <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <br />
                                        <asp:Button CssClass="btn btn-sky shiny" ID="btnUpload" Text="Upload" runat="server" accept="image/gif, image/jpeg" OnClick="btnUpload_Click" />
                                        <br />
                                        <br />
                                        <asp:Button class="btn btn-success" ID="btnSuccessx" Text="btnSuccess" runat="server" Visible="false" />
                                        <asp:Button class="btn btn-warning" ID="btnFailedx" Text="btnFailed" runat="server" Visible="false" />
                                        <asp:Label ID="lblFilename" runat="server"></asp:Label>
                                        <asp:Label ID="lblID" runat="server"></asp:Label>
                                    </td>
                        </tr>
                
               
            </table>
            <telerik:RadGrid ID="RadGrid9" runat="server" Visible="true" AllowSorting="true" OnSortCommand="RadGrid9_SortCommand" AutoGenerateColumns="false">
                <ClientSettings EnableRowHoverStyle="true" ></ClientSettings>
                <MasterTableView Font-Size="9" AlternatingItemStyle-BackColor="#eeeeee" ItemStyle-Height="13px" AlternatingItemStyle-Height="13px" HeaderStyle-Height="14px" >
                    <Columns>                        
                        <telerik:GridBoundColumn DataField="attachid" HeaderText="ID" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Filename" HeaderText="File" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="uby" HeaderText="Update By" ></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="udate" HeaderText="Update Date" DataFormatString="{0:dd/MM/yy HH:mm}" ></telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </telerik:RadPageView>

    </telerik:RadMultiPage>    
    <telerik:RadCodeBlock runat="server">         
    <script type="text/javascript">
        
        function CalculateTotalCost() 
        {
            var UnitCost = $find('<%=txtUnitCostx.ClientID %>');
            var UnitQty = $find('<%=txtCostQuantity.ClientID  %>');
            var TotalCost = $find('<%=txtTotalCostx.ClientID  %>');
            TotalCost.set_value(UnitCost.get_value()*UnitQty.get_value());
        }
    </script>
    </telerik:RadCodeBlock> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
