<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentViolationsDisplay.aspx.cs" Inherits="Communication_StudentViolationsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-times" aria-hidden="true"></i>&nbsp;سجل مخالفات الطلاب  </h4>
        </div>
        <div class="panel-body">

    
            <div class="row">
    
                <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th style="width: 40%;">المخالفة
                            </th>
                            <th style="width: 4%;">درجة المخالفة</th>
                            <th style="width: 4%;">عدد مرات تكرار المخالفة</th>
                            <th>اسم المعلم
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstViolence" OnDataBinding="lstViolence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Title") %>
                                    </td>
                                    <td>
                                        <%# Eval("Grade") %>
                                    </td>
                                    <td>
                                        <%#(int) Eval("Count")+1 %>
                                    </td>
                                    <td>
                                        <%# Eval("teacher") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div></div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

