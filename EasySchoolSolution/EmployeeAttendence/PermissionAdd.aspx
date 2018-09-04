<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PermissionAdd.aspx.cs" Inherits="EmployeeAttendence_PermissionAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="row">
        <div style="text-align: left; padding-top: 2%;">
        </div>
    </div>
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">
        <div class="alert alert-success media fade in">
            <p><strong>شكرا لك.</strong> تم إضافة الاستئذان بنجاح</p>
        </div>
    </asp:PlaceHolder>
    <div class="panel">
        <div class="panel-header">
            <div class="col-md-6">
                <a href="#"><i class="icon-puzzle font-red-flamingo" aria-hidden="true"></i>&nbsp; إضافة استئذان الموظفين</a>
            </div>
            <div class="col-md-6" style="text-align: left;">
                <a href="permissionDisplay.aspx" class="btn btn-success">عرض الاستئذانات</a>
            </div>
        </div>
        <div class="panel-body">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="اسم الموظف :"></asp:Label>
                            <asp:DropDownList ID="ddlNameEMp" runat="server" CssClass="chosen-select AutherDrop form-control form-white">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="lblSource" runat="server" Text="زمن الخروج :"></asp:Label>
                            <div class='input-group date' id='datetimepicker3'>
                                <%--<input type='text' class="form-control" />--%>
                                <asp:TextBox ID="txtTime1" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-time"></span>
                                </span>
                            </div>
                               <asp:CompareValidator ID="cpvFinish" ControlToValidate="txttime2" ControlToCompare="txttime1" Operator="GreaterThan"
                            Display="Dynamic" EnableClientScript="true" ValidationGroup="validaiton"
                                    ErrorMessage="يجب أن يكون زمن الخروج اقل من زمن العودة." runat="server" ForeColor="Red" />
                            <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker3').datetimepicker({
                                        format: 'LT',
                                        locale: 'en'
                                    });
                                });
                            </script>

                            <asp:RequiredFieldValidator ID="StartTime" runat="server" ControlToValidate="txtTime1"
                                Text="ادخل وقت البداية" ValidationGroup="validaiton" ForeColor="Red" />
                        </div>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="مبررات الخروج :"></asp:Label>
                            <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" CssClass="form-control form-white" Height="95px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validationReason" runat="server" ErrorMessage="لا يوجد مبرر" ValidationGroup="validaiton" ControlToValidate="txtReason" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="تاريخ الخروج :"></asp:Label>
                            <div class="col-md-12">

                                <asp:TextBox ID="datepicker" runat="server" CssClass="col-md-10 form-control form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>

                                <span>
                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="datepicker" runat="server"></obout:Calendar>
                                </span>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="datepicker"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="validaiton"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" ID="RequiredFieldValidator1" runat="server" ControlToValidate="datepicker" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="زمن العودة :"></asp:Label>
                            <%--<asp:TextBox ID="txtTime2" runat="server" type='time' value='now' CssClass="form-control form-white"></asp:TextBox>--%>

                            <div class='input-group date' id='datetimepicker1'>
                                <%--<input type='text' class="form-control" />--%>
                                <asp:TextBox ID="txtTime2" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-time"></span>
                                </span>
                            </div>
                            <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker1').datetimepicker({
                                        format: 'LT',
                                        locale: 'en'
                                    });
                                });
                            </script>
<%--                         <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" runat="server" ValidationGroup="btnSave" Font-Size="Smaller" ForeColor="Red" ErrorMessage="يجب ان يكون زمن العودة اقل من زمن الخروج" ControlToCompare="txtTime1" ControlToValidate="txtTime2" Operator="GreaterThan"></asp:CompareValidator>--%>

                            <asp:RequiredFieldValidator ID="EndTime" runat="server" ControlToValidate="txtTime2"
                                Text="ادخل وقت النهاية" ValidationGroup="validaiton" ForeColor="Red" />
                        </div>
                     
                        <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-10">
                        <asp:Label ID="Label5" runat="server" Text="الملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" Height="95px" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <br />
            </div>
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

