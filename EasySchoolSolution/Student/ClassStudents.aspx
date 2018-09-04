<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClassStudents.aspx.cs" Inherits="Student_ClassStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; الصفوف </h5>
        </div>
        <div class="panel-content">
            <br />
            <table class="table table-hover table-dynamic dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>الرقم الأكاديمي</th>
                        <th>اسم الطالب</th>
                        <th>الحالة الدراسية</th>
                        <th style="width: 30%;"></th>
                    </tr>
                </thead>
                <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemCommand="LstClass_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                <%#Eval("studentId") %>
                            </td>
                            <td>
                                <%#Eval("Name") %>
                            </td>
                            <td>
                                <%#Eval("Rate") %>

                            </td>
                            <%--     <td>
                                <%#Eval("subject") %>
                            </td>--%>
                            <td>
                                <a href="<%#Eval("IdentityNumber","../Manager/StudentRecord.aspx?IdentityNumber={0}") %>" class="btn">معلومات الطالب</a>

                                <asp:LinkButton CssClass="btn" ID="LinkButton1" runat="server" CommandName="note" CommandArgument='<%#Eval("IdentityNumber") %>'>اضافة ملاحظة</asp:LinkButton>
                               
                                 <a href="<%#Eval("IdentityNumber" ,"StudentViolations.aspx?id={0}") %>" class="btn">اضافة مخالفة</a>
                                <%--<a href="#" class="btn">اضافة حالة الطالب</a>--%>
                                <asp:LinkButton CssClass="btn" ID="LinkButton2" runat="server" CommandName="patient"
                                     CommandArgument='<%#Eval("IdentityNumber") %>'>عرض الملف الصحي</asp:LinkButton>

                                <%--<asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>
                                </asp:LinkButton>--%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </div>

    <asp:PlaceHolder ID="PlaceHolderNotes" runat="server" Visible="false">
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-primary">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                        <h4 class="modal-title">اضافة <strong>ملاحظات</strong> </h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                        <asp:HiddenField ID="HiddenStdId" runat="server" />
                        <div class="row">
                            <div class="form-group col-md-10">
                                اسم الطالب : 
                            <asp:Label ID="lblStdName" runat="server" ForeColor="blue"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group col-md-10">
                                <asp:Label ID="Label1" runat="server" Text="الملاحظة"></asp:Label>
                                <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control form-white"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnNotes" runat="server" Text="حفظ الملاحظة" CssClass="btn btn-primary btn-embossed" OnClick="btnNotes_Click" />
                        <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">اغلاق</button>
                    </div>
                </div>
            </div>
        </div>
    </asp:PlaceHolder>


    <asp:PlaceHolder ID="PlaceHolderPatient" runat="server" Visible="false">
        <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-primary">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                        <h4 class="modal-title">الملف <strong>الصحي</strong> </h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                        <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>
                        <div class="row">
                            <div class="form-group col-md-10">
                                اسم الطالب : 
                            <asp:Label ID="lblPatientName" runat="server" ForeColor="blue"></asp:Label>
                            </div>
                        </div>
                        <asp:ListView ID="lstPatient" runat="server">
                            <ItemTemplate>
                        <hr />
                        <div class="row">
                            <div class="form-group col-md-10">
                                <asp:Label ID="Label3" runat="server" Text="الحالة المرضية"></asp:Label>
                                <br />
                                    <%# Eval("Description") %>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-10">
                                <asp:Label ID="Label4" runat="server" Text="الاجراء المطلوب عند وقوع الحالة"></asp:Label>
                                <br />
                                    <%# Eval("Action") %>

                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-10">
                                <asp:Label ID="Label5" runat="server" Text="التوصيات"></asp:Label>
                                <br />
                                    <%# Eval("Recommendations") %>

                            </div>
                        </div>

                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <h4>لا يوجد حالات مرضية للطالب</h4>
                            </EmptyDataTemplate>
                        </asp:ListView>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">اغلاق</button>
                    </div>
                </div>
            </div>
        </div>
    </asp:PlaceHolder>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>

    <script>
        //function openModal() {
        $('#modal').modal('show');
        $('#modal2').modal('show');
        //}
    </script>

</asp:Content>

