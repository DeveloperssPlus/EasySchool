<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentPermissionAdd.aspx.cs" Inherits="StudentAttendence_StudentPermissionAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <%--<link href="assets/timepicker/Content/bootstrap.css" rel="stylesheet" />--%>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
<%--    <div class="row">
        <div style="text-align: left; padding-top: 2%;">
            <a href="StudentPermissionDisplay.aspx" class="btn btn-success">عرض الاستئذانات</a>
        </div>
    </div>--%>

    <div class="panel">
        <div class="panel-header">
            <h3><i class="fa fa-sign-out" ></i>&nbsp; إضافة استئذان الطلاب</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="اسم الطالب :"></asp:Label>
                        <asp:DropDownList ID="ddlStudentName" runat="server" CssClass="chosen-select AutherDrop form-control form-white">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="الفصل :"></asp:Label>
                        <asp:TextBox ID="txtClass" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="التاريخ  :"></asp:Label>
                        <div class="col-md-12">

                            <asp:TextBox ID="datepicker" runat="server" CssClass="datepicker form-control form-white col-md-10" CausesValidation="True"></asp:TextBox>

                            <span class="col-md-2">
                                <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1"
                                    DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png"
                                    DatePickerMode="true" TextBoxId="datepicker" runat="server">
                                </obout:Calendar>
                            </span>

                        </div>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="datepicker" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="validaiton"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton"
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="datepicker" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="lblSource" runat="server" Text="وقت الخروج :"></asp:Label>

                        <div class='input-group date' id='datetimepicker3'>
                            <asp:TextBox ID="txtTime1" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                            </span>
                        </div>

                        <script type="text/javascript">
                            $(function () {
                                $('#datetimepicker3').datetimepicker({
                                    format: 'LT',
                                    locale: 'en'
                                });
                            });
                        </script>

                        <asp:RequiredFieldValidator ID="StartTime" runat="server" ControlToValidate="txtTime1"
                            Text="ادخل وقت الخروج" ValidationGroup="validaiton" ForeColor="Red" />
                    </div>
                </div>

            </div>
            <br />

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="سبب الاستئذان :"></asp:Label>
                        <asp:TextBox ID="txtReason" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validationReason" runat="server" ErrorMessage="الرجاء اضافة سبب الاستئذان" ValidationGroup="validaiton" ControlToValidate="txtReason" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="اسم ولي الأمر :"></asp:Label>
                        <asp:TextBox ID="txtParent" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="الرجاء ادخال اسم ولي الأمر"
                            ValidationGroup="validaiton" ControlToValidate="txtParent" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>



            <%--     <div class="row">
                <div class="col-lg-10">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="زمن العودة :"></asp:Label>
                        <asp:TextBox ID="txtTime2" runat="server" type='time' value='now' CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EndTime" runat="server" ControlToValidate="txtTime2"
                            Text="ادخل وقت النهاية" ValidationGroup="validaiton" ForeColor="Red" />
                    </div>
                    <asp:CompareValidator ID="cpvFinish" ControlToValidate="txttime2" ControlToCompare="txttime1" Operator="GreaterThan"
                        Display="Dynamic" EnableClientScript="true" ValidationGroup="validaiton" ErrorMessage="يجب أن يكون وقت البداية اقل من وقت النهاية." runat="server" ForeColor="Red" />
                    <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
            </div>--%>

            <div class="row">
                <div class="col-lg-6">
                    <asp:Label ID="Label5" runat="server" Text="الملاحظات :"></asp:Label>
                    <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" Height="95px" CssClass="form-control form-white"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-10">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" Text="اضافة" ValidationGroup="validaiton" OnClick="btnAdd_Click" />
                        <asp:Label ID="lblmsg" runat="server" ForeColor="#0066ff"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../assets/Select/select2.js"></script>
    <script>
        $(document).ready(function () {
            $(".chosen-select").select2();
        });
    </script>


    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>
</asp:Content>

