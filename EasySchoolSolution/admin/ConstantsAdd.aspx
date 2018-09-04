<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ConstantsAdd.aspx.cs" Inherits="Admin_ConstantsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header panel-controls">
            <h3 class="caption-subject bold font-red-flamingo uppercase"><i class="icon-puzzle font-red-flamingo"></i>إدارة الثوابت <span class="caption-helper">...</span></h3>
        </div>
        <div class="panel-content">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <div class="col-md-4 label-style">
                                    <asp:Label ID="Label6" runat="server">اختر الثابت: </asp:Label>
                                </div>
                                <div class="col-md-7">
                                    <asp:DropDownList ID="ddlConstansType" runat="server" CssClass="form-control form-white chosen-select AutherDrop" AutoPostBack="true" DataSource="<%#ConstantManager.getAdminTypes()%>" DataTextField="Type" DataValueField="Id"></asp:DropDownList>
                                </div>
                            </div>
                       
                            <br />
                            <div class="form-group">
                          <%--      <div class="col-lg-4 label-style">
                                    <asp:Label ID="Label1" runat="server" Text="Label">القيمة الإفتراضية: </asp:Label>
                                </div>
                                <div class="col-lg-7">
                                    <asp:TextBox ID="txtValDefult" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                </div>--%>
                            </div>
                     <br />
                            <div class="form-group">
                                <div class="col-lg-4 label-style">
                                    <asp:Label ID="Label2" runat="server" Text="Label"> إضافة ثابت : </asp:Label>
                                </div>

                                <div class="col-lg-7">
                                    <asp:TextBox ID="txtAddConctant" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button ID="btnAdd" runat="server" Text="إضافة ثابت" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" />
                            <asp:Label ID="lblSuccess" runat="server" ForeColor="Blue" ></asp:Label>
                        </div>
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <asp:ListView ID="lstConstants" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="lstConstants_ItemCommand">
                                        <LayoutTemplate>
                                            <table class="table table-hover table-dynamic">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <div class="m-b-10">القيمة</div>
                                                        </th>
                                                        <%--       <th>
                                                            <div class="m-b-10">القيمة الإفتراضية</div>
                                                        </th>--%>
                                                    </tr>
                                                </thead>
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblValue" runat="server" Text='<%# Eval("value") %>'></asp:Label></td>
                                                <%--     <td>
                                                    <asp:Label ID="lblType" runat="server" Text='<%# Eval("DefaultVal") %>'></asp:Label></td>
                                                --%>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('هل أنت متأكد؟');" CommandName="Del" runat="server" ForeColor="Red"><i class="fa fa-times"></i></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <h2>لم يتم تحديد أي قيم</h2>
                                        </EmptyDataTemplate>
                                    </asp:ListView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand="SELECT Constants.value, ConstantsType.Type, ConstantsType.Id AS TypeId, ConstantsType.DefaultVal, Constants.Id, Constants.isDeleted FROM Constants INNER JOIN ConstantsType ON Constants.type = ConstantsType.Id WHERE (ConstantsType.Id = @TypeId) AND (Constants.isDeleted = 0)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddlConstansType" PropertyName="SelectedValue" Name="TypeId"></asp:ControlParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

