<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PermissionClassesAdd.aspx.cs" Inherits="EmployeeAttendence_PermissionClassesAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">


    <div class="panel">
        <div class="panel-header">
            <div class="col-md-12">
                <h4><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp; تأمين حصص لمعلم مستأذن</h4>
            </div>

        </div>
        <div class="panel-body">
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="اسم الموظف المستأذن : "></asp:Label>
                        <asp:Label ID="lblEmpName" runat="server" ForeColor="#3399ff"></asp:Label>
                          <asp:DropDownList ID="ddlEmpName" runat="server" Visible="false"  CssClass="chosen-select AutherDrop form-control form-white">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="تاريخ الخروج : "></asp:Label>
                        <asp:Label ID="lblDate" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="وقت الخروج : "></asp:Label>
                        <asp:Label ID="lblFrom" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="وقت العودة : "></asp:Label>
                        <asp:Label ID="lblTo" runat="server" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="مبررات الخروج  : "></asp:Label>
                        <asp:Literal ID="ltrReason" runat="server"></asp:Literal>
                        <asp:TextBox ID="txtReson" runat="server" TextMode="MultiLine" Visible="false"></asp:TextBox>
                    </div>
                </div>

            </div>

            <br />

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label15" runat="server" Text="الحصة :"></asp:Label>
                        <asp:DropDownList ID="ddlClassNumber" runat="server" CssClass="form-control form-white">
                            <asp:ListItem Value="1">الحصة الأولى</asp:ListItem>
                            <asp:ListItem Value="2">الحصة الثانية</asp:ListItem>
                            <asp:ListItem Value="3">الحصة الثالثة</asp:ListItem>
                            <asp:ListItem Value="4">الحصة الرابعة</asp:ListItem>
                            <asp:ListItem Value="5">الحصة الخامسة</asp:ListItem>
                            <asp:ListItem Value="6">الحصة السادسة</asp:ListItem>
                            <asp:ListItem Value="7">الحصة السابعة</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="الفصل :"></asp:Label>
                        <asp:TextBox ID="txtClass" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="المعلم :"></asp:Label>
                        <asp:DropDownList ID="ddlEmployee" runat="server" CssClass="chosen-select AutherDrop form-control form-white"
                            DataValueField="IdentityNumber" DataTextField="Name">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtComments" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
            </div>

            <br />

            <div class="row">
                <div class="col-lg-10">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" Text="اضافة" ValidationGroup="validaiton" OnClick="btnAdd_Click" />
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#0066ff"></asp:Label>
                </div>
            </div>

        </div>
    </div>

    <div class="panel">
        <div class="panel-header">
            <div class="col-md-12">
                <h4><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp; تأمين حصص لمعلم مستأذن</h4>
            </div>

        </div>
        <div class="panel-body">
            <div class="row">

                <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemCommand="LstClass_ItemCommand">
                    <LayoutTemplate>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>الحصة</th>
                                    <th>الفصل</th>
                                    <th>اسم المعلم</th>
                                    <th>ملاحظات</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("Period") %>
                            </td>
                            <td>
                                <%#Eval("ClassRoom") %>
                            </td>
                            <td>
                                <%#Eval("Name") %>
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
                    <EmptyDataTemplate>
                        <h2>لا يوجد حصص</h2>
                    </EmptyDataTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
        <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

