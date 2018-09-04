<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentPatients.aspx.cs" Inherits="Employee_StudentPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-medkit" aria-hidden="true"></i>&nbsp; كشف بالحالات المرضية للطلاب</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="اسم الطالب :"></asp:Label>
                            <asp:DropDownList ID="DDLStudName" runat="server" CssClass="form-control form-white chosen-select AutherDrop"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">

                            <asp:Label ID="Label3" runat="server" Text="الصف  :"></asp:Label>
                            <asp:TextBox ID="txtClass" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtClass" runat="server" ErrorMessage="الرجاء ادخال الصف"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">

                        <asp:Label ID="Label5" runat="server" Text="هاتف ولي الأمر :"></asp:Label>


                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label9" runat="server" Text="المنزل :"></asp:Label>
                        <asp:TextBox ID="txtHomeTel" runat="server" class="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label11" runat="server" Text="العمل :"></asp:Label>
                        <asp:TextBox ID="txtWorkTel" runat="server" class="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label13" runat="server" Text="الجوال :"></asp:Label>
                        <asp:TextBox ID="txtMobile" runat="server" class="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="وصف الحالة المرضية :"></asp:Label>
                        <asp:TextBox ID="txtDescribe" TextMode="MultiLine" runat="server" class="form-control  form-white"></asp:TextBox>


                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="الاجراء المطلوب عند وقوع الحالة :"></asp:Label>
                        <asp:TextBox ID="txtAction" TextMode="MultiLine" runat="server" class="form-control  form-white"></asp:TextBox>

                    </div>
                    <div class="col-lg-6">
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="التوصيات :"></asp:Label>
                        <asp:TextBox ID="txtRecommendations" TextMode="MultiLine" runat="server" class="form-control  form-white"></asp:TextBox>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="حفظ" ValidationGroup="validaiton" CssClass="btn btn-blue" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

