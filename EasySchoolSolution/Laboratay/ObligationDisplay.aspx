<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ObligationDisplay.aspx.cs" Inherits="Laboratay_ObligationDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-ban" aria-hidden="true"></i>&nbsp; جميع عهد المدرسة</h4>
        <strong><a onclick=" prepareFrame('../SchoolForms/form37.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
             </div>
        <div class="panel-body">

            <br />
 
                    <table class="table  table-hover table-dynamic dataTable" id="table-editable">
                        <thead>
                            <tr>
                                <th>م</th>
                                <th class="auto-style1">اسم الموظف</th>
                                <th>الوظيفة</th>
                                <th>الصنف</th>
                                <th>العدد</th>
                                <th>تاريخ الإستلام</th>
                                <th>تاريخ الإرجاع</th>
                                <th>ملحوظات</th>
                                <th></th>
                            </tr>
                        </thead>
                                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                        <asp:ListView ID="lstObligation" runat="server" OnItemCommand="lstObligation_ItemCommand" OnItemDataBound="lstObligation_ItemDataBound" OnDataBinding="lstObligation_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>
                                    <td>
                                        <%--<asp:HiddenField ID="obligationID" runat="server" Value='<%# Eval("Id") %>' />--%>
                                        <%# Eval("EmployeeName") %>
                                    </td>
                                    <td>
                                        <%# Eval("Job")%>
                                    </td>
                                    <td>
                                        <%# Eval("KindName")%>
                                    </td>
                                    <td>
                                        <%# Eval("Count") %>
                                
                                    </td>
                                    <td>
                                        <asp:Label ID="lblReceive" runat="server" Text="Label"></asp:Label>
                                        <%--<%# Eval("DateReceive") %>--%>
                                
                                    </td>
                                    <td>
                                        <asp:Label ID="lblReturn" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>
                                        <%# Eval("Comments") %>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="lnkReturn" Visible='<%#(!(bool) Eval("IsReturn")) && (bool) Eval("IsReceived")%>' runat="server" CommandName="return" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary btn-sm"><i class="fa fa-reply" style="margin-right:-4px; margin-left:4px;"></i>  ارجاع  </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                </ContentTemplate>
            </asp:UpdatePanel>
                    </table>
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

