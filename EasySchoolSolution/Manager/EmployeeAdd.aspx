<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeAdd.aspx.cs" Inherits="Manager_EmployeeAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div class="">
                    <div>
                        <span class="noty_text">
                            <div class="alert alert-success">
                                <p>
                                    <strong>شكرا لك.</strong>
                                    <asp:Label ID="lblerror" runat="server">لقد تم الإضافة بنجاح..</asp:Label>
                                </p>
                                <div class="noty_buttons">
                                    <br />
                                    <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>

    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;
                <asp:Literal ID="ltrTitle" runat="server"></asp:Literal>
            </h4>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="رقم الهوية :"></asp:Label>
                        <asp:TextBox ID="txtIdentityNumber" runat="server" placeholder="0000000000" data-mask="9999999999" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="الرجاء إدخال رقم الهوية" ForeColor="Red" ControlToValidate="txtIdentityNumber" ValidationGroup="Add"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="lblSource" runat="server" Text="الاسم :"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" placeholder="ادخل اسم الموظف" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="الرجاء إدخال الاسم" ForeColor="Red" ControlToValidate="txtName" ValidationGroup="Add"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="الجنسية :"></asp:Label>
                        <asp:TextBox ID="txtNationality" runat="server" placeholder="ادخل جنسية الموظف" class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="الرجاء إدخال الجنسية" ForeColor="Red" ControlToValidate="txtNationality" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="تاريخ الهوية :"></asp:Label>
                        <asp:TextBox ID="txtIdentityDate" runat="server" placeholder="ادخل تاريخ الهوية " class="form-control form-white"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="CalendarIdentityDate" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" MonthSelectorType="DropDownList" YearSelectorType="DropDownList"
                                DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtIdentityDate" runat="server">
                            </obout:Calendar>
                        </span>
                        <asp:RequiredFieldValidator ControlToValidate="txtIdentityDate" ValidationGroup="receive" ID="RequiredFieldValidator3" runat="server"
                            Display="Dynamic" ForeColor="Red" ErrorMessage="الرجاء ادخال تاريخ الهوية"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtIdentityDate"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="receive"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                                        الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="المؤهل :"></asp:Label>
                        <asp:TextBox ID="txtQualification" runat="server" placeholder="ادخل المؤهل" class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="الرجاء إدخال المؤهل " ForeColor="Red" ControlToValidate="txtQualification" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="تاريخ المؤهل :"></asp:Label>
                        <asp:TextBox ID="txtYearQualification" runat="server" placeholder="ادخل تاريخ المؤهل " class="datepicker form-control form-white"></asp:TextBox>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="التخصص :"></asp:Label>
                        <asp:TextBox ID="txtSpecification" runat="server" placeholder="ادخل التخصص " class="form-control form-white"></asp:TextBox>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="تاريخ بداية العمل في الوزارة :"></asp:Label>
                        <asp:TextBox ID="txtJobStartMinistry" runat="server" placeholder="ادخل تاريخ بداية العمل في الوزارة " class="datepicker form-control form-white"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="CalendarJobStartMinistry" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtJobStartMinistry" runat="server">
                            </obout:Calendar>
                        </span>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtJobStartMinistry"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="receive"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                                        الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="تاريخ بداية العمل في المدرسة :"></asp:Label>
                        <asp:TextBox ID="txtJobStartSchool" runat="server" placeholder="ادخل تاريخ بداية العمل في المدرسة " class="datepicker form-control form-white"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="CalendarJobStartSchool" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtJobStartSchool" runat="server">
                            </obout:Calendar>
                        </span>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtJobStartSchool"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="receive"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                                        الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="تاريخ بداية عمل الوظيفة الحالية :"></asp:Label>
                        <asp:TextBox ID="txtJobStartCurrent" runat="server" placeholder="ادخل تاريخ بداية عمل الوظيفة الحالية   " class="datepicker form-control form-white"></asp:TextBox>
                        <span>
                            <obout:Calendar ID="CalendarJobStartCurrent" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtJobStartCurrent" runat="server">
                            </obout:Calendar>
                        </span>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtJobStartCurrent"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="receive"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                                        الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="المستوى :"></asp:Label>
                        <asp:TextBox ID="txtLevel" runat="server" placeholder="ادخل المستوى " class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="الرجاء إدخال المستوى " ForeColor="Red" ControlToValidate="txtLevel" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="الدرجة :"></asp:Label>
                        <asp:TextBox ID="txtDegree" runat="server" placeholder="ادخل الدرجة " class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="الرجاء إدخال الدرجة " ForeColor="Red" ControlToValidate="txtDegree" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label12" runat="server" Text="هاتف المنزل :"></asp:Label>
                        <asp:TextBox ID="txtPhoneHome" runat="server" placeholder="0000000" data-mask="9999999" class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="الرجاء إدخال هاتف المنزل " ForeColor="Red" ControlToValidate="txtPhoneHome" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label13" runat="server" Text="الجوال :"></asp:Label>
                        <asp:TextBox ID="txtMobile" runat="server" placeholder="059-0000000 " class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="الرجاء إدخال الهاتف المحمول " ForeColor="Red" ControlToValidate="txtMobile" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label14" runat="server" Text="البريد الإلكتروني :"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example12@" class="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="الرجاء إدخال البريد الالكتروني " ForeColor="Red" ControlToValidate="txtEmail" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label16" runat="server" Text="المسمى الوظيفي :"></asp:Label>
                        <asp:DropDownList ID="ddlJobName" runat="server" CssClass="form-control form-white chosen-select AutherDrop" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand="SELECT [ID], [Name] FROM [Jobs]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label15" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtComments" runat="server" placeholder="ادخل ملاحظات " class="form-control form-white"></asp:TextBox>
                    </div>
                </div>

                <br />
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Button ID="btnAdd" runat="server" Text="إضافة" CssClass="btn red-haze btn btn-primary" OnClick="btnAdd_Click" ValidationGroup="Add" />
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group"></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../assets/Select/select2.js"></script>
    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>
</asp:Content>

