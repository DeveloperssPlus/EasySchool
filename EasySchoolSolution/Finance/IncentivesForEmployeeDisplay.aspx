<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncentivesForEmployeeDisplay.aspx.cs" Inherits="Finance_IncentivesForEmployeeDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp;حوافز تصرف لمنسوبي المدرسة  </h4>
        </div>
        <div class="panel-body">
           
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الموظف</th>
                        <th>الوظيفة</th>
                        <th>نوع وقيمة المكافأة</th>
                        <th>التاريخ</th>                      
                        <th>الباقي</th>
                        <th>ملاحظات</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstIncentives" runat="server" OnDataBinding="lstIncentives_DataBinding"  OnItemCommand="lstIncentives_ItemCommand" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:HiddenField ID="HelpId" runat="server" Value=' <%# Eval("Id") %>' />
                                <%# Eval("employeename") %>
                            </td>
                           
                            <td>
                               <%# Eval("Job")%>
                                
                            </td>
                            <td>
                                  <%# Eval("Value") %>
                            </td>
                            <td>
                                <%#MyDate.getDate( Eval("Date").ToString()) %>
                                
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

