<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentPermissionDisplay.aspx.cs" Inherits="StudentAttendence_StudentPermissionDisplay" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h3><i class="fa fa-sign-out"></i>&nbsp; سجل استئذان الطلاب</h3>
        </div>
        <div class="panel-content">
            <div class="row">
                    <asp:Button ID="btnShowPermissionDay" runat="server" Text="عرض استئذان اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowPermissionDay_Click" />
                    <asp:Button ID="btnShowAllPermission" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllPermission_Click" />
            </div>
            <br />
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">

                        <div class="col-md-2">
                            <asp:Label ID="Label2" runat="server" Text="Label">من</asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="DatePickerFrom" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>

                        <obout:Calendar ID="Calendar2" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                            MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true"
                            TextBoxId="DatePickerFrom" runat="server">
                        </obout:Calendar>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="DatePickerFrom" ForeColor="Red"
                        Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btn"
                        ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                        SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="DatePickerFrom" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
         
                <div class="col-md-5">
                    <div class="form-group">

                        <div class="col-md-2 ">
                            <asp:Label ID="Label1" runat="server" Text="Label">إلى</asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="DatePickerTo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                        <div class="col-md-2 ">
                            <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true"
                                TextBoxId="DatePickerTo" runat="server">
                            </obout:Calendar>
                        </div>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="DatePickerTo" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btn"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="DatePickerTo" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnShow" runat="server" Text="عرض" CssClass="btn red-haze btn btn-primary" ValidationGroup="btn" OnClick="btnShow_Click" />
                </div>
            </div>
            <br />
            <table class="table table-hover dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th>م</th>
                        <th class="auto-style1">اسم الطالب</th>
                        <th>الفصل</th>
                        <th>التاريخ</th>
                        <th>وقت الخروج</th>
                        <th>سبب الاسبئذان</th>
                        <th>اسم ولي الأمر</th>
                    </tr>
                </thead>
                <asp:ListView ID="lstPermission" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# getCounter() %></td>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                            <td>
                                <%# Eval("Class") %>
                            </td>
                            <td>
                                <%# MyDate.getDate(Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# DateTime.Parse(Eval("TimeFrom").ToString()).ToString("hh:mm tt")%>
                            </td>

                            <td>
                                <%# Eval("Reason") %>
                            </td>
                            <td>
                                <%# Eval("ParentName") %>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

