<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentAbsenceDisplay.aspx.cs" Inherits="StudentAttendence_StudentAbsenceDisplay" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <link href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12 portlets">

        <div class="panel panel-blue margin-bottom-40">
            <div class="panel-heading">
                <h3><i class="fa fa-times"></i>&nbsp;سجل غياب الطلاب</h3>
            </div>
            <div class="panel-content">
                <div class="row">
                        <asp:Button ID="btnShowLatenessDay" runat="server" Text="عرض غياب اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowLatenessDay_Click" />
                    <asp:Button ID="btnShowAllLateness" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllLateness_Click" />
                </div>
                <br />

                <div class="row">التاريخ: </div>
                <div class="row">
                    <div class="col-lg-5">

                        <div class="col-lg-8">
                            من:
                            <asp:TextBox ID="txtDateFrom" runat="server" class="form-control form-white"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <span>
                                <br />
                                <obout:calendar id="CalendarFrom" culturename="<%#MyDate.getDateCulture()%>" columns="1" datepickersynchronize="true" monthwidth="300" dateformat="yyyy/MM/dd" datepickerimagepath="~/assets/calendar.png" datepickermode="true" textboxid="txtDateFrom" runat="server"></obout:calendar>
                            </span>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDateFrom"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDateFrom" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

                    </div>


                    <div class="col-lg-5">

                        <div class="col-lg-8">
                            إلى:
                            <asp:TextBox ID="txtDateTo" runat="server" class="form-control form-white"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <span>
                                <br />
                                <obout:calendar id="CalendarTo" culturename="<%#MyDate.getDateCulture()%>" columns="1" datepickersynchronize="true" monthwidth="300" dateformat="yyyy/MM/dd" datepickerimagepath="~/assets/calendar.png" datepickermode="true" textboxid="txtDateTo" runat="server"></obout:calendar>
                            </span>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDateTo"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDateTo" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

                    </div>

                    <div class="col-sm-2">
                        <asp:Button ID="btnShow" runat="server" Text="عرض" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" OnClick="btnShow_Click" />
                    </div>
                </div>
                <br />
                <table class="table table-hover dataTable" id="table-editable">
                    <thead>
                        <tr>
                            <th class="auto-style1">اسم الطالب</th>
                            <th>تاريخ الغياب</th>
                            <th>سبب الغياب</th>
                        </tr>
                    </thead>
                    <asp:ListView ID="lstLateness" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# Eval("Name") %>
                                </td>
                                <td>
                                    <%# MyDate.getDate( Eval("Date").ToString()) %>
                                </td>
                                <td>
                                    <%--<%#ConstantManager.getConstant(int.Parse(Eval("Type").ToString())) %>--%>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script>
        $(function () {
            $(".datepicker").datepicker(
                {
                    required: true
                }
                );
        });
    </script>
</asp:Content>

