<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FinanceBox.aspx.cs" Inherits="Finance_FinanceBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-header ">
                <h4><i class="fa fa-dropbox" aria-hidden="true"></i>&nbsp; لجنة ميزانية الصندوق</h4>
            </div>
            <div class="panel-body">
                <div class="container">
                    <div class="row">

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="مدير اللجنة :"></asp:Label>
                            <asp:Label ID="lblAdmin" runat="server" Font-Size="15px" ForeColor="#3399ff" Text=""></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">

                            <asp:Label ID="Label2" runat="server" Text="أمين الصندوق :"></asp:Label>
                            <asp:Label ID="lblCashier" runat="server" Font-Size="15px" ForeColor="#3399ff" Text=""></asp:Label>
                        </div>
                    </div>


                    <div class="row">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="عضو اللجنة 1 :"></asp:Label>

                            <asp:Label ID="lblCommission1" runat="server" ClientIDMode="Static"></asp:Label>
                            <asp:DropDownList ID="DDLCommission1" Style="display: none" ClientIDMode="Static" class="chosen-select AutherDrop form-control form-white" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="ادخل عضو اللجنة 1" ControlToValidate="DDLCommission1" ValidationGroup="k"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="عضو اللجنة 2 :"></asp:Label>

                            <asp:DropDownList ID="DDLCommission2" Style="display: none" ClientIDMode="Static" class="chosen-select AutherDrop form-control form-white" runat="server"></asp:DropDownList>
                            <asp:Label ID="lblCommission2" runat="server" ClientIDMode="Static"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="ادخل عضو اللجنة 2" ControlToValidate="DDLCommission2" ValidationGroup="k"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="عضو اللجنة 3 :"></asp:Label>

                            <asp:DropDownList ID="DDLCommission3" ClientIDMode="Static" Style="display: none" class="chosen-select AutherDrop form-control form-white" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="lblCommission3" ClientIDMode="Static" runat="server"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="ادخل عضو اللجنة 3" ControlToValidate="DDLCommission3" ValidationGroup="k"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" CssClass="btn red-haze btn btn-primary" Text="حفظ" ValidationGroup="k" />
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn red-haze btn btn-primary" Text="تعديل" />
                            <asp:Button ID="btnClose" runat="server" CssClass="btn red-haze btn btn-primary" Text="اغلاق" />
                        </div>
                    </div>
                </div>
            </div>




        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <%--<script src="../assets/FinanceBox.js"></script>--%>
    <script src="select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

