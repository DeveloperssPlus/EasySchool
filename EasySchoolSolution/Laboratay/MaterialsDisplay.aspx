<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaterialsDisplay.aspx.cs" Inherits="Laboratay_MaterialsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-codepen" aria-hidden="true"></i>&nbsp; سجل حصر الناقص والزائد و التالف في المختبر</h4>
       <strong><a onclick=" prepareFrame('../SchoolForms/form44.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
              </div>
        <div class="panel-body">
            <div class="row">
             <div class="col-lg-5">

                        <asp:Label ID="Label1" runat="server" Text="الحالة :"></asp:Label>
                 <asp:DropDownList ID="DDlStatus" runat="server" AutoPostBack="true" class="form-control form-white" >
                     <asp:ListItem Value="1">زائد</asp:ListItem>
                     <asp:ListItem Value="2">ناقص</asp:ListItem>
                     <asp:ListItem Value="3">تالف</asp:ListItem>
                 </asp:DropDownList>
                    </div></div>
            <br />
          <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>
                        <th></th>
                        <th class="auto-style1">رقم الصنف</th>
                        <th>اسم الصنف</th>
                        <th>الكمية المطلوبة</th>
                        <th>ملحوظات</th>
                        <th></th>
                      
                    </tr>
                </thead>
                <asp:ListView ID="lstRecord" runat="server" OnItemCommand="lstRecord_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("KindName")%>
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
</asp:Content>

