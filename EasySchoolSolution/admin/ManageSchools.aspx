<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageSchools.aspx.cs" Inherits="Admin_ManageSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<%--    <link href="../assets/global/css/style.css" rel="stylesheet" />
    <link href="../assets/global/css/theme.css" rel="stylesheet" />
    <link href="../assets/global/css/ui.css" rel="stylesheet" />
    <link href="../assets/admin/md-layout4/material-design/css/material.css" rel="stylesheet" />
    <link href="../assets/admin/md-layout4/css/layout.css" rel="stylesheet" />
       <link href="../assets/global/plugins/datatables/dataTables.min.css" rel="stylesheet">--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h3 class="panel-title" ><i class="fa fa-university"></i>&nbsp; عرض المدارس </h3>
        </div>
        <div class="panel-content">

            <table class="table table-hover dataTable table-dynamic" >
                <thead>
                    <tr>
                        <th>حذف</th>
                        <th>اسم المدرسة</th>
                        <th>المنطقة التعليمية</th>
                        <th>اسم القائد</th>
                        <th>رقم الجوال</th>
                        <th>اشتراك</th>
                    </tr>
                </thead>
                <asp:ListView ID="lstSchools" runat="server" OnDataBinding="lstSchools_DataBinding" OnItemCommand="lstSchools_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td >
                                <asp:Button ID="btnActive" runat="server" CommandName="btnActive" CommandArgument='<%# Eval("SchoolID") %>' Text="اشتراك" CssClass="btn btn-success center"  Width="115px" Visible='<%# !(Convert.ToBoolean(Eval("isActive"))) %>' OnClientClick="return confirm('هل تريد بالفعل الاشتراك ؟؟');" style="text-align:center;"/>
                                <asp:Button ID="btnCancelActive" runat="server" CommandName="btnCancelActive" CommandArgument='<%# Eval("SchoolID") %>' Text="إلغاء اشتراك" CssClass="btn btn-danger center" Width="115px" Visible='<%# Eval("isActive") %>' OnClientClick="return confirm('هل تريد بالفعل إلغاء الاشتراك ؟؟');"  style="text-align:center;"/>
                            </td>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                                    <td>
                                    <%# Eval("Area") %>
                                </td>
                                    <td>
                                    <%# Eval("EmpName") %>
                                </td>
                                      <td>
                                    <%# Eval("Mobile") %>
                                </td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" ToolTip="حذف" runat="server" CommandName="btnDelete" CommandArgument='<%# Eval("SchoolID") %>' OnClientClick="return confirm('هل تريد بالفعل حذف المدرسة ؟؟');" ><i class="fa fa-lg fa-times" style="color: red;"></i></asp:LinkButton>
                              <a title="تعديل" href="<%# Eval("SchoolID","SchoolEdit.aspx?SchoolId={0}")%>"><i class="fa fa-lg fa-pencil-square-o" style="color: green;"></i></a>
                                  
                        
                                    </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h5>لا يوجد مدارس حتى الآن</h5>
                    </EmptyDataTemplate>
                </asp:ListView>
            </table>
        </div>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand='Select [Schools].[Id] as "SchoolID",[Schools].[Name], [Schools].[IsActive], 
[Employees].[Name] as "EmpName",[Employees].[PhoneHome],
[Employees].[Mobile]
from [Schools] join [Employees]
on [Schools].[Id]=[Employees].[SchoolId]
where [Employees].[Id]=[Schools].[Manager]'></asp:SqlDataSource>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
<%--    <script src="../assets/global/plugins/select2/select2.min.js"></script>
    <!-- Select Inputs -->
    <script src="../assets/global/js/pages/search.js"></script>
    <!-- Search Script -->
    <!-- BEGIN PAGE SCRIPTS -->
    <script src="../assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="../assets/global/js/pages/table_editable.js"></script>
    <script src="../assets/admin/md-layout4/material-design/js/material.js"></script>
    <script src="../assets/admin/layout4/js/layout.js"></script>
    <script>
        $.material.init();
    </script>--%>
</asp:Content>