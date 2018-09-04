<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Permission.aspx.cs" Inherits="EmployeeRoles_Permission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <script>
        function openModal() {
        $('#basic').modal('show');
          }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header">
            <h2>
                <i class="fa icon-doc" aria-hidden="true"></i>
                عرض وتعديل صلاحيات
            </h2>
        </div>
        <div class="panel-body">
        </div>


        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                <div class="portlet light ">
                    <div class="portlet-body ">
                        <div class="table-toolbar portlet light">
                            <div class="row portlet-title">
                                <div class="col-md-6">
                                    <h4>
                                        <i class="icon-doc"></i>

                                        جميع الصلاحيات                               </h4>
                                </div>

                            </div>
                        </div>

                        <asp:GridView ID="GridView1" runat="server" CssClass="table  table-bordered table-hover  order-column"
                            AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="pp">
                            <Columns>
                                <asp:BoundField DataField="pp" HeaderText="صلاحية" SortExpression="pp"></asp:BoundField>
                                <asp:TemplateField HeaderText="خيارت" ShowHeader="False">

                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton9" runat="server" CssClass="btn red btn-outline btn-circle btn-sm"
                                            CausesValidation="False" CommandArgument='<%# Eval("pp") %>' CommandName="view" ToolTip="عرض" OnClick=' <%# Eval("pp","openModal({0})")%>'><i class=" fa fa-eye"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-outline btn-circle  btn-sm blue-hoki"
                                            CausesValidation="False" CommandArgument='<%# Eval("pp") %>' CommandName="edit" ToolTip="تعديل"><i class="fa fa-edit"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataRowStyle CssClass="alert  alert-danger" />



                        </asp:GridView>



                    </div>
                </div>
                <!-- END EXAMPLE TABLE PORTLET-->
            </div>
        </div>
        <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">الصلاحيات</h4>
                    </div>
                    <div class="modal-body">

                        <div class="bootstrap-tagsinput">
                            <ul>
                                <asp:ListView ID="ListView1" runat="server">
                                    <ItemTemplate>
                                        <li class="tag   btn btn-info margin-top-10 "><%# Eval("Name") %>  &nbsp;   &nbsp;</li>
                                    </ItemTemplate>
                                </asp:ListView>
                            </ul>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn dark btn-outline" data-dismiss="modal">أغلق</button>
                    </div>
                    <
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">


</asp:Content>

