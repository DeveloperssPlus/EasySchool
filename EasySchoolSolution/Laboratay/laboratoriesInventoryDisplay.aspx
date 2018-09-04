<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="laboratoriesInventoryDisplay.aspx.cs" Inherits="Laboratay_laboratoriesInventoryDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-wpforms" aria-hidden="true"></i>&nbsp; جرد المعامل</h4>
        </div>
        <div class="panel-body">


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="table table-hover table-dynamic" id="table-editable">
                        <thead>
                            <tr>
                                <th>م</th>
                                <th class="auto-style1">رقم الصنف</th>
                                <th>اسم الصنف</th>
                                <th>الوحدة</th>
                                <th>المقيد بالعهدة</th>
                                <th>صالح</th>
                                <th>غير صالح</th>
                                <th>الزيادة</th>
                                <th></th>

                            </tr>
                        </thead>
                        <asp:ListView ID="lstlaboratoriesInventory" runat="server" OnItemCommand="lstlaboratoriesInventory_ItemCommand" OnDataBinding="lstlaboratoriesInventory_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td><%# getCounter() %></td>
                                    <td>
                                        <asp:HiddenField ID="Labid" runat="server" Value='<%# Eval("Id")%>' />

                                        <%# Eval("KindId") %>
                                    </td>

                                    <td>
                                        <%# Eval("KindName")%>
                                    </td>
                                    <td>
                                        <%# Eval("Unit")%>
                                    </td>
                                    <td>
                                        <%# Eval("ObligatedCount")   %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("ValidCount") %>
                                
                                    </td>
                                        <td>
                                        <%# Eval("NotValidCount") %>
                                
                                    </td>

                                    <td>
                                        <%# Eval("increase") %>
                                
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

