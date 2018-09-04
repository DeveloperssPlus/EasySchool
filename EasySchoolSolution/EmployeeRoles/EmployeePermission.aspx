<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeePermission.aspx.cs" Inherits="EmployeeRoles_EmployeePermission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function openModal() {
            $('#basic').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="icon-doc"></i>عرض وتعديل صلاحيات الموظفين       </h4>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table  table-bordered table-hover   order-column" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="UserId" OnDataBinding="GridView1_DataBinding">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="اسم الموظف" SortExpression="Name"></asp:BoundField>
                            <asp:TemplateField HeaderText="خيارت" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton9" runat="server" CssClass="btn red btn-outline btn-circle btn-sm" CausesValidation="False" CommandArgument='<%# Eval("UserName") %>' CommandName="view" ToolTip="Edit"><i class=" fa fa-users"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-outline btn-circle  btn-sm blue-hoki" CausesValidation="False" CommandArgument='<%# Eval("UserName") %>' CommandName="edit" ToolTip="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataRowStyle CssClass="alert  alert-danger" />
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand="SELECT [UserName], [UserId] FROM [vw_aspnet_Users]"></asp:SqlDataSource>

                </div>
            </div>

            <div class="modal fade" id="basic" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">صلاحيات الموظف</h4>
                        </div>
                        <div class="modal-body">
                            <div class="bootstrap-tagsinput">
                                <ul>
                                    <asp:ListView ID="ListView1" runat="server">
                                        <ItemTemplate>
                                            <li class="tag   btn btn-info margin-top-10 "><%# Eval("Name") %>  &nbsp; &nbsp;</li>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </ul>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn dark btn-outline" data-dismiss="modal">أغلق</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
        </div>
    </div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

