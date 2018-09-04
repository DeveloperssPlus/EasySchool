<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PermissionEdit.aspx.cs" Inherits="EmployeeRoles_PermissionEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">

  <div class="panel">
        <div class="panel-header">
                     <h4> <i class="fa fa-pencil-square-o"></i>     تعديل صلاحية         </h4>
           
        </div>
        <div class="panel-body">
   
    <ul class="page-breadcrumb breadcrumb">
        <li>
            <a href="index.html">نظام الصلاحيات</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <a href="index.html">صلاحيات  </a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span class="active">تعديل  </span>
        </li>
    </ul>
    <div class="row">
        <div class="col-md-6 ">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light ">
                <div class="portlet-title">
                   
                </div>
                <div class="portlet-body form">
                    <div class="form-horizontal" role="form">
                        <div class="form-body">

                             <div class="form-group">
                                <label class="col-md-2 control-label">الصلاحيات</label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtPermission" CssClass="form-control" runat="server"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="rfvNationality" runat="server" ControlToValidate="txtPermission"
                                             ValidationGroup="AddPermission" Display="Dynamic" ErrorMessage="لا يمكن أن يكون هذا الحقل فارغاً" ForeColor="#FF3300"></asp:RequiredFieldValidator>

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
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_1">المدير والمدرسة </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse_1" class="panel-collapse in">
                                                    <div class="panel-body">
                                                        <asp:CheckBoxList ID="chxManager" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4>
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_2">المختبر والمكتبة</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse_2" class="panel-collapse collapse">
                                                    <div class="panel-body" style="height: 200px; overflow-y: auto;">
                                                        <asp:CheckBoxList ID="cbFiels" runat="server" RepeatColumns="4" DataTextField="Description" DataValueField="RoleId"></asp:CheckBoxList>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4>
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_3">نظام الكراج والتأشيرات </a>
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
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_4">صلاحيات الموظفين والنظام المالي </a>
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
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_5">الطلاب وحضور الطلاب </a>
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
                                </div>





                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-offset-2 col-md-9">
                                            <asp:Button href="javascript:;" CssClass="btn red-haze btn btn-primary" ID="btnEdit" runat="server" Text="تعديل" ValidationGroup="AddPermission" OnClick="btnEdit_Click" />

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

