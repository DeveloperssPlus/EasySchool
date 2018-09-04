<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UsersGeneralizaionDisplay.aspx.cs" Inherits="Communication_UsersGeneralizaionDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="col-lg-12 portlets">

        <div class="panel">

            <div class="panel-header">
                <h4 >
                    <i class="fa fa-user" aria-hidden="true"></i>&nbsp; سجل اطلاع الموظفين على التعاميم
                </h4>
            </div>
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">

                        <asp:Label ID="Label3" runat="server" Text="الجهة الوارد منها التعميم :"></asp:Label>
                        <asp:Label ID="lblSource" runat="server" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="التاريخ :"></asp:Label>
                            <asp:Label ID="lbldate" runat="server" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-4">

                        <asp:Label ID="Label2" runat="server" Text="النوع :"></asp:Label>
                        <asp:Label ID="lbltype" runat="server" Font-Size="15px" ForeColor="#3399ff"></asp:Label>

                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="الموضوع :"></asp:Label>
                            <asp:Label ID="lblsubject" runat="server" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
            <br />
            <asp:ListView ID="LstEmployee" runat="server">

                <LayoutTemplate>
                    <table class="table table-hover dataTable table-editable">
                        <thead>
                            <tr>
                                <th>
                                    <div class="m-b-10">الموظف</div>
                                </th>
                                <th>
                                    <div class="m-b-10">هل شاهده</div>
                                </th>

                            </tr>
                        </thead>

                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("EmployeeName") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IsSeenn") %>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <h3>هذا التعميم خاص بالادارة, لم يتم اسناده لأي موظف</h3>
                </EmptyDataTemplate>
            </asp:ListView>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>

</asp:Content>

