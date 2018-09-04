<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LabRecodDisplay.aspx.cs" Inherits="Laboratay_LabRecodDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; سجل جرد المختبر</h4>
       <strong><a onclick=" prepareFrame('../SchoolForms/form43.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
             </div>
        <div class="panel-body">
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th>م</th>
                        <th class="auto-style1">رقم الصنف</th>
                        <th>اسم الصنف</th>
                        <th>الوحدة</th>
                        <th>الكمية</th>
                        <th>ملاحظات</th>
                    </tr>
                </thead>
                <asp:ListView ID="lstLaboratory" runat="server" OnItemCommand="lstLaboratory_ItemCommand" OnDataBinding="lstLaboratory_DataBinding">
                    <ItemTemplate>
                        <tr>
                            <td> <%# getCounter() %></td>
                            <td>
                                <asp:HiddenField ID="ProId" runat="server" Value='<%# Eval("KindId") %>' />
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("KindName")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="lblPerm" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                
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
     <script type="text/javascript">

        function prepareFrame(src1) {
            var ff = document.getElementById('newframe');
            if (ff != null)
                ff.parentNode.removeChild(ff);

            var ifrm = document.createElement("iframe");
            ifrm.setAttribute("id", "newframe");
            ifrm.setAttribute("src", src1);
            ifrm.style = "Display:none;"

            ifrm.style.width = "640px";
            ifrm.style.height = "480px";
            document.body.appendChild(ifrm);

            document.getElementById('newframe').contentWindow.print();
        }

    </script>
      <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script> <!-- Tables Filtering, Sorting & Editing -->
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
     <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

