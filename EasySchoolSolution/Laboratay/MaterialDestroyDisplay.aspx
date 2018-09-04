<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaterialDestroyDisplay.aspx.cs" Inherits="Laboratay_MaterialDestroyDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-ban" aria-hidden="true"></i>&nbsp; محضر فقد أو إتلاف مواد</h4>
        </div>
        <div class="panel-body">

            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="table table-hover table-dynamic" id="table-editable">
                        <thead>
                            <tr>
                                <th>اليوم/التاريخ</th>
                                <th class="auto-style1">رقم الصنف</th>
                                <th>اسم الصنف
                                    <br />
                                    ومواصفاته</th>
                                <th>نوعه</th>
                                <th>الوحدة</th>
                                <th>الكمية</th>
                                <th>أسباب التلف/الفقد</th>
                                <th>ملحوظات</th>
                                <th></th>

                            </tr>
                        </thead>
                        <asp:ListView ID="lstMissing" runat="server" OnItemCommand="lstMissing_ItemCommand" OnDataBinding="lstMissing_DataBinding">
                            <ItemTemplate>
                                <tr>

                                    <td>
                                        <%# MyDate.getDay((DateTime)Eval("Date")) +" "+ MyDate.getDate(Eval("Date").ToString()) %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("KindId") %>
                                    </td>

                                    <td>
                                        <%# Eval("KindName")%>
                                    </td>
                                    <td>
                                        <%# Eval("Perminant")%>
                                    </td>
                                    <td>
                                        <%# Eval("Unit") %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("Quantity") %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("Reason") %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("Comments") %>
                                
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل الحذف ؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>


                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

