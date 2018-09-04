<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OutcomingDisplay.aspx.cs" Inherits="Communication_OutcomingDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12">

        <div class="panel">

            <div class="panel-header">
                <h4>
                    <i class="fa fa-share" aria-hidden="true"></i>&nbsp; سجل الصادر
                <strong><a onclick=" prepareFrame('../SchoolForms/form15.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
                </h4>
            </div>

            <asp:ListView ID="LstOutcoming" runat="server" OnItemCommand="LstOutcoming_ItemCommand" OnDataBinding="LstOutcoming_DataBinding">

                <LayoutTemplate>
                    <table class="table  table-hover table-dynamic dataTable">
                        <thead>
                            <tr>
                                <th>م
                                </th>
                                <th>
                                    <small>رقم الصادر</small>
                                </th>
                                <th>
                                    <small>التاريخ</small>
                                </th>
                                <th>
                                    <small>النوع </small>
                                </th>
                                <th>
                                    <small>الجهة الصادر<br />
                                        لها المعاملة </small>
                                </th>

                                <th>
                                    <small>المرفقات </small>
                                </th>
                                <th>
                                    <small>الموضوع   </small>
                                </th>
                                <th>
                                    <small>رقم الملف </small>
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
                        <td><%# getCounter()%></td>
                        <td><%# Eval("Number") %></td>
                        <td><%# MyDate.getDate(Eval("Date").ToString()) %></td>
                        <td>
                            <%# Eval("Type") %>
                        </td>
                        <td>
                            <%# Eval("SourceTo") %>
                        </td>
                        <td>
                            <%# Eval("Attachment") %>
                        </td>
                        <td>
                            <%# Eval("Subject") %>
                        </td>
                        <td>
                            <%# Eval("FileNumber") %>
                        </td>
                        <td>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل تريد بالفعل حذف الصادر ؟؟');" ToolTip="حذف"><i class="fa fa-lg fa-remove" style="color: red;"></i></asp:LinkButton>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="btnEdit" CommandArgument='<%# Eval("Id") %>' ToolTip="تعديل"><i class="fa fa-lg fa-edit" style="color: green;" ></i></asp:LinkButton>
                            <asp:LinkButton ID="btnDetails" runat="server" CommandName="btnDetails" CommandArgument='<%# Eval("Id") %>' ToolTip="تفاصيل"><i class="fa fa-lg fa-info-circle" style="color: blue;" ></i></asp:LinkButton>
                            <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="btnDetails" CommandArgument='<%# Eval("Id") %>'><i class="fa fa-lg fa-info-circle" style="color: blue;" ></i></asp:LinkButton>--%>
                     
                          
                        </td>
                    </tr>

                </ItemTemplate>
                <EmptyDataTemplate>
                    <h2>لا يوجد صادر</h2>
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

