<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDisplay.aspx.cs" Inherits="Library_BookDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="panel">
         
        <div class="panel-header">
            <h4><i class="fa fa-book" aria-hidden="true"></i>&nbsp; الكتب</h4>
        </div>
        <div class="panel-body">
            
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">رقم الكتاب</th>
                        <th>عنوان الكتاب</th>
                        <th>المؤلف</th>
                        <th>عدد النسخ الكلي</th>
                        <th>النسخ المتوفرة</th>
                        <th></th>
                    </tr>
                </thead>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                <asp:ListView ID="lstBook" runat="server" OnItemCommand="lstBook_ItemCommand" OnDataBinding="lstBook_DataBinding">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("BookId") %>
                            </td>
                           
                            <td>
                          <a href="<%# Eval("Id","DisplayBorrowOfBook.aspx?BookId={0}")%>">   <%# Eval("Title")%> </a>    
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Auther") %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TotalNumber") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("AvailableNumber") %>'></asp:Label>
                                
                            </td>
                            <td><asp:LinkButton ID="btnDelete" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل حذف الكتاب؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>
                            
                                    
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
                  </ContentTemplate></asp:UpdatePanel>
            </table>

            </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
        <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script> <!-- Tables Filtering, Sorting & Editing -->
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

