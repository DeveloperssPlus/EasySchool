<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExpensesProgramsAdd.aspx.cs" Inherits="Finance_ExpensesProgramsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header">
            <a class="list-group-item" href="#"><i class="icon-puzzle font-red-flamingo" aria-hidden="true"></i>&nbsp; مصروفات البرامج التربوية والتعليمية والتثقيفية    </a>
        </div>
        <div class="panel-body">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="lblNameProgram" runat="server" Text=" اسم البرنامج :"></asp:Label>
                            <asp:TextBox ID="txtNameProgram" runat="server" CssClass="form-control form-white"></asp:TextBox>

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-8">
                             <div class="form-group">
                            <asp:Label ID="lblDateMeetings" runat="server" Text="المبلغ :"></asp:Label>
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="ادخل المبلغ" ControlToValidate="txtPrice" ValidationGroup="validaiton"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server"
                                Display="Dynamic" ErrorMessage="الرجاء ادخال قيمة صحيحة" ValidationExpression="^\d*\.?\d*$"
                                ControlToValidate="txtPrice" ValidationGroup="validaiton"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text=" محتويات الفاتورة:"></asp:Label>
                            <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="lbl" runat="server" Text="رقم الفاتورة :"></asp:Label>
                            <asp:TextBox ID="txtNoBill" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNoBill" runat="server" ErrorMessage="الرجاء ادخال رقم الفاتورة "></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="ملاحظات:"></asp:Label>
                            <asp:TextBox ID="txtNote" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="الباقي:"></asp:Label>
                            <asp:TextBox ID="txtrest" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <br />

                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-8">
                            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="اضافة" />

                            <asp:Label ID="lblmsg" runat="server" ForeColor="#0066ff"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>







</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

