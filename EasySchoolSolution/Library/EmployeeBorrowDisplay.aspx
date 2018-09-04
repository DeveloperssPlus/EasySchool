<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeBorrowDisplay.aspx.cs" Inherits="Library_EmployeeBorrowDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-header">
                <h3><i class="glyphicon glyphicon-book"></i>سجل استعارة كتب للموظفين

                       <strong><a onclick=" prepareFrame('../SchoolForms/form40.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
                </h3>
            </div>
            <div class="panel-content">
                <p>
                    <asp:Button ID="btnAll" runat="server" Text="جميع الاستعارات" CssClass="btn btn-primary" OnClick="btnAll_Click" />
                    <asp:Button ID="btnNotReturn" runat="server" Text="الاستعارات الغير مرجعة" CssClass="btn btn-warning" OnClick="btnNotReturn_Click"/>
                    <asp:Button ID="btnLate" runat="server" Text="الاستعارات المتأخرة" CssClass="btn btn-danger" OnClick="btnLate_Click"/>

                </p>
                <asp:ListView ID="LstEmployeeBorrow" runat="server" OnItemDataBound="LstEmployeeBorrow_ItemDataBound">
                    <LayoutTemplate>
                        <table class="table table-hover table-dynamic">
                            <thead>
                                <tr>
                                    <th>م
                                    </th>
                                    <th>
                                        <div class="m-b-10">عنوان الكتاب</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">اسم المؤلف</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">تاريخ الاستعارة</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">اسم الموظف</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">تاريخ الاعادة</div>
                                    </th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                <%# Eval("bookname") %>
                            </td>
                            <td>
                                <%# Eval("auther") %>
                            </td>
                            <td>
                                <%#MyDate.getDate(Eval("DateBorrow").ToString())%>
                            </td>

                            <td>
                                <%# Eval("Name") %>
                            </td>

                            <td>
                                <%#MyDate.getDate(Eval("DateReturn").ToString())%>
                            </td>
                            <td>
                                <asp:Label ID="lblStatus" runat="server"></asp:Label>
                            </td>
                         <%--   <td>
                                <a href="#" runat="server" visible='<%#!(Boolean)Eval("isReturn")%>' class="btn btn-success" style="text-align:center;"><i style="padding:4px;" class="fa fa-reply"></i>  ارجاع  </a>
                            </td>--%>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h2>لايوجد استعارات للموظفين</h2>
                    </EmptyDataTemplate>
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

    
    <script type="text/javascript">

        function prepareFrame(src1) {
            var ff = document.getElementById('newframe');
            if (ff != null)
                ff.parentNode.removeChild(ff);

            var ifrm = document.createElement("iframe");
            ifrm.setAttribute("id", "newframe");
            ifrm.setAttribute("src", src1);
            ifrm.style = "Display:none;"

            ifrm.style.width = "640px";
            ifrm.style.height = "480px";
            document.body.appendChild(ifrm);

            document.getElementById('newframe').contentWindow.print();
        }

    </script>
</asp:Content>

