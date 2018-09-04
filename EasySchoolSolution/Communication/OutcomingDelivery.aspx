<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OutcomingDelivery.aspx.cs" Inherits="Communication_OutcomingDelivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-header">
                <h4>
                    <i class="fa fa-send" aria-hidden="true"></i>&nbsp; سجل توديع المعاملات
              <strong><a onclick=" prepareFrame('../SchoolForms/form16.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
                       </h4>
            </div>
            <asp:ListView ID="LstOutcoming" runat="server" OnDataBinding="LstOutcoming_DataBinding">
                <LayoutTemplate>
                    <table class="table table-hover dataTable table-editable">
                        <thead>
                            <tr>
                                <th>
                                    <div >رقم المعاملة</div>
                                </th>
                                <th>
                                    <div >تاريخ المعاملة</div>
                                </th>
                                <th>
                                    <div class="m-b-10">النوع</div>
                                </th>
                                <th>
                                    <div class="m-b-10">المرفقات</div>
                                </th>
                                <th>
                                    <div class="m-b-10">الموضوع</div>
                                </th>
                                <th>
                                    <div class="m-b-10">الجهة المرسلة إليها</div>
                                </th>
                                <th>
                                    <div class="m-b-10">اسم المستلم</div>
                                </th>
                                <th>
                                    <div class="m-b-10">اليوم</div>
                                </th>
                                <th>
                                    <div class="m-b-10">تاريخ الاستلام</div>
                                </th>
                            </tr>
                        </thead>

                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                        <td>
                            <%# Eval("Number") %>
                        </td>
                        <td>
                            <%#MyDate.getDate(Eval("Date").ToString()) %>
                        </td>
                        <td>
                            <%#ConstantManager.getConstant((int)Eval("Type")) %>
                        </td>
                        <td>
                            <%# ConstantManager.getConstant((int)Eval("Attachment"))%>
                        </td>
                        <td>
                            <%# Eval("Subject")%>
                        </td>
                        <td>
                            <%#ConstantManager.getConstant((int) Eval("SourceTo")) %>
                        </td>
                        <td>
                            <%# Eval("ReceivedName") %>
                        </td>
                        <td>
                            <%#MyDate.getDay((DateTime)Eval("ReceivedDate")) %>
                        </td>
                        <td>
                            <%#MyDate.getDate(Eval("ReceivedDate").ToString()) %>
                        </td>
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <h2>لم يتم تسليم أي معاملات بعد</h2>
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

