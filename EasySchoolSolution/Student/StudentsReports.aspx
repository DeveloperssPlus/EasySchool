<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsReports.aspx.cs" Inherits="Student_StudentsReports" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header ">
            <h3><i class="fa fa-table"></i>متابعة شؤون الطلاب</h3>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="panel-content">
            <div class="row">
                <div class="col-md-6">
                    التاريخ
                <asp:TextBox ID="txtDate" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>"
                        Columns="1" DatePickerSynchronize="false" MonthWidth="300"
                        DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png"
                        DatePickerMode="true" TextBoxId="txtDate" runat="server">
                    </obout:Calendar>

                    <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
                        Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btn"
                        ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                        SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <div class="col-md-10">
                        متابعة
                    <asp:DropDownList ID="ddlType" runat="server" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Value="Absent">الغياب اليومي</asp:ListItem>
                        <asp:ListItem Value="late">التأخر الصباحي</asp:ListItem>
                        <asp:ListItem Value="Attendence">حضور الحصص</asp:ListItem>
                        <asp:ListItem Value="note">ملاحظات المعلمين</asp:ListItem>
                        <asp:ListItem Value="violation">المخالفات</asp:ListItem>
                        <asp:ListItem Value="table">الجداول الدراسية</asp:ListItem>
                        <%--<asp:ListItem Value="rate">الحالة الدراسية </asp:ListItem>
                        <asp:ListItem Value="patient">الحالة الصحية </asp:ListItem>--%>
                    </asp:DropDownList>
                    </div>
                </div>
            </div>
            <br />
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                <ContentTemplate>


            <div class="row">
                <div class="col-md-7">
                    عرض الطلاب حسب:  
                <asp:RadioButtonList ID="radioType" runat="server" RepeatDirection="Horizontal"
                    OnSelectedIndexChanged="radioType_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="all" Selected="True">كل الطلاب</asp:ListItem>
                    <asp:ListItem Value="class">صف معين</asp:ListItem>
                    <asp:ListItem Value="one">طالب معين</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click"
                        Text="عرض" CssClass="btn btn-success" ValidationGroup="btn"></asp:Button>
                </div>
            </div>
            <br />
            <asp:PlaceHolder ID="PlaceHolderClass" runat="server" Visible="false">
                <div class="row">

                    <div class="col-md-3">
                        الصف
                    <asp:DropDownList ID="ddlClass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="col-md-7">
                        المادة
                    <asp:DropDownList ID="ddlSubject" runat="server" OnDataBinding="ddlSubject_DataBinding"></asp:DropDownList>
                    </div>

                </div>
            </asp:PlaceHolder>

            <asp:PlaceHolder ID="PlaceHolderOne" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-10">
                        اسم الطالب
                    <asp:DropDownList ID="ddlStudents" runat="server" OnDataBinding="ddlStudents_DataBinding"
                        DataTextField="Name" DataValueField="IdentityNumber">
                    </asp:DropDownList>
                    </div>

           <%--         <div class="col-md-2">
                        <asp:Button ID="btnView2" runat="server" OnClick="btnView_Click"
                            Text="عرض" CssClass="btn btn-success" ValidationGroup="btn"></asp:Button>
                    </div>--%>
                </div>
            </asp:PlaceHolder>
                    </ContentTemplate>
                       </asp:UpdatePanel>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                <ContentTemplate>

            <%-- الغياب --%>
            <asp:PlaceHolder ID="PlaceHolderAbsence" runat="server" Visible="true">

            <div class="row">
                الغياب اليومي
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstAbsence" OnDataBinding="lstAbsence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <div runat="server" visible='<%#Eval("IsExcuse") %>' class="badge badge-primary">بعذر</div>
                                        <div runat="server" visible='<%# !(bool) Eval("IsExcuse") %>' class="badge badge-danger">بدون عذر</div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>
          

            <%-- التأخر الصباحي --%>
            <asp:PlaceHolder ID="PlaceHolderLate" runat="server" Visible="false">

            <div class="row">
                التأخر الصباحي
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th>مدة التأخر
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstLate" OnDataBinding="lstLate_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Amount") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>

            <%-- ملاحظات المعلمين --%>
            <asp:PlaceHolder ID="PlaceHolderNote" runat="server" Visible="false">

            <div class="row">
                ملاحظات المعلمين
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th style="width: 40%;">الملاحظة
                            </th>
                            <th>اسم المعلم
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstNotes" OnDataBinding="lstNotes_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Note") %>
                                    </td>

                                    <td>
                                        <%# Eval("teacher") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>

            <br />
     
            <%-- مخالفات الطلاب --%>
            <asp:PlaceHolder ID="PlaceHolderInfraction" runat="server" Visible="false">

            <div class="row">
                مخالفات الطلاب
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th style="width: 40%;">المخالفة
                            </th>
                            <th>درجة المخالفة</th>
                            <th>عدد مرات تكرار المخالفة</th>
                            <th>اسم المعلم
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstViolence" OnDataBinding="lstViolence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Title") %>
                                    </td>
                                    <td>
                                        <%# Eval("Grade") %>
                                    </td>
                                    <td>
                                        <%#(int) Eval("Count")+1 %>
                                    </td>
                                    <td>
                                        <%# Eval("teacher") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>

                             <%-- حضور الحصص الطلاب --%>
            <asp:PlaceHolder ID="PlaceHolderPeriod" runat="server" Visible="false">

            <div class="row">
                مخالفات الطلاب
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th style="width: 40%;">المخالفة
                            </th>
                            <th>درجة المخالفة</th>
                            <th>عدد مرات تكرار المخالفة</th>
                            <th>اسم المعلم
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="ListView1" OnDataBinding="lstViolence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Title") %>
                                    </td>
                                    <td>
                                        <%# Eval("Grade") %>
                                    </td>
                                    <td>
                                        <%#(int) Eval("Count")+1 %>
                                    </td>
                                    <td>
                                        <%# Eval("teacher") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>




                             <%-- حداول الطلاب --%>
            <asp:PlaceHolder ID="PlaceHolderTable" runat="server" Visible="false">

            <div class="row">
                مخالفات الطلاب
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th style="width: 40%;">المخالفة
                            </th>
                            <th>درجة المخالفة</th>
                            <th>عدد مرات تكرار المخالفة</th>
                            <th>اسم المعلم
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="ListView2" OnDataBinding="lstViolence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Title") %>
                                    </td>
                                    <td>
                                        <%# Eval("Grade") %>
                                    </td>
                                    <td>
                                        <%#(int) Eval("Count")+1 %>
                                    </td>
                                    <td>
                                        <%# Eval("teacher") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
                </asp:PlaceHolder>




                </ContentTemplate>
                <Triggers><asp:AsyncPostBackTrigger  ControlID="ddlType" EventName="SelectedIndexChanged"/></Triggers>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

