<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GuidProgramDisplay.aspx.cs" Inherits="Temp_Employee_GuidProgramDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-child" aria-hidden="true"></i>&nbsp; البرامج الارشادية المقدمة للطلاب</h4>
        </div>
        <div class="panel-body">
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم البرنامج</th>
                        <th>تاريخ التنفيذ</th>
                        <th>المناسبة</th>                      
                         <th>عدد المستفيدين</th>
                    </tr>
                </thead>
                <asp:ListView ID="lstProgram" runat="server" OnItemCommand="lstProgram_ItemCommand" OnDataBinding="lstProgram_DataBinding">
                    <ItemTemplate>
                        <tr>
                            <td>
                                
                                <%# Eval("ProgramName") %>
                            </td>
                           
                            <td>
                                <%#MyDate.getDate( Eval("StartDate").ToString())%>
                            </td>
                          <%--  <td>
                             <%# ConstantManager.getConstant((int) Eval("BeneficiariesType")) %>
                                
                            </td>--%>
                              <td>
                                <%# Eval("Occasion") %>
                            </td>
                            
                        
                            <td>
                              <%# Eval("BeneficiariesNo") %>
                                
                            </td>
                                      <td><asp:LinkButton ID="btnDelete"  runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل الحذف ؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton></td>
                             
                                    
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

