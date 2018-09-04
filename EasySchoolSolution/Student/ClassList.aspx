<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClassList.aspx.cs" Inherits="Student_ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; الصفوف </h5>
        </div>
        <div class="panel-content">
            <br />
            <table class="table table-hover table-dynamic dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>اسم المعلم</th>
                        <th>المادة</th>
                        <th>الصف</th>
                        <th></th>
                    </tr>
                </thead>
                <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemCommand="LstClass_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                <%#Eval("teacher") %>
                            </td>
                            <td>
                                <%#Eval("subject") %>
                            </td>
                            <td>
                                <%#Eval("ClassId") %>
                            </td>
                            <td>
                                <%--      <asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>
                                </asp:LinkButton>--%>
                                <a href="<%# Eval("SubjectId","ClassStudents.aspx?id={0}") %>" class="btn btn-sm"><i class="fa fa-users"></i>عرض الطلاب</a>
                                <a href="<%# Eval("SubjectId","ClassStudents.aspx?id={0}") %>" class="btn btn-sm"><i class=""></i>تسجيل الحضور اليومي</a>
                                <a href="<%# Eval("SubjectId","ClassStudents.aspx?id={0}") %>" class="btn btn-sm"><i class=""></i>تسجيل حضور حصة</a>
                                <a href="<%# Eval("SubjectId","ClassStudents.aspx?id={0}") %>" class="btn btn-sm"><i class=""></i>تسجيل الحالة الدراسية</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

