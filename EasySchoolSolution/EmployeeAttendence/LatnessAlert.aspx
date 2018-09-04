<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LatnessAlert.aspx.cs" Inherits="EmployeeAttendence_LatnessAlert" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

   <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong> تم الاضافة بنجاح</strong></h4>
                </div>
                <div class="modal-body">
                    <p><strong> تم الاضافة بنجاح</strong><br /> هل تريد الرجوع لسجل التأخر؟</p>
                    
                </div>
                <div class="modal-footer">
                   
                    <a  href="LatenessDisplay.aspx" class="btn btn-default btn-embossed" >نعم</a>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">لا</button>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">تسجيل الرد على تنبيه تأخر أو استئذان</div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="اسم الموظف :"></asp:Label>
                        <asp:Label ID="lblEmpName" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="السجل المدني :"></asp:Label>
                        <asp:Label ID="lblIdentity" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="اليوم :"></asp:Label>
                        <asp:Label ID="lblDay" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="تاريخ الغياب :"></asp:Label>
                        <asp:Label ID="lblDate" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="سبب التنبيه :"></asp:Label>
                        <asp:Label ID="lblReson" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="form-group ">
                    <div class="col-md-3">
                        <asp:Label ID="Label3" runat="server" Text="تاريخ تقديم العذر :"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtDateReplayEmp" CssClass="form-control form-white col-md-8" runat="server" placeholder="يوم/شهر/سنة"> </asp:TextBox>
                        <span>
                            <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateReplayEmp" runat="server"></obout:Calendar>
                        </span>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDateReplayEmp"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDateReplayEmp" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="form-group">
                    <div class="col-md-3">
                        <asp:Label ID="Label9" runat="server" Text="عذر الموظف :"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtExecuse" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtExecuse" Display="Dynamic"
                            ForeColor="Red" runat="server" ErrorMessage="الرجاء ادخال عذر الموظف" ValidationGroup="btn"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="form-group">
                    <div class="col-md-3">
                        <asp:Label ID="Label6" runat="server" Text="تاريخ قرار المدير :"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtAcceptDate" CssClass="form-control form-white col-md-8" runat="server" placeholder="يوم/شهر/سنة"> </asp:TextBox>
                        <span>
                            <obout:Calendar ID="Calendar2" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtAcceptDate" runat="server"></obout:Calendar>
                        </span>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtAcceptDate"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn"
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAcceptDate" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">

                <div class="col-lg-3">
                    <asp:Label ID="Label8" runat="server" Text="قرار المدير :"></asp:Label>
                </div>
                <div class="col-lg-4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="true" Selected="True">قبول العذر</asp:ListItem>
                        <asp:ListItem Value="false">رفض العذر</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <br />
        <asp:Button ID="btnAdd" runat="server" ValidationGroup="btn" CssClass="btn red-haze btn btn-primary" Text="تسجيل" OnClick="btnAdd_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

