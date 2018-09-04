<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PermissionClassesDisplay.aspx.cs" Inherits="EmployeeAttendence_PermissionClassesDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; سجل تأمين الحصص </h5>
        </div>
        <div class="panel-content">

            <br />

            <table class="table datatable">

                <tr>
                    <th>المعلم المستأذن</th>
                <%--    <th>تاريخ الاستئذان</th>--%>
                    <th>الحصة</th>
                    <th>الفصل</th>
                    <th>اسم المعلم</th>
                    <th>ملاحظات</th>
                    <th></th>
                </tr>

                <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemCommand="LstClass_ItemCommand" OnItemDataBound="LstClass_ItemDataBound">
                    <ItemTemplate>
                        <tr>
                            <td rowspan="<%#(int) Eval("count") +1  %>">

                                <%#Eval("perEmpName") %>
                                <br />
                                <%# MyDate.getDate(Eval("Date").ToString()) %>

                            </td>
                        </tr>


                        <asp:ListView ID="lstEmpClass" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <%--     <td>
                                        <%# MyDate.getDate(Eval("date").ToString()) %>
                                    </td>--%>
                                    <td>
                                        <%#Eval("Period") %>
                                    </td>
                                    <td>
                                        <%#Eval("ClassRoom") %>
                                    </td>
                                    <td>
                                        <%#Eval("Name") %>
                                    </td>
                                    <td>
                                        <%#Eval("Comment") %>
                                    </td>
                                    <td>
                                        <asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
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

