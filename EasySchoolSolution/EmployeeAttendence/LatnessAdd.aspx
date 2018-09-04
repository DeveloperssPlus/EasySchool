<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LatnessAdd.aspx.cs" Inherits="EmployeeAttendence_LatnessAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>
    <script>
        $(document).ready(function () {
            $(".chosen-select").select2();
        });
    </script>
 
    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <%--<link href="assets/timepicker/Content/bootstrap.css" rel="stylesheet" />--%>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>اضافة تأخر</strong></h4>
                </div>
                <div class="modal-body">
                    <p>
                        <strong>تم اضافة التأخر بنجاح</strong><br />
                        اضافة تأخر لموظف أخر؟
                    </p>

                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">نعم</button>
                    <a href="LatenessDisplay.aspx" class="btn btn-primary btn-embossed">لا</a>
                </div>
            </div>
        </div>
    </div>
    <div class="panel">
        <div class="panel-header">
            <div class="row">
                <div class="col-md-6">
                    <h4><i class="fa  fa-clock-o" aria-hidden="true"></i>&nbsp; إضافة تأخر الموظفين</h4>

                </div>

            </div>

        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-6">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="اسم الموظف :"></asp:Label>
                            <asp:DropDownList ID="ddlNameEMp" runat="server" CssClass="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="col-lg-12">
                        <div class="form-group col-md-8">
                            <asp:Label ID="lblSource" runat="server" Text="التاريخ :"></asp:Label>

                            <asp:TextBox ID="datepicker" CssClass="form-control form-white" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                        </div>
                        <br />
                        <span>
                            <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png"
                                DatePickerMode="true" TextBoxId="datepicker" runat="server">
                            </obout:Calendar>
                        </span>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="datepicker"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true" ValidationGroup="btn">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator2"
                            runat="server" ControlToValidate="datepicker" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlType" EventName="SelectedIndexChanged" />
                </Triggers>
                <ContentTemplate>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="نوع التأخر :"></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddlType" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" DataSource='<%#ConstantManager.get("نوع التأخر")%>' DataValueField="Id" DataTextField="value" CssClass="form-control form-white">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <asp:PlaceHolder ID="PlaceHolderAmount" runat="server">
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Text="مدة التأخر (بالدقائق) :"></asp:Label>
                                        <asp:TextBox ID="txtamount" TextMode="Number" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="btn" ErrorMessage="أدخل مدة التأخر" ControlToValidate="txtamount" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </asp:PlaceHolder>
                    </div>

                    <asp:PlaceHolder ID="PlaceHolderTime" runat="server" Visible="false">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="وقت الخروج :"></asp:Label>
                                        <div class='input-group date' id='datetimepicker3'>
                                            <asp:TextBox ID="TextTimeFrom" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                        </div>
                                       
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="btn" ErrorMessage="الرجاء ادخال الوقت" ControlToValidate="txtamount" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    <div class="form-group">
                                        <asp:Label ID="Label5" runat="server" Text="وقت العودة :"></asp:Label>
                                        <div class='input-group date' id='datetimepicker4'>
                                            <asp:TextBox ID="TextTimeTo" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                        </div>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="btn" ErrorMessage="الرجاء ادخال الوقت" ControlToValidate="txtamount" ForeColor="Red"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:PlaceHolder>

                </ContentTemplate>
            </asp:UpdatePanel>



            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" ValidationGroup="btn" Text="اضافة" OnClick="btnAdd_Click" />
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
            //bindEvents();

            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });

            $(function () {
                $('#datetimepicker4').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });
        });

        // attach the event binding function to every partial update
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function (evt, args) {
            //bindEvents();

            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });

            $(function () {
                $('#datetimepicker4').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });
        });
    </script>
    <%--<script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>--%>
</asp:Content>

