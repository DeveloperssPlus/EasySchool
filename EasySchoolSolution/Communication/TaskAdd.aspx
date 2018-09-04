<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TaskAdd.aspx.cs" Inherits="Communication_TaskAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker({
                format: 'LT',
                locale: 'en'
            });

            $('#datetimepicker2').datetimepicker({
                format: 'LT',
                locale: 'en'
            });
        });

    </script>

               <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header ">
            <h3><i class="fa fa-calendar"></i>&nbsp;   تسجيل حدث
            </h3>
        </div>
        <div class="panel-body">
            <div class="row">

                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="عنوان الحدث  :"></asp:Label>
                                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" SetFocusOnError="true" runat="server"
                                    ErrorMessage=" الرجاء ادخال عنوان الحدث" ControlToValidate="txtTitle" ForeColor="Red" ValidationGroup="btnSave"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="نوع الحدث "></asp:Label>
                                <asp:DropDownList ID="ddlEventType" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white"
                                    DataSource='<%# ConstantManager.get("أنواع المهام") %>' DataTextField="value" DataValueField="Id">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="تاريخ الحدث  :"></asp:Label>
                                <asp:TextBox ID="txtDate" runat="server" CssClass=" form-control form-white col-md-10"></asp:TextBox>
                                <span class="col-md-2">
                                    <obout:Calendar ID="CalendarDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300"
                                        DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server">
                                    </obout:Calendar>
                                </span>

                                <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ValidationGroup="btnSave"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                                             الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" CssClass="col-md-12" runat="server" ErrorMessage="الرجاء ادخال التاريخ"
                                    SetFocusOnError="true" ControlToValidate="txtDate" ForeColor="Red" ValidationGroup="btnSave"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col-md-6">

                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="وقت الحدث  :"></asp:Label>
                                <div class='input-group date' id='datetimepicker1'>
                                    <asp:TextBox ID="txtTime" runat="server" class="form-control form-white"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="btnSave" SetFocusOnError="true" ControlToValidate="txtTime" runat="server" ErrorMessage="الرجاء ادخال وقت التنفيذ"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="تاريخ التذكير  :"></asp:Label>
                                <asp:TextBox ID="txtAlarmDate" runat="server" CssClass=" form-control form-white col-md-10"></asp:TextBox>
                                <span class="col-md-2">
                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                        MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtAlarmDate" runat="server">
                                    </obout:Calendar>
                                </span>


                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtAlarmDate" ValidationGroup="btnSave"
                                    Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                                             الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" CssClass="col-md-12" runat="server"
                                    ErrorMessage="الرجاء ادخال التاريخ" SetFocusOnError="true" ControlToValidate="txtAlarmDate" ForeColor="Red" ValidationGroup="btnSave"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col-md-6">

                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server" Text="وقت التذكير  :"></asp:Label>
                                <div class='input-group date' id='datetimepicker2'>
                                    <asp:TextBox ID="txtAlarmTime" runat="server" class="form-control form-white"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
                                </div>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="btnSave" SetFocusOnError="true"
                                    ControlToValidate="txtAlarmTime" runat="server" ErrorMessage="الرجاء ادخال وقت التنفيذ"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="مكان الحدث  :"></asp:Label>
                                <asp:TextBox ID="txtLocationExecution" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" SetFocusOnError="true" runat="server"
                                    ErrorMessage=" الرجاء ادخال مكان التنفيذ " ControlToValidate="txtLocationExecution" ForeColor="Red" ValidationGroup="btnSave"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <div class="col-md-6">

                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="رقم التعميم :"></asp:Label>
                                <asp:DropDownList ID="ddlIncoming" runat="server" class="chosen-select AutherDrop col-md-10" CssClass="form-control form-white"></asp:DropDownList>
                                <span><asp:LinkButton runat="server" > <i class="fa fa-eye" onclick="view();"></i></asp:LinkButton></span>
                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="شرح المطلوب   :"></asp:Label>
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control form-white"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="panel">
        <div class="panel-header ">
            <a><i class="fa fa-user-plus"></i>&nbsp; المشاركين في الحدث </a>
        </div>
        <div class="panel-body">
            <br />
            <div class="row">
                <div class="form-group">
                    <div class="col-md-3">
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="المسؤول عن التنفيذ :"></asp:Label>
                    </div>
                    <div class="col-md-5">

                        <asp:DropDownList ID="ddlEmployee" DataTextField="Name" DataValueField="IdentityNumber" AppendDataBoundItems="true" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white">
                            <asp:ListItem Value="-1">اختر الموظف المسؤول</asp:ListItem>
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="الرجاء اختيار الموظف المسؤول" ForeColor="Red"
                            Display="Dynamic" ValidationGroup="btnSave" ControlToValidate="ddlEmployee" ValueToCompare="-1" Operator="NotEqual"></asp:CompareValidator>
                    </div>
                </div>
            </div>

            <br />

            <div class="row">
                <div style="font-size: small; color: brown;">
                    ملاحطة: إذا كان الحدث يتطلب حضور المشاركين سيتم تسجيل غيابهم بعذر
                    
                     وعدم اجراء أي عملية عليهم استنادا لغيابهم.
                </div>
                <asp:CheckBox ID="chxEmployee" runat="server" />
                يتطلب حضور الموظفين المشاركين.
                <br />

                <asp:CheckBox ID="chxStudent" runat="server" />
                يتطلب حضور الطلاب المشاركين.

            </div>
            <br />
            <br />



            <div class="row">

                <div class="panel-group panel-accordion" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    <i class="fa fa-users"></i>الموظفين المشاركين   
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">

                                <div id="Tabs" role="tabpanel" class="ui-sortable">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="active"><a href="#Employee" aria-controls="personal" role="tab" data-toggle="tab" style="color: #0e849f; border-color: #319db5;"><i class="icon-user"></i>
                                            كل الموظفين</a> </li>


                                        <li><a href="#Specification" aria-controls="employment" role="tab" data-toggle="tab" style="color: #65b417; border-color: #319db5;"><i class="fa fa-pencil" aria-hidden="true"></i>حسب التخصص</a></li>

                                        <li><a href="#JobName" aria-controls="employment" role="tab" data-toggle="tab" style="color: #d714cd; border-color: #319db5;"><i class="fa fa-user-plus" aria-hidden="true"></i>
                                            حسب المسمى الوظيفي </a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding-top: 20px">
                                        <div role="tabpanel" class="tab-pane active" id="Employee">
                                            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                    <asp:CheckBox ID="chkAll" runat="server" Text="تحديد الكل" class="header" AutoPostBack="true" OnCheckedChanged="chkAll_CheckedChanged" />
                                                    <div class="row">
                                                        <asp:ListView ID="LstEmp" runat="server" GroupItemCount="3">

                                                            <LayoutTemplate>
                                                                <table runat="server">
                                                                    <tr runat="server">
                                                                        <td runat="server">
                                                                            <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                                <tr id="groupPlaceholder" runat="server">
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr runat="server">
                                                                        <td runat="server" style=""></td>
                                                                    </tr>

                                                                </table>
                                                            </LayoutTemplate>
                                                            <GroupTemplate>
                                                                <tr id="itemPlaceholderContainer" runat="server">
                                                                    <td id="itemPlaceholder" runat="server"></td>
                                                                </tr>
                                                            </GroupTemplate>
                                                            <ItemTemplate>
                                                                <td runat="server">
                                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("IdentityNumber") %>' />
                                                                    <div class="col-lg-12">
                                                                        <asp:CheckBox ID="chkRow" runat="server" class="item" />
                                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                                    </div>
                                                                </td>
                                                            </ItemTemplate>
                                                            <EmptyDataTemplate>
                                                                <h2>لا يوجد موظفين !</h2>
                                                            </EmptyDataTemplate>
                                                        </asp:ListView>

                                                    </div>

                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="Specification">
                                            <div class="row">
                                                <asp:ListView ID="LstSpecification" runat="server" GroupItemCount="3">
                                                    <LayoutTemplate>
                                                        <table runat="server">
                                                            <tr runat="server">
                                                                <td runat="server">
                                                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                        <tr id="groupPlaceholder" runat="server">
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr runat="server">
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                    </LayoutTemplate>
                                                    <GroupTemplate>
                                                        <tr id="itemPlaceholderContainer" runat="server">
                                                            <td id="itemPlaceholder" runat="server"></td>
                                                        </tr>
                                                    </GroupTemplate>
                                                    <ItemTemplate>
                                                        <td>
                                                            <div class="col-lg-12">
                                                                <%--<asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("IdentityNumber") %>' />--%>

                                                                <asp:CheckBox ID="chkRow" runat="server" />
                                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Specification") %>' />
                                                            </div>
                                                        </td>
                                                    </ItemTemplate>

                                                    <EmptyDataTemplate>
                                                        <h2>لا يوجد تخصص!</h2>
                                                    </EmptyDataTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="JobName">
                                            <div class="row">
                                                <asp:ListView ID="LstJopEmployees" runat="server" GroupItemCount="3">
                                                    <LayoutTemplate>
                                                        <table runat="server">
                                                            <tr runat="server">
                                                                <td runat="server">
                                                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                        <tr id="groupPlaceholder" runat="server">
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr runat="server">
                                                                <td runat="server" style=""></td>
                                                            </tr>

                                                        </table>
                                                    </LayoutTemplate>
                                                    <GroupTemplate>
                                                        <tr id="itemPlaceholderContainer" runat="server">
                                                            <td id="itemPlaceholder" runat="server"></td>
                                                        </tr>
                                                    </GroupTemplate>
                                                    <ItemTemplate>

                                                        <td runat="server">
                                                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("ID") %>' />
                                                            <div class="col-lg-12">
                                                                <asp:CheckBox ID="chkRow" runat="server" />
                                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                            </div>
                                                        </td>
                                                    </ItemTemplate>

                                                    <EmptyDataTemplate>
                                                        <h2>لا يوجد مسميات وظيفية</h2>
                                                    </EmptyDataTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>
                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
                                    <i class="fa fa-child"></i>الطلاب المشاركين   
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse ">
                            <div class="panel">

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
                                                    <asp:ListBox ID="Lstpart" CssClass="form-control form-white" runat="server" SelectionMode="Multiple" ></asp:ListBox>

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="Lstpart" runat="server" ErrorMessage="الرجاء ادخال الطلاب المشاركين"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-6" style="margin-top: 20px; margin-right: 80px">
                    <asp:Button ID="btnSave" runat="server" Text="إنشاء حدث" OnClick="btnSave_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="btnSave" />
                </div>
            </div>
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

   <script>
       function view() {
           var image = document.getElementById("ddlIncoming").value;
       }
   </script>
</asp:Content>

