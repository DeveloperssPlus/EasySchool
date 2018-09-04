<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RevenuesDisplay.aspx.cs" Inherits="Finance_RevenuesDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>&nbsp; سجل الإيرادات</h4>
        </div>
        <div class="panel-body">
           
         
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">البند</th>
                        <th>اسم الموظف</th>
                        <th>السعر</th>
                        <th>تاريخ الاستلام</th>
                        <th>نوع الاستلام</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstRevenue" runat="server" OnDataBinding="lstRevenue_DataBinding" OnItemCommand="lstRevenue_ItemCommand" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                
                                <%#ConstantManager.getConstant((int) Eval("TypeId")) %>
                            </td>
                           
                            <td>
                                <%# Eval("EmployeeName")%>
                            </td>
                            <td>
                                <%# Eval("Price")%>
                            </td>
                            <td>
                                <%# MyDate.getDate(Eval("ReceiveDate").ToString())  %>
                                
                            </td>
                                 <td>
                                <%# Eval("delivery")%>
                            </td>
                            <td><asp:LinkButton ID="btnDelete" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل الحذف ؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>
                            
                                    
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

