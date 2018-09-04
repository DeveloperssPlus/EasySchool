<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PermissionsAdd.aspx.cs" Inherits="EmployeeRoles_PermissionsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-plus-square-o"></i>اضافة صلاحية جديدة</h4>

        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-md-12 ">
                    <!-- BEGIN SAMPLE FORM PORTLET-->
                    <div class="portlet light ">
                        <div class="portlet-title">
                        </div>
                        <div class="portlet-body form">
                            <div class="form-horizontal" role="form">
                                <div class="form-body">

                                    <div class="form-group">
                                        <label class="col-md-2 control-label">اسم الصلاحية</label>
                                        <div class="col-md-9">
                                            <div class="input-icon">
                                                <asp:TextBox ID="txtName" class="form-control" placeholder="اسم الصلاحية" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="يجب إدخال اسم الصلاحية" ControlToValidate="txtName" ValidationGroup="AddPermission" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">الصلاحيات</label>
                                        <div class="col-md-9">

                                            <div class="portlet-body">
                                                <div class="panel-group accordion" id="accordion1">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_1">المدير و الوكلاء </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_1" class="panel-collapse in">
                                                            <div class="panel-body">
                                                                <asp:CheckBoxList ID="chxManager" runat="server" RepeatColumns="2" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>
                                                                           <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_2">السجل الأكاديمي</a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_2" class="panel-collapse collapse">
                                                            <div class="panel-body" style="height: 200px; overflow-y: auto;">
                                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_2">المعامل</a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_6" class="panel-collapse collapse">
                                                            <div class="panel-body" style="height: 200px; overflow-y: auto;">
                                                                <asp:CheckBoxList ID="cbFiels" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_3">المكتبة  </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_3" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                                <asp:CheckBoxList ID="cbCarageAndVisa" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_4">الميزانية و المقصف </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_4" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                                <asp:CheckBoxList ID="cbSetting" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h4>
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_5">شئون الطلاب </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse_5" class="panel-collapse collapse">
                                                            <div class="panel-body">
                                                                <asp:CheckBoxList ID="cbStudent" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-2 col-md-9">
                                                    <asp:Button href="javascript:;" CssClass="btn red-haze btn btn-primary" ID="btnAdd" runat="server" Text="إضافة" ValidationGroup="AddPermission" OnClick="btnAdd_Click" />

                                                </div>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- END PRIVACY SETTINGS TAB -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

