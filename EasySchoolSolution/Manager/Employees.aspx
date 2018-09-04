<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employees.aspx.cs" Inherits="Tahani_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-users" aria-hidden="true"></i>
                سجل الموظفين
            </h4>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-lg-12">

                    <asp:listview id="lstEmployee" runat="server" ondatabinding="lstEmployee_DataBinding">
                        <LayoutTemplate>
                            <table class="table  table-hover table-dynamic dataTable">
                                <thead>
                                    <th>#</th>
                                    <th>اسم الموظف</th>
                                    <th>الوظيفة</th>
                                    <th>الدرجة</th>
                                    <th>التخصص</th>
                                    <th>الجوال</th>
                                    <%--<th>الايميل</th>--%>
                                </thead>
                                <tr id="itemPlaceholder" runat="server"></tr>
                            </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# getCounter() %></td>
                                <td>
                                    <a href="EmployeeRecord.aspx?IdentityNumber=<%#Eval("IdentityNumber") %>"><%# Eval("Name") %></a>
                                </td>
                                <td>
                                    <%# Eval("job") %>
                                </td>
                                <td>
                                    <%# Eval("Degree") %>
                                </td>
                                <td>
                                    <%# Eval("Specification") %>
                                </td>
                                <td>
                                    <%# Eval("Mobile") %>
                                </td>
                              <%--  <td>
                                    <%# Eval("Email") %>
                                </td>--%>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <h2>لا يوجد موظفين حتى الآن</h2>
                        </EmptyDataTemplate>
                    </asp:listview>
                </div>
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

