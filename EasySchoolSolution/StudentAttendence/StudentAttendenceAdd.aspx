<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentAttendenceAdd.aspx.cs" Inherits="EmployeeAttendence_AttendenceAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>

    <style type="text/css">
        .radioButtonList {
            list-style: none;
            margin: 0;
            padding: 0;
        }

            .radioButtonList.horizontal li {
                display: inline;
            }

            .radioButtonList label {
                display: inline;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12 portlets">

        <div class="panel">
            <div class="panel-header ">
                <h3><i class="fa fa-table"></i>تسجيل الحضور اليومي</h3>
            </div>
            <br />

            <div class="row">
                <asp:Label ID="lblDay" runat="server"></asp:Label>

                <asp:Label ID="lbldate" runat="server"></asp:Label>
            </div>
            <br />

            <div class="row">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-md-3">
                            الصف
                    <asp:DropDownList ID="ddlClass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="col-md-7">
                            المادة
                    <asp:DropDownList ID="ddlSubject" runat="server" OnDataBinding="ddlSubject_DataBinding"></asp:DropDownList>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="col-md-2">
                    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click"
                        Text="عرض" CssClass="btn btn-success"></asp:Button>

                </div>

            </div>
            <br />

            <div class="row">
                <asp:Button ID="btnTime" runat="server" OnClick="btnTime_Click" Text="تحديد الكل حضور" CssClass="btn btn-success btn-sm"></asp:Button>
                <asp:Button ID="btnAbsent" runat="server" OnClick="btnAbsent_Click" Text="تحديد الكل غياب" CssClass="btn btn-danger btn-sm"></asp:Button>
                <asp:Button ID="btnLate" runat="server" OnClick="btnLate_Click" Text="تحديد الكل تأخير" CssClass="btn btn-warning btn-sm"></asp:Button>

            </div>




            <asp:ListView ID="ListView1" runat="server" OnItemDataBound="ListView1_ItemDataBound" DataKeyNames="identityNumber" OnItemCommand="ListView1_ItemCommand">
                <LayoutTemplate>
                    <table class="table  table-hover table-dynamic dataTable">
                        <thead>
                            <th><%--غياب--%></th>
                            <th>اسم الطالب</th>

                            <th></th>

                            <%--<th class="text-left">سبب الغياب</th>--%>
                        </thead>
                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Button ID="btnActive" CommandName="Active" runat="server" Text="غياب" CssClass="btn btn-danger"></asp:Button>
                        </td>
                        <td>
                            <%# Eval("Name") %>
                        </td>
                        <td>
                            <%--<asp:Label ID="lbljob" runat="server"><%# Eval("job") %></asp:Label>--%>
                        </td>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("identityNumber") %>' />
                        <td style="width: 40%;">

                            <asp:PlaceHolder runat="server" ID="Time" Visible="false">
                                <%--                     <div class="row">
                                    <div class="col-md-6">
                                        وقت الحضور
                                                 <asp:Panel CssClass='input-group date' ID='datetimepicker3' runat="server">
                                                     <asp:TextBox ID="txtarrivingTime" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                     <span class="input-group-addon">
                                                         <span class="glyphicon glyphicon-time"></span>
                                                     </span>
                                                 </asp:Panel>
                                        <asp:Literal ID="litJ1" runat="server" />

                                    </div>
                                    <div class="col-md-6">
                                        وقت الانصراف
                                                 <asp:Panel CssClass='input-group date' ID='datetimepicker4' runat="server">

                                                    <asp:TextBox ID="txtdeptime" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-time"></span>
                                                    </span>
                                                </asp:Panel>
                                        <asp:Literal ID="litJ2" runat="server" />

                                    </div>
                                    </div>--%>
                                <%--<asp:CompareValidator ID="CompareValidator1" Display="Dynamic" runat="server" ValidationGroup="btnSave" Font-Size="Smaller" ForeColor="Red" ErrorMessage="يجب ان يكون وقت الحضور اقل من وقت الانصراف" ControlToCompare="txtarrivingTime" ControlToValidate="txtdeptime" Operator="GreaterThan"></asp:CompareValidator>--%>
                            </asp:PlaceHolder>

                            <asp:PlaceHolder runat="server" ID="Late" Visible="false">
                                <div class="row">
                                    <div class="col-md-4">
                                        وقت الحضور
                                            <div class='input-group date' id='<%# Eval("IdentityNumber","datetimepicker{0}").Trim() %>'>
                                                <asp:TextBox ID="TimeLate" runat="server"></asp:TextBox>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#<%# Eval("IdentityNumber","datetimepicker{0}").Trim() %>').datetimepicker({
                                                    format: 'LT',
                                                    locale: 'en'
                                                });
                                            });
                                        </script>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TimeLate" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال وقت الحضور"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="Absent" Visible="true">سبب الغياب
                                    <asp:RadioButtonList ID="radio" CssClass="radioButtonList" RepeatDirection="Horizontal" runat="server">
                                        <asp:ListItem Value="True">وجود عذر  &nbsp;&nbsp;  </asp:ListItem>
                                        <asp:ListItem Value="false">عدم وجود عذر</asp:ListItem>
                                    </asp:RadioButtonList>
                            </asp:PlaceHolder>
                        </td>
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <h2>No Records!</h2>
                </EmptyDataTemplate>
            </asp:ListView>

        </div>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:OnlineSchoolConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>--%>
        <br />
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-6">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-blue" Text="حفظ" OnClick="btnsave_Click" ValidationGroup="btnSave" />
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>


