<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="GeneralSettings.aspx.cs" Inherits="Admin_GeneralSettings" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .lblStyle {
            font-weight: 100;
            font-size: 13px;
        }
    </style>

    <script>
        function openModal(idd) {
            $('#' + idd).modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="row">
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-header"><i class="fa fa-cogs"></i>&nbsp; الإعدادات العامة</h4>
                <hr />
            </div>
            <div class="panel-body">

                <div class="row">
                    الفصل الدراسي الحالي 
                        <br />
                    <br />

                    <div class="row">
                        <div class="col-md-3">
                            السنة الدراسية
                           <br />
                            <asp:DropDownList ID="ddlYear" runat="server" OnDataBinding="ddlYear_DataBinding"></asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            الفصل الدراسي
                            <br />
                            <asp:DropDownList ID="ddlSemesters" runat="server" DataValueField="Id">
                                <asp:ListItem Value="1"> الفصل الدراسي الأول</asp:ListItem>
                                <asp:ListItem Value="2"> الفصل الدراسي الثاني </asp:ListItem>
                                <asp:ListItem Value="3"> الفصل الدراسي الصيفي</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                        <div class="col-md-5">
                            <asp:Button ID="btnCurrentSemester" runat="server" class="btn btn-success" Text="حفظ" OnClick="btnCurrentSemester_Click" />
                            <a id="Button1" class="btn btn-primary" onclick="openModal('modalViewAll');">عرض الفصول
                            </a>
                        </div>
                    </div>
                </div>

                <br />
                <br />
                <br />


                <div class="row">
                    <div class="col-md-2">
                        نوع التاريخ 

                    </div>
                    <div class="col-md-4">
                        <asp:RadioButtonList ID="radioDate" runat="server" RepeatDirection="Horizontal">

                            <asp:ListItem Value="True">هجري</asp:ListItem>
                            <asp:ListItem Value="False">ميلادي</asp:ListItem>
                        </asp:RadioButtonList>

                    </div>
                    <div class="col-md-2">

                        <asp:Button ID="btnDate" runat="server" Text="حفظ" CssClass="btn btn-success" OnClick="btnDate_Click" />

                    </div>

                </div>


            </div>
        </div>
    </div>

    <div class="row">
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-header"><i class="fa fa-plus"></i>&nbsp;اضافة فصل دراسي جديد </h4>
                <hr />
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">العام الدراسي الهجري</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtYear" runat="server" CssClass="form-control form-white" data-mask="9999-9999 هـ"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" ValidationGroup="btn" runat="server" ErrorMessage="الرجاء إدخال العام الدراسي الهجري" ForeColor="Red" ControlToValidate="txtYear"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">العام الدراسي الميلادي</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtYearM" runat="server" CssClass="form-control form-white" data-mask="9999-9999 م"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" ValidationGroup="btn" runat="server" ErrorMessage=" الرجاء إدخال العام الدراسي الميلادي" ForeColor="Red" ControlToValidate="txtYearM"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">الفصل الدراسي</label>
                            </div>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DDLSemester" runat="server" CssClass="form-control form-white">
                                    <asp:ListItem Value="1"> الفصل الدراسي الأول</asp:ListItem>
                                    <asp:ListItem Value="2">  الفصل الدراسي الثاني </asp:ListItem>
                                    <asp:ListItem Value="3"> الفصل الدراسي الصيفي</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">بداية الفصل</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtStart" runat="server" CssClass="form-control form-white col-md-10"></asp:TextBox>
                                <span>
                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtStart" runat="server"></obout:Calendar>
                                </span>
                                <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtStart"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="btn"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                                           الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <asp:Button runat="server" ID="btn1" CssClass="btn btn-primary btn-sm" Text="الموافق>>" OnClick="btn1_Click" />
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtStart2" runat="server" Enabled="false" CssClass="form-control form-white  datepicker col-md-10"></asp:TextBox>
                                    </div>
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>
                <br />
                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">نهاية الفصل</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtEnd" runat="server" CssClass="form-control form-white col-md-10"></asp:TextBox>
                                <span>
                                    <obout:Calendar ID="Calendar2" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>"
                                         Columns="1" DatePickerSynchronize="true"
                                        MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtEnd" runat="server">
                                    </obout:Calendar>
                                </span>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEnd"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="btn"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                                          الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <br />

                            </div>
                        </div>

                    </div>


                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <asp:Button runat="server" ID="btn2" CssClass="btn btn-primary btn-sm" Text="الموافق>>" OnClick="btn2_Click" />

                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtEnd2" runat="server" Enabled="false" CssClass="form-control form-white  datepicker col-md-10"></asp:TextBox>
                                    </div>
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2">&nbsp;</div>
                        <div class="col-md-3">
                            <asp:Button ID="BtnNewSemester" runat="server" Text="اضافة فصل دراسي جديد" ValidationGroup="btn" CssClass="btn btn-primary" OnClick="BtnNewSemester_Click" />
                           
                        </div>
                     
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-header"><i class="fa fa-calendar"></i>&nbsp; الأسابيع الدراسية</h4>
                <hr />
            </div>
            <div class="panel-body">
                <div class="row">

                    <div class="form-group">
                        <div class="col-md-2">
                            <br />
                            <label class="lblStyle">بداية الأسبوع الأول</label>&nbsp;&nbsp;
                        </div>

                        <div class="col-md-4">
                            <div class="col-md-10">

                                <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStartDate" Display="Dynamic" ForeColor="Red" ValidationGroup="btnweek" ErrorMessage="الرجاء ادخال تاريخ  البداية"></asp:RequiredFieldValidator>

                            <span>
                                <obout:Calendar ID="Calendar3" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1"
                                    MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtStartDate" runat="server">
                                </obout:Calendar>
                            </span>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtStartDate"
                                Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="btnweek"
                                ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-3">

                            <asp:Button ID="btnAllWeek" runat="server" ValidationGroup="btnweek" Text="عرض باقي الأسابيع" CssClass="btn btn-primary" OnClick="btnAllWeek_Click" />
                        </div>
                    </div>
                </div>

                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثاني</label>
                                </div>
                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek2" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثالث</label>
                                </div>
                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek3" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الرابع</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek4" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الخامس</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek5" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع السادس</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek6" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList6" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع السابع</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek7" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList7" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثامن</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek8" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList8" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع التاسع</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek9" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList9" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع العاشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek10" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList10" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الحادي عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek11" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList11" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثاني عشر</label>
                                </div>


                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek12" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList12" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثالث عشر</label>
                                </div>


                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek13" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList13" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الرابع عشر</label>
                                </div>


                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek14" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList14" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الخامس عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek15" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">

                                    <asp:DropDownList ID="DropDownList15" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع السادس عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek16" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">

                                    <asp:DropDownList ID="DropDownList16" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع السابع عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek17" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList17" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>


                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الثامن عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek18" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList18" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع التاسع عشر</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek19" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList19" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع العشرون</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek20" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList20" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label class="lblStyle">الأسبوع الواحد و العشرون</label>
                                </div>

                                <div class="col-md-5">
                                    <asp:Label ID="lblDateWeek21" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList21" runat="server" DataSource='<%#ConstantManager.get("أنواع الأسابيع")%>' DataTextField="value" DataValueField="Id"></asp:DropDownList>

                                </div>
                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="row">

                        <div class="col-md-1">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <asp:Button ID="btnSave" runat="server" Text="حفظ" CssClass="btn btn-primary" ValidationGroup="btnSave" OnClick="btnSave_Click" />
                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label9" runat="server" CssClass="text-success"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>

            </div>

            <div class="row">
            </div>

        </div>
    </div>



    <div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>Colored</strong> Header</h4>
                </div>
                <div class="modal-body">
                    <p>Want colors? Click on a color to switch header look:</p>
                    <div class="p-t-20 m-b-20 p-l-40">
                        <ul class="colors-list color-header">
                            <li class="dark"></li>
                            <li class="red"></li>
                            <li class="green"></li>
                            <li class="blue active"></li>
                            <li class="aero"></li>
                            <li class="gray"></li>
                            <li class="orange"></li>
                            <li class="pink"></li>
                            <li class="purple"></li>
                        </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">Save changes</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="modalViewAll" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title">الفصول الدراسية</h4>
                </div>
                <div class="modal-body">

                    <div class="row">
                        <div class="col-md-12">
                            <table class="table  table-hover dataTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>السنة الهجرية</th>
                                        <th>السنة الميلادية</th>
                                        <th>الفصل الدراسي</th>
                                        <th>بداية الفصل</th>
                                        <th>نهاية الفصل</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <asp:ListView ID="lstSemesters" runat="server" OnDataBinding="lstSemesters_DataBinding">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# getCounter() %>
                                            </td>
                                            <td>
                                                <%#  ((int)Eval("YearH") + 1) + "-" + Eval("YearH") + " هـ " %>
                                            </td>
                                            <td>
                                                <%#  ((int)Eval("YearM") + 1) + "-" + Eval("YearM") + " م " %>
                                            </td>
                                            <td>
                                                <%# Eval("Semester") %>
                                            </td>
                                            <td>
                                                <%# MyDate.getDate(Eval("StartDate").ToString())%>
                                            </td>
                                            <td>
                                                <%# MyDate.getDate(Eval("EndDate").ToString())%>
                                            </td>
                                            <td>
                                                <div class="bg-blue" style="text-align: center">

                                                    <%# Eval("Current") %>
                                                </div>
                                            </td>

                                            <%--   <td>
                                 <a runat="server" title="طباعة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;"> <i style="padding:7%;" class="fa fa-print inline" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form18.aspx?id={0}')") %>"></i></a>
                                  <a runat="server" title="رد على المساءلة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;" href='<%# Eval("Id","LatnessAlert.aspx?id={0}")%>'><i style="padding: 7%;" class="fa fa-reply inline"></i></a>
                            </td>--%>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">إغلاق</button>
                    <%--<button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">Save changes</button>--%>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>

</asp:Content>

