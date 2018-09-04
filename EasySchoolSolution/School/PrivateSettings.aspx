<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PrivateSettings.aspx.cs" Inherits="School_PrivateSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .underline {
            border-bottom-color: darkgray;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            padding-bottom: 10px;
            padding-top: 10px;
        }
    </style>

      <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-header">
                <h4><i class="fa fa-cog" aria-hidden="true"></i>&nbsp; الإعدادات الخاصة</h4>
            </div>
            <div class="panel-body">
                <div id="Tabs" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li runat="server" id="infoTab" class="active"><a href="#infoDiv" aria-controls="personal" role="tab" data-toggle="tab" style="color: #0e849f; border-color: #319db5;"><i class="icon-user"></i>معلومات المدرسة </a></li>
                        <li runat="server" id="jobTab"><a href="#jobDiv" aria-controls="employment" role="tab" data-toggle="tab" style="color: #d714cd; border-color: #319db5;"><i class="fa fa-user-plus" aria-hidden="true"></i>المسمى الوظيفي  </a></li>
                        <li runat="server" id="activityTab"><a href="#activityDiv" aria-controls="employment" role="tab" data-toggle="tab" style="color: #65b417; border-color: #319db5;"><i class="fa fa-pencil" aria-hidden="true"></i>النشاطات </a></li>
                        <li runat="server" id="settingTab"><a href="#setting" aria-controls="setting" role="tab" data-toggle="tab" style="color: black; border-color: #319db5;"><i class="fa fa-cog" aria-hidden="true"></i>الاعدادات </a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content" style="padding-top: 20px">
                        <div role="tabpanel" class="tab-pane active" id="infoDiv">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="row  underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label2" runat="server" Text="الرقم الوزاري :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblSchoolID" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="lblSource" runat="server" Text="اسم المدرسة :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblSchoolName" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label10" runat="server" Text="عدد الوكلاء :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblAgentsNumber" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label16" runat="server" Text="نوع الدراسة :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblStudyType" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label18" runat="server" Text="نوع المدرسة :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblSchoolType" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="jobDiv">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label1" runat="server" Text="القائد التربوي :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblEducationalLeader" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label4" runat="server" Text="وكيل الشؤون التعليمية :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblUndersecretaryEducationalAffairs" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>

                                    <br />
                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label5" runat="server" Text="وكيل الشؤون المدرسية :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblUndersecretarySchoolAffairs" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row underline">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label6" runat="server" Text="وكيل شؤون الطلاب :"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Label ID="lblUndersecretaryStudentAffairs" runat="server" ClientIDMode="Static"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="activityDiv">
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label7" runat="server" Text="نوع النشاط :"></asp:Label>
                                                    <asp:DropDownList runat="server" ID="ddlActivity" DataSource='<%#ConstantManager.get("النشاطات")%>' DataValueField="Id" DataTextField="value" CssClass="form-control form-white"></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label8" runat="server" Text="اسم النشاط :"></asp:Label>
                                                    <asp:TextBox ID="txtActivityName" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ValidationGroup="btnActivity" ControlToValidate="txtActivityName" ForeColor="Red" ErrorMessage="الرجاء ادخال اسم النشاط"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label9" runat="server" Text="الوقت :"></asp:Label>
                                                    <div class='input-group date' id='datetimepicker1'>

                                                        <asp:TextBox ID="txtActivityTime" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-time"></span>
                                                        </span>
                                                    </div>
                                                   
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ValidationGroup="btnActivity" ControlToValidate="txtActivityTime" ForeColor="Red" ErrorMessage="الرجاء ادخال وقت النشاط"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label13" runat="server" Text="مدة النشاط (بالدقائق) :"></asp:Label>
                                                    <asp:TextBox ID="txtPeriod" TextMode="Number" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ValidationGroup="btnActivity" ControlToValidate="txtPeriod" ForeColor="Red" ErrorMessage="الرجاء ادخال مدة النشاط"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <asp:Button ID="btnSaveActivity" runat="server" CssClass="btn red-haze btn btn-primary" Text="حفظ" 
                                                    ValidationGroup="btnActivity" OnClick="btnSaveActivity_Click" />
                                                <asp:Label ID="lblmsg" runat="server" ForeColor="#0066ff"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-6">
                                        <table class="table table-hover dataTable" id="table-editable">
                                            <thead>
                                                <tr>
                                                    <th class="auto-style1">اسم النشاط</th>
                                                    <th>بداية النشاط</th>
                                                    <th>مدة النشاط</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="lstActive" runat="server" OnDataBinding="lstActive_DataBinding" OnItemCommand="lstActive_ItemCommand">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <%# Eval("name") %>
                                                        </td>
                                                        <td>
                                                            <%# Eval("Time")%>
                                                        </td>
                                                        <td>
                                                            <%# Eval("Period") %>
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("ActiveID") %>'
                                                                 OnClientClick="return confirm('هل تريد بالفعل حذف النشاط ؟؟');" >
                                                                <i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </table>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                        <div role="tabpanel" class="tab-pane" id="setting">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label3" runat="server" Text="وقت بداية الدوام"></asp:Label>
                                                     <div class='input-group date' id='datetimepicker2'>

                                                       <asp:TextBox ID="txtTimeBegin" runat="server"   CssClass="form-control form-white"></asp:TextBox>
                                                   

                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-time"></span>
                                                        </span>
                                                    </div>
                                                    
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtTimeBegin" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSetting" ErrorMessage="الرجاء ادخال وقت بداية الدوام"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" Text="وقت نهاية الدوام"></asp:Label>
                                                     <div class='input-group date' id='datetimepicker3'>
 <asp:TextBox ID="txtTimeEnd" runat="server"  CssClass="form-control form-white"></asp:TextBox>
                                                   
                                                    

                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-time"></span>
                                                        </span>
                                                    </div>
                                           
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtTimeEnd" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSetting" ErrorMessage="الرجاء ادخال وقت نهاية الدوام"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <p><small>يستخدم هذا الوقت لتحديد تأخر الموظفين عن دوامهم. من خلال المقارنة بين وقت حضورهم وهذا الوقت.</small></p>

                                        </div>

                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label11" runat="server" Text="عدد الاجازات الاضطرارية المسموحة للموظف :"></asp:Label>
                                                    <asp:TextBox ID="txtVacation" TextMode="Number" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ValidationGroup="btnSetting" ControlToValidate="txtVacation" ForeColor="Red" ErrorMessage="الرجاء ادخال عدد الاجازات"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label12" runat="server" Text="رمز الصادر :"></asp:Label>
                                                    <asp:TextBox ID="txtOutcoming" runat="server" data-mask="*/*" CssClass="form-control form-white" placeholder="مثال ص/ب"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ValidationGroup="btnSetting" ControlToValidate="txtOutcoming" ForeColor="Red" ErrorMessage="الرجاء ادخال رمز الصادر"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <%--   <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" Text="مدة النشاط (بالدقائق) :"></asp:Label>
                                                    <asp:TextBox ID="TextBox3" TextMode="Number" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ValidationGroup="btnActivity" ControlToValidate="txtPeriod" ForeColor="Red" ErrorMessage="الرجاء ادخال مدة النشاط"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                        </div>--%>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <asp:Button ID="btnSetting" runat="server" CssClass="btn red-haze btn btn-primary" ValidationGroup="btnSetting" Text="حفظ" OnClick="btnSetting_Click" />
                                                <asp:Label ID="lblSettingSave" runat="server" ForeColor="#0066ff"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-6">
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script>
        $(document).ready(function () {
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });
     
        $(function () {
            $('#datetimepicker2').datetimepicker({
                format: 'LT',
                locale: 'en'
            });
        });

        $(function () {
            $('#datetimepicker1').datetimepicker({
                format: 'LT',
                locale: 'en'
            });
        });
        });

        // attach the event binding function to every partial update
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function (evt, args) {
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });


            $(function () {
                $('#datetimepicker2').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });

            $(function () {
                $('#datetimepicker1').datetimepicker({
                    format: 'LT',
                    locale: 'en'
                });
            });
        });
    </script>
  
</asp:Content>

