<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudentGrade.aspx.cs" Inherits="ImportExcel_AddStudentGrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="heading row">
        <h3><i class="fa fa-excel-o font-red-flamingo"></i>استيراد ملفات الاكسل</h3>
    </div>

    <asp:PlaceHolder ID="placeHolderSuccess" runat="server" Visible="false">
        <div class="alert alert-success media fade in">
            <p><strong>شكرا لك.</strong> تم إضافة الملفات بنجاح</p>
        </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="placeHolderError" runat="server" Visible="false">
        <div class="alert alert-danger media fade in">
            <p>
                <asp:Literal ID="ltrError" runat="server"></asp:Literal>
            </p>
        </div>
    </asp:PlaceHolder>
    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="fa fa-user-plus"></i>&nbsp; اضافة درجات الطلاب </h4>
            </div>

            <div class="panel-content">
                <div class="row">
                    <div class="portlet-body container" style="height: auto;">
                        <div class="row">
                            <div class="col-sm-3">
                                         الرجاء اختيار ملفات درجات الطلاب..
                                <br />

                                <br />
                                <br />
                            </div>
                            <div class="col-sm-9">
                                <asp:FileUpload ID="FileUpload1" runat="server"  />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="col-sm-3" style="margin-top: 20px;">
                                        <asp:Button ID="btnAdd" runat="server" Text="اضافة الملفات" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="panel panel-blue margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-users"></i>&nbsp; عرض الإرشاد الأكاديمي </h3>
            </div>
            <div class="panel-content">
                    <asp:ListView ID="ListView1" runat="server">
                    <LayoutTemplate>
                        <table class="table table-hover dataTable" id="table-editable">
                            <thead>
                                <th>المرشد الأكاديمي</th>
                                <th>الرقم الأكاديمي</th>
                                <th>اسم الطالب</th>
                                <th>سنة الالتحاق</th>
                            </thead>
                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("GuidName") %>
                            </td>
                            <td>
                                <%# Eval("StudentNumber") %>
                            </td>
                            <td>
                                <%# Eval("StudentName") %>
                            </td>
                            <td>
                                <%# Eval("Year") %>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h2>لا يوجد مرشدين أكاديميين حتى الآن</h2>
                    </EmptyDataTemplate>
                </asp:ListView>          
                 </div>
        </div>--%>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

