<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CupboardRecordDisplay.aspx.cs" Inherits="Laboratay_CupboardRecordDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; بيان بعهدة خزانة المواد الكيميائية</h4>
        </div>
        <div class="panel-body">
            <div class="row">
             <div class="col-lg-5">

                        <asp:Label ID="Label1" runat="server" Text="رقم الخزنة :"></asp:Label>
                 <asp:DropDownList ID="DDlCupboardId" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDlCupboardId_SelectedIndexChanged" class="form-control form-white" OnDataBinding="DDlCupboardId_DataBinding" >
                  
                 </asp:DropDownList>
                    </div></div>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th></th>
                        <th class="auto-style1">رقم الصنف</th>
                        <th>اسم الصنف</th>
                        <th>الوحدة</th>
                        <th>الكمية</th>
                        <th>ملحوظات</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstCupboard" runat="server" OnItemCommand="lstCupboard_ItemCommand" OnDataBinding="lstCupboard_DataBinding" >
                    <ItemTemplate>
                        <tr>
                            <td> <%# getCounter() %></td>
                            <td>
                                
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("KindName")%>
                            </td>
                            <td>
                                <%# Eval("Unit")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                                
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

