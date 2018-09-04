<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="School_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; المسمى الوظيفي</h5>
        </div>
        <div class="panel-content">
            <table class="table  table-hover table-dynamic dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الموظف</th>
                        <th>الوظيفة</th>
                       <td></td>
                    </tr>
                </thead>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ListView ID="lstJobs" runat="server" OnDataBinding="lstJobs_DataBinding" OnItemCommand="lstJobs_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a href="../Manager/EmployeeRecord.aspx?IdentityNumber=<%#Eval("IdentityNumber") %>"><%# Eval("Name") %></a>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbljob" runat="server"><%# Eval("JobName") %></asp:Label>

                                        <asp:PlaceHolder runat="server" ID="JobName" Visible="false">
                                            <asp:DropDownList runat="server" ID="lstJobName" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand="SELECT [ID], [Name] FROM [Jobs]"></asp:SqlDataSource>
                                        </asp:PlaceHolder>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnEdit" CommandName="btnEdit" CommandArgument='<%# Eval("IdentityNumber") %>' runat="server" ToolTip="تعديل"> <i class="fa fa-pencil-square-o  p-10"></i> </asp:LinkButton>
                                        <asp:LinkButton ID="btnSave" CommandName="btnSave" CommandArgument='<%# Eval("IdentityNumber") %>' runat="server" ToolTip="حفظ" Visible="false"> <i class="fa fa-save p-10"></i> </asp:LinkButton>
                                        <asp:LinkButton ID="btnCancel" CommandName="btnCancel" CommandArgument='<%# Eval("IdentityNumber") %>' runat="server" ToolTip="الغاء" Visible="false"> <i class="fa fa-times p-10"></i> </asp:LinkButton>
                                        <a runat="server" id="btnPrint" href='<%#Eval("jobfile","../{0}") %>' target="_blank" title="طباعة"><i class="fa fa-print p-10"></i></a>
                                        <asp:LinkButton ID="btnLock" CommandName="lock" CommandArgument='<%# Eval("IdentityNumber")%>' runat="server" ToolTip="انشاء حساب"><i class="fa fa-lock p-10"></i> </asp:LinkButton>
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

