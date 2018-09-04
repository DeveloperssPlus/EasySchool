<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncomingDetails.aspx.cs" Inherits="Communication_IncomingDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-headers">
                <h2 style="padding: 3%">
                    <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; تفاصيل الوارد
                    <asp:HyperLink ID="lnkTask" CssClass="btn btn-primary pull-right" runat="server">
                        اضافة مهمة
                    </asp:HyperLink>
                 <asp:LinkButton ID="lnkDownload" CssClass="btn btn-danger pull-right" runat="server" OnClick="lnkDownload_Click">
                     تحميل
                    </asp:LinkButton>

                </h2>
            </div>
            <div class="panel-body">
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="رقم الوارد :"></asp:Label>
                                <asp:Label ID="txtIncomingNumber" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="lblSource" runat="server" Text="تاريخ الإستلام :"></asp:Label>
                                <asp:Label ID="txtDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="النوع :"></asp:Label>
                                <asp:Label ID="txtType" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="الجهة الوارد منها :"></asp:Label>
                                <asp:Label ID="txtSource" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="الموضوع :"></asp:Label>
                                <asp:Label ID="txtSubject" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="رقم الملف :"></asp:Label>
                                <asp:Label ID="txtFileNumber" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="المرفقات :"></asp:Label>
                                <asp:Label ID="txtFileAttach" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row" style="padding: 5%;">
                        <div class="col-md-12">
                            <iframe runat="server" id="pdfFrame" class="form-control" style="height: 550px; padding: 0px;"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--       <div class="panel">
            <div class="panel-header panel-controls">
                <h4 class="list-group-item">
                    <i class="fa fa-tasks" aria-hidden="true"></i>&nbsp; إسناد الوارد</h4>

            </div>
            <div class="panel-content">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="إضافة شرح :"></asp:Label>
                            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-8">
                                <asp:Button ID="btnSave" runat="server" CssClass="btn red-haze btn btn-primary" Text="حفظ" OnClick="btnSave_Click" />
                                <asp:Label ID="lblerror" runat="server" ForeColor="#0066ff"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="panel panel-default" style="width: 800px; padding: 10px; margin: 10px;">
                        <div id="Tabs" role="tabpanel">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#Employee" aria-controls="personal" role="tab" data-toggle="tab" style="color: #0e849f; border-color: #319db5;"><i class="icon-user"></i>
                                    اختيار الموظفين</a> </li>


                                <li><a href="#Specification" aria-controls="employment" role="tab" data-toggle="tab" style="color: #65b417; border-color: #319db5;"><i class="fa fa-pencil" aria-hidden="true"></i>حسب التخصص</a></li>

                                <li><a href="#JobName" aria-controls="employment" role="tab" data-toggle="tab" style="color: #d714cd; border-color: #319db5;"><i class="fa fa-user-plus" aria-hidden="true"></i>
                                    حسب المسمى الوظيفي </a></li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content" style="padding-top: 20px">

                                <div role="tabpanel" class="tab-pane active" id="Employee">

                                    <asp:CheckBox ID="chkHeader" runat="server" Text="تحديد الكل" class="header" />

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
                                                    <style>
                                                        input:checked {
                                                            height: 25px;
                                                            width: 25px;
                                                        }
                                                    </style>
                                                    <asp:HiddenField ID="identityNo1" runat="server" Value='<%# Eval("IdentityNumber") %>' />


                                                    <div class="col-lg-12">

                                                        <asp:CheckBox ID="chkRow" runat="server" class="item" />


                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                    </div>


                                                </td>
                                            </ItemTemplate>

                                            <AlternatingItemTemplate>
                                                <td runat="server">
                                                    <asp:HiddenField ID="identityNo1" runat="server" Value='<%# Eval("IdentityNumber") %>' />


                                                    <div class="col-lg-12">
                                                        <asp:CheckBox ID="chkRow" runat="server" class="item" />


                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                    </div>

                                                </td>
                                            </AlternatingItemTemplate>
                                            <SelectedItemTemplate>
                                                <asp:HiddenField ID="identityNo1" runat="server" Value='<%# Eval("IdentityNumber") %>' />

                                                <div class="col-lg-12">
                                                    <asp:CheckBox ID="chkRow" runat="server" class="item" />


                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                </div>

                                                </td>
                                            </SelectedItemTemplate>
                                            <EmptyDataTemplate>
                                                <h2>لا يوجد موظفين !</h2>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="Specification">
                                    <asp:CheckBox ID="chkHeaderr" runat="server" Text="تحديد الكل" class="header" />
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
                                                    <style>
                                                        input:checked {
                                                            height: 25px;
                                                            width: 25px;
                                                        }
                                                    </style>
                                                    <div class="col-lg-12">
                                                        <asp:HiddenField ID="identityNo2" runat="server" Value='<%# Eval("IdentityNumber") %>' />

                                                        <asp:CheckBox ID="chkRow" runat="server" />


                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Specification") %>' />
                                                    </div>

                                                </td>
                                            </ItemTemplate>

                                            <AlternatingItemTemplate>
                                                <td runat="server">
                                                    <div class="col-lg-12">
                                                        <asp:HiddenField ID="identityNo2" runat="server" Value='<%# Eval("IdentityNumber") %>' />

                                                        <asp:CheckBox ID="chkRow" runat="server" />

                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Specification") %>' />
                                                    </div>
                                                </td>
                                            </AlternatingItemTemplate>
                                            <SelectedItemTemplate>
                                                <div class="col-lg-12">
                                                    <asp:HiddenField ID="identityNo2" runat="server" Value='<%# Eval("IdentityNumber") %>' />

                                                    <asp:CheckBox ID="chkRow" runat="server" />
                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Specification") %>' />
                                                </div>
                                                </td>
                                            </SelectedItemTemplate>
                                            <EmptyDataTemplate>
                                                <h2>لا يوجد تخصص!</h2>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="JobName">
                                    <asp:CheckBox ID="chkHeaderr1" runat="server" Text="تحديد الكل" class="header" />
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
                                                    <style>
                                                        input:checked {
                                                            height: 25px;
                                                            width: 25px;
                                                        }
                                                    </style>
                                                    <asp:HiddenField ID="identityNo3" runat="server" Value='<%# Eval("ID") %>' />
                                                    <div class="col-lg-12">
                                                        <asp:CheckBox ID="chkRow" runat="server" />


                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                    </div>
                                                </td>
                                            </ItemTemplate>

                                            <AlternatingItemTemplate>
                                                <td runat="server">
                                                    <asp:HiddenField ID="identityNo3" runat="server" Value='<%# Eval("ID") %>' />
                                                    <div class="col-lg-12">
                                                        <asp:CheckBox ID="chkRow" runat="server" />

                                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                    </div>
                                                </td>
                                            </AlternatingItemTemplate>
                                            <SelectedItemTemplate>
                                                <asp:HiddenField ID="identityNo3" runat="server" Value='<%# Eval("ID") %>' />
                                                <div class="col-lg-12">
                                                    <asp:CheckBox ID="chkRow" runat="server" />
                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                </div>
                                                </td>
                                            </SelectedItemTemplate>
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
        </div>
        --%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script type="text/javascript" src="../assets/global/plugins/jquery/jquery-1.11.1.min.js"></script>
    <script src="jquery.min.js"></script>
    <script src="jquery-1.8.0.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#Employee [id*=chkHeader]").click(function () {
                if ($(this).is(":checked")) {
                    $("#Employee [id*=chkRow]").attr("checked", "checked");
                }
                else {
                    $("#Employee [id*=chkRow]").removeAttr("checked");
                }
            });
            $("#Employee [id*=chkRow]").click(function () {
                if ($("#Employee [id*=chkRow]").length == $("#Employee [id*=chkRow]:checked").length) {
                    $("#Employee [id*=chkHeader]").attr("checked", "checked");
                }
                else {
                    $("#Employee [id*=chkHeader]").removeAttr("checked");
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $("#Specification [id*=chkHeaderr]").click(function () {
                if ($(this).is(":checked")) {
                    $("#Specification [id*=chkRow]").attr("checked", "checked");
                } else {
                    $("#Specification [id*=chkRow]").removeAttr("checked");
                }
            });
            $("#Specification [id*=chkRow]").click(function () {
                if ($("#Specification [id*=chkRow]").length == $("#Specification [id*=chkRow]:checked").length) {
                    $("#Specification [id*=chkHeaderr]").attr("checked", "checked");
                } else {
                    $("#Specification [id*=chkHeaderr]").removeAttr("checked");
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $("#JobName [id*=chkHeaderr1]").click(function () {
                if ($(this).is(":checked")) {
                    $("#JobName [id*=chkRow]").attr("checked", "checked");
                } else {
                    $("#JobName [id*=chkRow]").removeAttr("checked");
                }
            });
            $("#JobName [id*=chkRow]").click(function () {
                if ($("#JobName [id*=chkRow]").length == $("#JobName [id*=chkRow]:checked").length) {
                    $("#JobName [id*=chkHeaderr1]").attr("checked", "checked");
                } else {
                    $("#JobName [id*=chkHeaderr1]").removeAttr("checked");
                }
            });
        });
    </script>
</asp:Content>

