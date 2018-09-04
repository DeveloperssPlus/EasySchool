<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayBorrowOfBook.aspx.cs" Inherits="Library_DisplayBorrowOfBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-header">
                <h3><i class="glyphicon glyphicon-book"></i><strong>استعارات</strong>
                    <asp:Label ID="lblname" runat="server"></asp:Label></h3>
            </div>
            <div class="panel-content">

                <p>
                    <asp:Button ID="btnAll" runat="server" Text="جميع الاستعارات" CssClass="btn btn-primary" OnClick="btnAll_Click" />
                    <asp:Button ID="btnNotReturn" runat="server" Text="الاستعارات الغير مرجعة" CssClass="btn btn-warning" OnClick="btnNotReturn_Click" />
                    <asp:Button ID="btnLate" runat="server" Text="الاستعارات المتأخرة" CssClass="btn btn-danger" OnClick="btnLate_Click" />
                </p>
                
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
                            <div class="m-b-10">الاسم</div>
                        </th>
                    
                        <th>
                            <div class="m-b-10">تاريخ الاعادة</div>
                        </th>
                        <th></th>
                        </tr>
                    </thead>
                
                        <asp:ListView ID="LstEmployeeBorrow" runat="server" OnItemDataBound="LstEmployeeBorrow_ItemDataBound" OnItemCommand="LstEmployeeBorrow_ItemCommand">
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
                                <td>
                                    <asp:LinkButton ID="lnkReturn" Visible='<%#!(bool) Eval("isReturn")%>' runat="server" CommandName="return" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary btn-sm"><i class="fa fa-reply" style="margin-right:-4px; margin-left:4px;"></i>  ارجاع  </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:ListView ID="LstStudentsBorrow" runat="server" OnItemDataBound="LstStudentsBorrow_ItemDataBound" OnItemCommand="LstStudentsBorrow_ItemCommand">
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
                                <td>
                                    <asp:LinkButton ID="lnkReturn" Visible='<%#!(bool) Eval("isReturn")%>' runat="server" CommandName="return" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary btn-sm"><i class="fa fa-reply" style="margin-right:-4px; margin-left:4px;"></i>  ارجاع  </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <h2>لايوجد استعارات للطلاب</h2>
                        </EmptyDataTemplate>
                    </asp:ListView>

                </table>

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

