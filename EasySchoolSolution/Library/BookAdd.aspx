<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookAdd.aspx.cs" Inherits="Library_BookAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-book" aria-hidden="true"></i>&nbsp; إضافة كتاب</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">


                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label4" runat="server" Text="رقم الكتاب :"></asp:Label>
                        <asp:TextBox ID="txtBookNo" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtBookNo" runat="server" ErrorMessage="الرجاء ادخال رقم الكتاب"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label2" runat="server" Text="عنوان الكتاب  :"></asp:Label>
                        <asp:TextBox ID="txtBookName" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtBookName" runat="server" ErrorMessage="الرجاء ادخال عنوان الكتاب"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />

                <div class="row">

                    <div class="col-lg-5">

                        <asp:Label ID="Label7" runat="server" Text="اسم المؤلف :"></asp:Label>
                        <asp:TextBox ID="txtAuther" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtAuther" runat="server" ErrorMessage="الرجاء ادخال اسم المؤلف"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label5" runat="server" Text="عدد النسخ الكلي :"></asp:Label>
                        <asp:TextBox ID="txtTotalNo" TextMode="Number" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtTotalNo" runat="server" ErrorMessage="الرجاء ادخال عدد النسخ الكلي"></asp:RequiredFieldValidator>
                    </div>

                </div>

                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="اضافة" OnClick="btnSave_Click" ValidationGroup="validaiton" CssClass="btn btn-blue" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

