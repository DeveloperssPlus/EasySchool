<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HelpStudentAdd.aspx.cs" Inherits="Finance_HelpStudentAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; إعانات للطلاب ذوي الاحتياجات المادية
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="اسم الطالب :"></asp:Label>
                        <asp:DropDownList ID="ddlStuName" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white"></asp:DropDownList>
                    </div>
                </div>
                 <div class="col-lg-6">
                    <div class="form-group">
                        <br />
                        <asp:RadioButtonList ID="RBLPrice" runat="server">
                            <asp:ListItem Value="false">مبلغ مادي</asp:ListItem>
                            <asp:ListItem Value="true">هدية عينية</asp:ListItem>
                        </asp:RadioButtonList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="RBLPrice" ErrorMessage="الرجاء الاختيار "></asp:RequiredFieldValidator>
                  
                    </div>
                </div>
            </div>
           
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="الصف الدراسي :"></asp:Label>
                        <asp:TextBox ID="txtClass" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtClass" ErrorMessage="أدخل الصف الدراسي"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="الباقي :"></asp:Label>
                        <asp:TextBox ID="txtRest" CssClass="form-control form-white" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtRest" ErrorMessage="أدخل الباقي"></asp:RequiredFieldValidator>
                    
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="اضافة" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

