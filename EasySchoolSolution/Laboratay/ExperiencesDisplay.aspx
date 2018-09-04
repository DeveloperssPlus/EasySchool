<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExperiencesDisplay.aspx.cs" Inherits="Laboratay_ExperiencesDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; الخطة الفصلية للتجارب العملية</h4>
        <strong><a onclick=" prepareFrame('../SchoolForms/form45.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
              </div>
        <div class="panel-body">
           
         
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">الفصل</th>
                        <th>المادة</th>
                        <th>اسم التجربة</th>
                        <th>اسم الكتاب ورقم الصفحة</th>
                        <th>أسبوع التجربة</th>
                        <th>أدوات التجربة</th>
                        <th>معلم المادة</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstExperience" runat="server" OnItemCommand="lstExperience_ItemCommand" OnDataBinding="lstExperience_DataBinding" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                
                                <%# Eval("Class") %>
                            </td>
                           
                            <td>
                                <%# Eval("Subject")%>
                            </td>
                            <td>
                                <%# Eval("Name")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# string.Format("{0} - {1}",Eval("BookName"), Eval("BookPage"))   %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Week") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tools") %>'></asp:Label>
                                
                            </td>
                              <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("NameTecher") %>'></asp:Label>
                                
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

