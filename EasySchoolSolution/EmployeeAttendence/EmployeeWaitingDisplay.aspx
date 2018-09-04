<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeWaitingDisplay.aspx.cs" Inherits="EmployeeAttendence_EmployeeWaitingDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h3><i class="fa fa-clock-o"></i>&nbsp; سجل حصص الانتظار 

                      <strong><a onclick=" prepareFrame('../SchoolForms/form7.aspx')" style="float: left;" href="#">طباعة السجل
                      </a></strong>
            </h3>
        </div>
        <div class="panel-content">

            <br />




            <table class="table datatable">

                <tr>
                    <th>المعلم<br />
                        الغائب</th>
                    <%--<th>تاريخ <br /> الغياب</th>--%>
                    <th>الحصة</th>
                    <th>الفصل</th>
                    <th>المادة</th>
                    <th>اسم المعلم
                        <br />
                        المنتظر</th>
                    <th>ما تم تنفيذه
                        <br />
                        في حصة الانتظار</th>
                    <th>ملحوظات</th>
                    <th></th>
                </tr>

                <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemCommand="LstClass_ItemCommand" OnItemDataBound="LstClass_ItemDataBound">
                    <ItemTemplate>
                        <tr>
                            <td rowspan="<%#(int) Eval("count") +1  %>">

                                <%#Eval("absEmpName") %>
                                <br />
                                <%# MyDate.getDate(Eval("Date").ToString()) %>

                            </td>
                        </tr>


                        <asp:ListView ID="lstEmpClass" runat="server">
                            <ItemTemplate>
                                <tr>

                                    <td>
                                        <%#Eval("Period") %>
                                    </td>
                                    <td>
                                        <%#Eval("ClassRoom") %>
                                    </td>
                                    <td><%#Eval("Subject") %></td>
                                    <td>
                                        <%#Eval("Name") %>
                                    </td>
                                    <td>
                                        <%#Eval("Do") %>
                                    </td>
                                    <td>
                                        <%#Eval("Comment") %>
                                    </td>
                                    <td>
                                        <asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </ItemTemplate>
                </asp:ListView>
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

