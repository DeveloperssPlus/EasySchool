<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LaboratoriesInventory.aspx.cs" Inherits="Laboratay_LaboratoriesInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-wpforms" aria-hidden="true"></i>&nbsp; جرد المعامل</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">


                <div class="row">
                    <div class="col-lg-5">
                        <asp:Label ID="Label4" runat="server" Text="رقم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductNo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductNo" runat="server" ErrorMessage="الرجاء ادخال رقم الصنف"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txtProductNo" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الصنف عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label2" runat="server" Text="اسم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductName" runat="server" ErrorMessage="الرجاء ادخال اسم الصنف"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label3" runat="server" Text="الوحدة :"></asp:Label>
                        <asp:TextBox ID="txtUnit" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtUnit" runat="server" ErrorMessage="الرجاء ادخال الوحدة"></asp:RequiredFieldValidator>
                       
                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label7" runat="server" Text="المقيد بالعهدة :"></asp:Label>
                        <asp:TextBox ID="txtCustody" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtCustody" runat="server" ErrorMessage="الرجاء ادخال المقيد بالعهدة"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txtCustody" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال عدد المقيد بالعهدة" ForeColor="Red" />

                    </div>

                </div>
                <br />
                                <div class="row">
                    <div class="col-lg-5">
                        <asp:Label ID="Label6" runat="server" Text="عدد الصالح :"></asp:Label>
                        <asp:TextBox ID="txtValid" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red"
                             ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtValid" runat="server" 
                            ErrorMessage="الرجاء ادخال الصالح"></asp:RequiredFieldValidator>
                         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtValid" Display="Dynamic" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال عدد الصالح عبارة عن رقم" ForeColor="Red" />
                    </div>
                          <div class="col-lg-5">
                        <asp:Label ID="Label8" runat="server" Text="عدد الغير صالح :"></asp:Label>
                        <asp:TextBox ID="txtNotValid" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red"
                             ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNotValid"
                             runat="server" ErrorMessage="الرجاء ادخال الغير صالح"></asp:RequiredFieldValidator>
                         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtNotValid" ValidationGroup="validaiton" Display="Dynamic" ErrorMessage="الرجاء ادخال عدد الغير صالح عبارة عن رقم" ForeColor="Red" />
                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">
                        <asp:Label ID="Label5" runat="server" Text="عدد الزيادة :"></asp:Label>
                        <asp:TextBox ID="txtincreas" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtincreas" runat="server" ErrorMessage="الرجاء ادخال الزيادة"></asp:RequiredFieldValidator>
                         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtincreas" ValidationGroup="validaiton" Display="Dynamic" ErrorMessage="الرجاء ادخال عدد الزيادة عبارة عن رقم" ForeColor="Red" />
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

