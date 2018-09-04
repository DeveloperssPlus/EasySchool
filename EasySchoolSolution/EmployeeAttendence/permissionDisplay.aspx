<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="permissionDisplay.aspx.cs" Inherits="EmployeeAttendence_permissionDisplay" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; سجل الاستئذان </h5>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-sm-2" style="margin-left: 38px;">
                    <asp:Button ID="btnShowPermissionDay" runat="server" Text="عرض استئذان اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowPermissionDay_Click" />
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <asp:Button ID="btnShowAllPermission" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllPermission_Click" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-5">
                    <div class="col-sm-2 label-style">
                        <asp:Label ID="Label2" runat="server" Text="Label">من</asp:Label>
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox ID="DatePickerFrom" CssClass="col-md-10 form-control form-white" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="DatePickerFrom" runat="server"></obout:Calendar>
                        </span>

                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="DatePickerFrom"
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btnDate" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnDate" ID="RequiredFieldValidator3" runat="server" ControlToValidate="DatePickerFrom" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="col-sm-2 label-style">
                        <asp:Label ID="Label1" runat="server" Text="Label">إلى</asp:Label>
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox ID="DatePickerTo" CssClass="col-md-10 form-control form-white" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="Calendar2" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="DatePickerTo" runat="server"></obout:Calendar>
                        </span>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="DatePickerTo"
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btnDate" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnDate" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DatePickerTo" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <div class="col-sm-2">
                    <asp:Button ID="btnShow" runat="server" Text="عرض" CssClass="btn red-haze btn btn-primary" ValidationGroup="btnDate" OnClick="btnShow_Click" />
                </div>
            </div>
            <br />
            <table class="table table-hover table-dynamic dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th class="auto-style1">اسم الموظف</th>
                        <th>تاريخ الاستئذان</th>
                        <th>من</th>
                        <th>إلى</th>
                        <th>السبب</th>
                        <th></th>
                        <%--      <th></th>--%>
                    </tr>
                </thead>
                <asp:ListView ID="lstPermission" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#getCounter() %></td>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                            <td>
                                <%# MyDate.getDate( Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# Eval("TimeFrom")%>
                            </td>
                            <td>
                                <%# Eval("TimeTo") %>
                            </td>
                            <td>
                                <%# Eval("Reason") %>
                            </td>
                            <td>
                                <a title="تأمين الحصص" runat="server" visible='<%# Convert.ToBoolean(Eval("IsTeacher")) %>' href='<%# Eval("Id","PermissionClassesAdd.aspx?id={0}" ) %>' ><i style="padding: 7%;" class="fa fa-exchange inline"></i></a>
                            </td>
                          
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

