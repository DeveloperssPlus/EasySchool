<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyObligations.aspx.cs" Inherits="Employee_MyObligations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-ban" aria-hidden="true"></i>&nbsp; العهد</h4>
        </div>
        <div class="panel-body">

            <br />

            <table class="table table-hover table-dynamic" id="table-editable">
                <thead>
                    <tr>

                        <th>الصنف</th>
                        <th>العدد</th>
                        <th>ملحوظات</th>
                        <th>تاريخ الإستلام</th>

                    </tr>
                </thead>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ListView ID="lstObligation" runat="server" OnItemCommand="lstObligation_ItemCommand" OnDataBinding="lstObligation_DataBinding" OnItemDataBound="lstObligation_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <asp:HiddenField ID="obligationID" runat="server" Value='<%# Eval("Id") %>' />


                                    <td>
                                        <asp:Label ID="lblPerminant" runat="server" Text='  <%#  Eval("KindName")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Count") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblReceived" runat="server"></asp:Label>
                                        <asp:LinkButton ID="lnkReceive" runat="server" CommandName="receive" Visible="true" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-primary btn-sm"><i class="fa fa-reply" style="margin-right:-4px; margin-left:4px;"></i>  تم الاستلام  </asp:LinkButton>

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
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

