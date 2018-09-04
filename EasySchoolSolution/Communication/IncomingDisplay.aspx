<%@ Page Title="Display incoming" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncomingDisplay.aspx.cs" Inherits="Communication_IncomingDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
  
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div class="">
                    <div>
                        <span class="noty_text">
                            <div class="alert alert-danger">
                                <p>
                                    <strong>نأسف ..</strong>
                                    <br />

                                </p>

                                <div class="noty_buttons">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <asp:Label ID="Label9" runat="server">الملف غير موجود</asp:Label></div>
                                        <div class="col-lg-2">
                                            <br />
                                            <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="موافق" OnClick="Button4_Click" /></div>
                                    </div>


                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>
    <div class="col-lg-12">
        <div class="panel">
              
            <div class="panel-header">
                <h4>
                    <i class="fa fa-reply" aria-hidden="true"></i>&nbsp; سجل الوارد
               <strong><a onclick=" prepareFrame('../SchoolForms/form13.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
                     </h4>
            </div>
            <asp:ListView ID="LstIncoming" runat="server" OnItemCommand="LstIncoming_ItemCommand" OnDataBinding="LstIncoming_DataBinding">
                <LayoutTemplate>
                    <table class="table table-hover table-dynamic dataTable">
                        <thead>
                            <tr>
                                <th>
                                        <small>م</small>
                                </th>
                                <th>
                                        <small>رقم الوارد</small>
                                </th>
                                <th>
                                        <small>التاريخ</small>
                                </th>
                                <th>
                                        <small>النوع</small>
                                </th>
                                <th>
                                         <small>الجهة الوارد
                                        <br />
                                        منها المعاملة</small>
                                </th>
                                <th>
                                    <small>المرفقات</small>
                                </th>
                                <th>
                                    <small>الموضوع</small>
                                </th>
                                <th>
                                    <small>رقم الملف</small>
                                </th>
                                <th></th>
                            </tr>
                        </thead>

                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>

                    <tr>

                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                        <td>
                            <%# getCounter() %>
                        </td>
                        <td>
                            <%# Eval("Number")%> 
                        </td>
                        <td>
                            <%#MyDate.getDate(Eval("Date").ToString()) %>
                        </td>
                        <td>
                            <%# Eval("Type") %>
                        </td>
                        <td>
                            <%# Eval("Source ") %>
                        </td>
                        <td>
                            <%# Eval("Attachment") %>
                        </td>

                        <td>
                            <a href="<%#Eval("Id","IncomingDetails.aspx?id={0}") %>"><%#Eval("Subject") %></a>
                        </td>
                        <td>
                            <%# Eval("FileNumber") %>
                        </td>
                        <td>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="btnDelete" ToolTip="حذف" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل حذف الوارد ؟؟');"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="btnEdit" ToolTip="تعديل" CommandArgument='<%# Eval("Id") %>'><i class="fa fa-lg fa-edit" style="color: green;" ></i></asp:LinkButton>
                            <asp:LinkButton ID="btnDetails" runat="server" CommandName="btnDetails" ToolTip="تفاصيل" CommandArgument='<%# Eval("Id") %>'><i class="fa fa-lg fa-info-circle" style="color: blue;" ></i></asp:LinkButton>
                            <asp:LinkButton ID="btnDisplayEmp" runat="server" CommandName="DisplayEMployee" ToolTip="اطلاع الموظفين على التعميم" CommandArgument='<%# Eval("Id") %>'><i class="fa fa-lg fa-users" style="color: burlywood;" ></i></asp:LinkButton>
                            <asp:LinkButton ID="lnkDownload" runat="server" CommandName="download" ToolTip="تحميل" CommandArgument='<%# Eval("Id") %>'><i class="fa fa-lg fa-download" style="color: black;" ></i></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <h2>لا يوجد وارد</h2>
                </EmptyDataTemplate>



            </asp:ListView>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
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
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>

</asp:Content>

