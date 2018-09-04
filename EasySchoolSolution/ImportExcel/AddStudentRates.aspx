<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudentRates.aspx.cs" Inherits="ImportExcel_AddStudentRates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <asp:PlaceHolder ID="placeHolderSuccess" runat="server" Visible="false">
        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div>
                    <span class="noty_text">
                        <div class="alert alert-success">
                            <asp:Literal ID="lblSuccess" runat="server"></asp:Literal>
                            <div class="noty_buttons">
                                <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                            </div>
                        </div>
                    </span>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="placeHolderError" runat="server" Visible="false">
        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div>
                    <span class="noty_text">
                        <div class="alert alert-danger">
                            <asp:Literal ID="ltrError" runat="server"></asp:Literal>
                            <div class="noty_buttons">
                                <asp:Button ID="btnok2" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                            </div>
                        </div>
                    </span>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>



    <div class="heading row">
        <h3><i class="fa fa-excel-o font-red-flamingo"></i>استيراد ملفات الاكسل</h3>
    </div>

    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="fa fa-user-plus"></i>&nbsp; اضافة حالة الطالب الدراسية </h4>
            </div>

            <div class="panel-content">
                <div class="row">
                    <div class="portlet-body container" style="height: auto;">
                        <div class="row">
                            <div class="col-sm-3">
                                الرجاء اختيار ملفات الحالة الدراسية للطلاب..
                                <br />
                                <%--<small class="text-info">يمكنك اختيار أكتر من ملف</small>--%>

                                <br />
                                <br />
                            </div>
                            <div class="col-sm-9">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
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

        <div class="panel panel-blue margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-users"></i>&nbsp; عرض الطلاب </h3>
            </div>
            <div class="panel-content">
                <asp:ListView ID="ListView1" runat="server">
                    <LayoutTemplate>
                        <table class="table table-hover table-dynamic dataTable" id="table-editable">
                            <thead>
                                <th>الرقم الأكاديمي</th>
                                <th>اسم الطالب</th>
                                <th>المادة</th>
                                <th>التقييم</th>

                            </thead>
                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("stdId") %>
                            </td>
                            <td>
                                <a href="../Manager/StudentRecord.aspx?IdentityNumber=<%#Eval("IdentityNumber") %>"><%# Eval("Name") %></a>
                            </td>
                            <td>
                                <%# Eval("subject") %>
                            </td>
                            <td>
                                <%# Eval("rate") %>
                            </td>

                        </tr>
                    </ItemTemplate>
         <%--           <EmptyDataTemplate>
                        <h2>لا يوجد طلاب حتى الآن</h2>
                    </EmptyDataTemplate>--%>
                </asp:ListView>
            </div>
        </div>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

