<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsExcusesAdd.aspx.cs" Inherits="StudentAttendence_StudentsExcusesAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        label{
            font-weight:100;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="panel">
        <div class="panel-header ">
            <h3><i class="fa fa-exlamination"></i>اضافة غياب/عذر لمجموعة من الطلاب</h3>
        </div>
        <div class="panel-content">

            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="row">
                        اضافة الغياب/العذر 
                    <asp:RadioButtonList ID="radioDay" CssClass="radioButtonList" RepeatDirection="Horizontal" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radioDay_SelectedIndexChanged">
                        <asp:ListItem Value="1" Selected="True">يوم واحد</asp:ListItem>
                        <asp:ListItem Value="2">عدة أيام &nbsp;&nbsp;  </asp:ListItem>
                    </asp:RadioButtonList>

                        <div class="col-md-6">
                            <div class="col-md-2">
                                <asp:Literal ID="ltr1" runat="server">

                                التاريخ
                                </asp:Literal>
                            </div>
                            <div class="col-md-10">

                                <asp:TextBox ID="datepicker" runat="server" CssClass="col-md-10 form-control form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>

                                <span>
                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="false" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="datepicker" runat="server"></obout:Calendar>
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
                        <div class="col-md-6" runat="server" visible="false" id="divDate">
                            <div class="col-md-2">
                                إلى
                            </div>
                            <div class="col-md-10">

                                <asp:TextBox ID="datepicker2" runat="server" CssClass="col-md-10 form-control form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>
                                <span>
                                    <obout:Calendar ID="Calendar2" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" 
                                        DatePickerSynchronize="false" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png"
                                         DatePickerMode="true" TextBoxId="datepicker2" runat="server"></obout:Calendar>
                                </span>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="datepicker2"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="validaiton"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true" >
                                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" ID="RequiredFieldValidator2"
                                     runat="server" ControlToValidate="datepicker2" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-4">

                            <asp:RadioButtonList ID="radioIsExecuse" CssClass="radioButtonList" RepeatDirection="Horizontal" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radioIsExecuse_SelectedIndexChanged">
                                <asp:ListItem Value="false" Selected="True">عدم وجود عذر</asp:ListItem>
                                <asp:ListItem Value="True">وجود عذر  &nbsp;&nbsp;  </asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-md-8" runat="server" visible="false" id="divReason">
                        <div class="col-md-2">

                            عذر الغياب 
                            </div>
                        <div class="col-md-8">

                    <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                        </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <br />
            <div class="row">
                <h3>اختيار اسماء الطلاب</h3>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="row">
                            <asp:RadioButtonList ID="RadioButtonList1" CellSpacing="10" CellPadding="10" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0" Selected="True">اسم الطالب</asp:ListItem>
                                <asp:ListItem Value="1">الرقم الأكاديمي</asp:ListItem>
                                <asp:ListItem Value="2">الدفعة</asp:ListItem>
                                <asp:ListItem Value="3">الصف</asp:ListItem>
                                <asp:ListItem Value="4">التخصص</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-md-9">

                                <asp:PlaceHolder ID="PlaceHolderStdName" runat="server" Visible="true">اسم الطالب                          
                                                        <asp:DropDownList ID="ddlName" runat="server" DataTextField="Name" DataValueField="IdentityNumber"></asp:DropDownList>

                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="PlaceHolderStdNumber" runat="server" Visible="false">الرقم الأكاديمي
                                    <asp:DropDownList ID="ddlStdNumber" runat="server" DataTextField="Id" DataValueField="IdentityNumber"></asp:DropDownList>

                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="PlaceHolderYear" runat="server" Visible="false">دفعة 
                                    <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>

                                </asp:PlaceHolder>

                                <asp:PlaceHolder ID="PlaceHolderClass" runat="server" Visible="false">الشعبة

                                    <asp:DropDownList ID="ddlClass" runat="server"></asp:DropDownList>

                                    المادة

                                    <asp:DropDownList ID="ddlSubject" runat="server" DataTextField="Name" DataValueField="Id"></asp:DropDownList>

                                </asp:PlaceHolder>

                                <asp:PlaceHolder ID="PlaceHolderSpecification" runat="server" Visible="false">التخصص
                                    <asp:DropDownList ID="ddlSpecification" runat="server"></asp:DropDownList>

                                </asp:PlaceHolder>

                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success" Text="بحث" OnClick="btnSearch_Click" />
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-lg-12">

                                <div class="col-lg-6">

                                    <asp:Label ID="Label7" runat="server" Text="أسماء الطلاب :"></asp:Label>
                                    <asp:ListBox ID="LstStudentName" SelectionMode="Multiple" Font-Size="10" runat="server" DataTextField="Name" DataValueField="IdentityNumber" CssClass="form-control form-white"></asp:ListBox>

                                </div>
                                <div class="col-lg-1">
                                    <br />
                                    <asp:Button ID="btnAdd" CssClass="btn btn-success btn-sm" runat="server" Text=">>" OnClick="btnAdd_Click" />
                                    <br />
                                    <br />
                                    <asp:Button ID="btnDelete" OnClick="btnDelete_Click" CssClass="btn btn-success btn-sm" runat="server" Text="<<" />

                                </div>
                                <div class="col-lg-5">
                                    <asp:Label ID="Label9" runat="server" Text=" أسماء الطلاب المختارة :"></asp:Label>
                                    <asp:ListBox ID="Lstpart" CssClass="form-control form-white" runat="server" SelectionMode="Multiple"></asp:ListBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="Lstpart" runat="server" ErrorMessage="الرجاء ادخال الطلاب "></asp:RequiredFieldValidator>

                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

        </div>
        <div class="row">
            <br />
            <asp:Button ID="btnSave" runat="server" Text="اضافة" OnClick="btnSave_Click" ValidationGroup="validaiton" CssClass="btn btn-blue" />

        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">


    <script>
        $(document).ready(function () {
            document.getElementById("mainContent_LstStudentName").size = "10";
            document.getElementById("mainContent_Lstpart").size = "10";

        });

        // attach the event binding function to every partial update
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function (evt, args) {
            document.getElementById("mainContent_LstStudentName").size = "10";
            document.getElementById("mainContent_Lstpart").size = "10";

        });
    </script>


</asp:Content>

