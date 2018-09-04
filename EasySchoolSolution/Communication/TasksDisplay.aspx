<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TasksDisplay.aspx.cs" Inherits="Communication_TasksDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-header">
                <h3><i class="fa fa-tasks"></i><strong>قائمة المهام</strong> </h3>
            </div>
            <div class="panel-content">
                <asp:ListView ID="LstTask" OnDataBinding="LstTask_DataBinding" runat="server" OnItemCommand="LstTask_ItemCommand">
                    <LayoutTemplate>
                        <table class="table table-hover table-dynamic dataTable">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>
                                        <div class="m-b-10">المهمة</div>
                                    </th>

                                    <th>
                                        <div class="m-b-10">تاريخ المهمة</div>
                                    </th>
                                    <th>الموظف المسؤول
                                    </th>
                                    <th>نوع المهمة
                                    </th>
                                    <th>المشاركين
                                    </th>

                                </tr>
                            </thead>

                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                               
                            </td>
                            <td>

                                <%# Eval("Title") %>
                              
                            </td>

                            <td>
                                <%#MyDate.getDate(Eval("Date").ToString())%></td>
                            <td>
                                <%# Eval("EmpName") %>

                            </td>
                            <td>
                                <%# ConstantManager.getConstant((int)Eval("TypeId") )%>

                            </td>
                            <td>

                                <asp:LinkButton runat="server" CommandName="details" CommandArgument=' <%# Eval("Id") %>' CssClass="btn btn-success btn-sm"> تفاصيل</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h2>لايوجد مهام</h2>
                    </EmptyDataTemplate>



                </asp:ListView>

            </div>
        </div>
    </div>



    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title">تفاصيل مهمة 
                                        <asp:Label ID="lblTitle2" runat="server">

                                        </asp:Label>

                    </h4>
                </div>
                <div class="modal-body">
                    <%--<p>Want colors? Click on a color to switch header look:</p>--%>
                    <div class="row">

                        <div class="col-md-12 form-group" style="margin-right:5%;">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label10" runat="server" Text="عنوان الحدث  :"></asp:Label>
                                        <asp:Label ID="lblTitle" runat="server" ForeColor="Blue"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="نوع الحدث "></asp:Label>
                                        <asp:Label ID="lblType" runat="server" ForeColor="Blue"></asp:Label>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label3" runat="server" Text="تاريخ الحدث  :"></asp:Label>
                                        <asp:Label ID="lblDate" runat="server" ForeColor="Blue"></asp:Label>

                                    </div>
                                </div>

                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="وقت الحدث  :"></asp:Label>
                                        <asp:Label ID="lblTime" runat="server" ForeColor="Blue"></asp:Label>

                                    </div>
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label2" runat="server" Text="مكان الحدث  :"></asp:Label>
                                        <asp:Label ID="lblLocation" runat="server" ForeColor="Blue"></asp:Label>

                                    </div>
                                </div>


                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:Label ID="Label4" runat="server" Text="رقم التعميم :"></asp:Label>
                                        <asp:Label ID="lblIncoming" runat="server" ForeColor="Blue"></asp:Label>

                                        <%--                                        <span>
                                            <asp:LinkButton runat="server"> <i class="fa fa-eye" onclick="view();"></i></asp:LinkButton></span>--%>
                                    </div>
                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Text="شرح المطلوب   :"></asp:Label>
                                        <asp:Label ID="lblDescription" runat="server" ForeColor="Blue"></asp:Label>

                                    </div>
                                </div>
                            </div>



                            <br />

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="Label5" runat="server" Text="الموظفين المشاركين :"></asp:Label>
                                        <asp:BulletedList ID="lstEmployee" runat="server" ForeColor="Blue" ></asp:BulletedList>

                                    </div>
                                </div>


                                <div class="col-md-6">

                                    <div class="form-group">
                                        <asp:Label ID="Label9" runat="server" Text="الطلاب المشاركين :"></asp:Label>
                                        <asp:BulletedList ID="lstStd" runat="server" ForeColor="Blue" ></asp:BulletedList>


                                        <%--                                        <span>
                                            <asp:LinkButton runat="server"> <i class="fa fa-eye" onclick="view();"></i></asp:LinkButton></span>--%>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button>
                    <%--<button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">Save changes</button>--%>
                </div>
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

