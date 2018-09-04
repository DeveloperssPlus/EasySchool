<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaterialsAdd.aspx.cs" Inherits="Laboratay_MaterialsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">

                <div>
                    <span class="noty_text">
                        <div class="alert alert-success">
                            <p>
                                <strong>شكرا لك.</strong>
                                <asp:Label ID="Label1" runat="server">تم الاضافة بنجاح</asp:Label>
                            </p>

                            <div class="noty_buttons">

                                <br />
                                <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="اغلاق" OnClick="btnok_Click" />
                            </div>
                        </div>

                    </span>
                </div>

            </li>
        </ul>
    </asp:PlaceHolder>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-minus-square-o" aria-hidden="true"></i>&nbsp; اضافة الناقص والزائد والتالف في المختبر</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label3" runat="server" Text="الحالة :"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:DropDownList ID="DDLStatus" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white">
                            <asp:ListItem Value="1">زائد</asp:ListItem>
                            <asp:ListItem Value="2">ناقص</asp:ListItem>
                            <asp:ListItem Value="3">تالف</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label4" runat="server" Text="رقم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductNo" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductNo" runat="server" ErrorMessage="الرجاء ادخال رقم الصنف"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtProductNo" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الصنف عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label2" runat="server" Text="اسم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductName" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductName" runat="server" ErrorMessage="الرجاء ادخال اسم الصنف"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <br />

                <div class="row">

                    <div class="col-lg-5">

                        <asp:Label ID="Label7" runat="server" Text="الكمية المطلوبة :"></asp:Label>
                        <asp:TextBox ID="txtAmount" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtAmount" runat="server" ErrorMessage="الرجاء ادخال الكمية"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtAmount" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال الكمية عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label5" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>


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

