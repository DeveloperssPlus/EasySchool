<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HelpStudentDisplay.aspx.cs" Inherits="Finance_HelpStudentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp;إعانات للطلاب ذوي الاحتياجات المادية  </h4>
        </div>
        <div class="panel-body">
           
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الطالب</th>
                        <th>الإعانة</th>
                        <th>الصف الدراسي</th>
                        <th>الباقي</th>                      
                        <th>ملاحظات</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstHelp" runat="server" OnDataBinding="lstHelp_DataBinding" OnItemDataBound="lstHelp_ItemDataBound" OnItemCommand="lstHelp_ItemCommand" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:HiddenField ID="HelpId" runat="server" Value=' <%# Eval("Id") %>' />
                                <%# Eval("studentname") %>
                            </td>
                           
                            <td>
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price")%>'></asp:Label>
                                
                            </td>
                            <td>
                              <%# Eval("Class")%>
                            </td>
                            <td>
                                <%# Eval("Rest") %>
                                
                            </td>
                             <td>
                               <%# Eval("Note") %>
                                
                            </td>
                          
                             
                            <td><asp:LinkButton ID="btnDelete"  runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل الحذف ؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>
                            
                                    
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
                </ContentTemplate></asp:UpdatePanel>
            </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script> <!-- Tables Filtering, Sorting & Editing -->
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

