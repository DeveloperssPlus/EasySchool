<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RepositoryDisplay.aspx.cs" Inherits="Laboratay_RepositoryDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
        <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-codepen" aria-hidden="true"></i>&nbsp; كشف بموجودات المستودع العام للمدرسة</h4>
        </div>
        <div class="panel-body">
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th>م</th>
                        <th class="auto-style1">رقم الصنف</th>
                        <th>أوصافه</th>
                        <th>الحالة</th>
                        <th>الكمية</th>
                        <th>نوعه</th>
                        <th>التاريخ</th>
                        <th>ملحوظات</th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstRepositays" runat="server" OnItemCommand="lstRepositays_ItemCommand" OnDataBinding="lstRepositays_DataBinding" OnItemDataBound="lstRepositays_ItemDataBound">
                    <ItemTemplate>
                        <tr>
                            <td><%#getCounter()%></td>
                            <td>
                                <asp:HiddenField ID="ProId" runat="server" Value='<%# Eval("KindId") %>' />
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("Description")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("IsDamaged") %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="lblPerm" runat="server" Text='<%# Eval("IsPerminant") %>'></asp:Label>
                                
                            </td>
                            
                             <td>
                                <%# MyDate.getDate( Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# Eval("Comment") %>
                            </td>
                                 <td>
                                     <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("Id") %>' CommandName="del" OnClientClick='return confirm("هل أنت متأكد؟")' runat="server"><i class="fa fa-times"></i></asp:LinkButton>
                                  </td>   
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>

            </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script> <!-- Tables Filtering, Sorting & Editing -->
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

