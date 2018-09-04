<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DailyVisitAdd.aspx.cs" Inherits="Library_DailyVisitAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
     <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
  <div class="panel">
        <div class="panel-header">
            <h3><i class="icon-puzzle font-red-flamingo" aria-hidden="true"></i>&nbsp; إضافة سجل التردد اليومي</h3>
        </div>
        <div class="panel-body">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="رقم الطالب :"></asp:Label>
                            <asp:DropDownList ID="ddlStudentID" runat="server" CssClass="chosen-select AutherDrop form-control form-white" AppendDataBoundItems="true" AutoPostBack="True" DataTextField="Id" DataValueField="IdentityNumber" OnSelectedIndexChanged="ddlStudentID_SelectedIndexChanged">
                                <asp:ListItem Value="-1">رقم الطالب</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="الرجاء اختيار رقم الطالب" ControlToValidate="ddlStudentID" 
                                Display="Dynamic" ForeColor="Red" ValueToCompare="-1" Operator="NotEqual" ValidationGroup="validation"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="وقت الزيارة :"></asp:Label>
                            <div class='input-group date' id='datetimepicker3'>
                                <asp:TextBox ID="txtTime" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-time"></span>
                                </span>
                            </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="الرجاء إدخال سبب الزيارة" ControlToValidate="txtTime" ForeColor="Red" ValidationGroup="validation"></asp:RequiredFieldValidator>

                            <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker3').datetimepicker({
                                        format: 'LT',
                                        locale: 'en'
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="سبب الزيارة :"></asp:Label>
                            <asp:TextBox ID="txtReason" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="الرجاء إدخال سبب الزيارة" ControlToValidate="txtReason" ForeColor="Red" ValidationGroup="validation"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <br />
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-10">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="اسم الطالب :"></asp:Label>
                                    <asp:TextBox ID="txtStudentName" runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ddlStudentID" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="المواد المستخدمة :"></asp:Label>
                            <asp:TextBox ID="txtMaterialUsed" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="الرجاء إدخال المواد المستخدمة" ControlToValidate="txtMaterialUsed" ForeColor="Red" ValidationGroup="validation"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" Text="إضافة" OnClick="btnAdd_Click" ValidationGroup="validation" />
                        <asp:Label ID="lblerror" runat="server" ForeColor="#0066ff"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
            </div>
        </div>
    </div>

    <div class="panel margin-bottom-40">
        <div class="panel-heading">
            <h3 ><i class="fa fa-child"></i>&nbsp;سجل التردد اليومي لليوم</h3>
        </div>
        <div class="panel-content">
            <table class="table table-hover dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>اسم الطالب</th>
                        <th>الصف</th>
                        <th>وقت الزيارة</th>
                        <th>الغرض الزيارة</th>
                        <th>الأدوات
                            <br />
                            والأجهزة المستخدمة</th>
                        <th>
                        </th>
                    </tr>
                </thead>
                <asp:ListView ID="lstLibraryVisits" runat="server" OnDataBinding="lstLibraryVisits_DataBinding" OnItemCommand="lstLibraryVisits_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                              <td>
                            
                            </td>
                            <td>
                                <%# Eval("Time") %>
                            </td>

                            <td>
                                <%# Eval("Reason") %>
                            </td>
                            <td>
                                <%# Eval("MaterialsUsed") %>
                            </td>
                            <td>
                               <asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>

                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
     <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

