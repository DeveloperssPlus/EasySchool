<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SupportStudentDisplay.aspx.cs" Inherits="Finance_SupportStudentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-money" aria-hidden="true"></i>&nbsp;إعانات تصرف للطلاب ذوي الاحتياجات المادية  </h4>
        </div>
        <div class="panel-body">
           
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">رقم الفاتورة</th>
                        <th>المبلغ</th>                     
                        <th>محتوى الفاتورة</th>                      
                        <th>ملاحظات </th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstSupport" runat="server" OnDataBinding="lstSupport_DataBinding"   OnItemCommand="lstSupport_ItemCommand" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                
                                <%#  Eval("BillNo") %>
                            </td>
                            
                            <td>
                                 <%#  Eval("Price")%>
                               
                                
                            </td>
                              <td>
                                <%# Eval("Contents") %>
                                
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

