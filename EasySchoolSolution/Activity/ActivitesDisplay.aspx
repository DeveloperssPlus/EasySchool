<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ActivitesDisplay.aspx.cs" Inherits="Temp_Student_ActivitesDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-trophy" aria-hidden="true"></i>&nbsp;سجل  النشاطات  </h4>
        </div>
        <div class="panel-body">
           
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1"> اسم المجال</th>
                        <th>مسؤول النشاط</th>                     
                        <th>المقر </th>                      
                     
                        <th>تاريخ النشاط من - إلى</th>
                       <th></th>

                    </tr>
                </thead>
                <asp:ListView ID="LstActivites" runat="server" OnDataBinding="LstActivites_DataBinding" OnItemCommand="LstActivites_ItemCommand" >
                    <ItemTemplate>
                        <tr>
                            <td>
                             <asp:HiddenField ID="Id" runat="server" Value='<%# Eval("Id") %>' />
                                <a href="ActivitesDetails.aspx?Id=<%#Eval("Id")%>">
                                     <%#  Eval("FieldName") %>
                                </a>
                         </td>
                            <td>
                                 <%#  Eval("Activity")%>
                               
                                
                            </td>
                              <td>
                                <%# Eval("Seat") %>
                                
                            </td>
                          
                          
                         
                             <td>
                               <%# MyDate.getDate(Eval("DateFrom").ToString() )%> -  <%#  MyDate.getDate( Eval("DateTo").ToString()) %>
                                
                            </td>
                            <td>
                              
                                
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

