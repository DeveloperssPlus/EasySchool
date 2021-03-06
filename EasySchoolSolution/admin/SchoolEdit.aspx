﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SchoolEdit.aspx.cs" Inherits="admin_SchoolEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
        .lblStyle {
            font-weight: 100;
            font-size: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   
    <div class="row">

        <div class="panel">
            <div class="panel-header">

                        <h4 class="panel-header"><i class="fa fa-university"></i>&nbsp; تعديل بيانات مدرسة   <asp:Label ID="lblSchoolName" runat="server" ></asp:Label>
        </h4>
                <hr />
            </div>
            <div class="panel-content">
                <div class="row">
                    <div class="col-md-6">
                        
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">اسم المدرسة</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال اسم المدرسة" ControlToValidate="txtSchoolName" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                         <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">المرحلة التعليمية</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtEducationalLevel" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال اسم المدرسة" ControlToValidate="txtSchoolName" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">المنطقة التعليمية</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtArea" runat="server" CssClass="form-white form-control"></asp:TextBox>

                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">المكتب</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtOffice" runat="server" CssClass="form-white form-control"></asp:TextBox>

                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">الهاتف</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtphone" runat="server" CssClass="form-white form-control"></asp:TextBox>

                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">مجموع الفصول</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txttotalclass" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                     <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txttotalclass" ValidationGroup="Add" ErrorMessage="الرجاء ادخال مجموع الفصول عبارة عن رقم" ForeColor="Red" />
                  
                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                         <br />
                         <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">مجموع الطلاب</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txttotalStudent" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                     <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txttotalStudent" ValidationGroup="Add" ErrorMessage="الرجاء ادخال مجموع الطلاب عبارة عن رقم" ForeColor="Red" />
                  
                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">عدد المباني المستأجرة</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtRentedBuildingsNo" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                     <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txtRentedBuildingsNo" ValidationGroup="Add" ErrorMessage="الرجاء ادخال عدد المباني عبارة عن رقم" ForeColor="Red" />
                  
                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">شعار المدرسة</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:FileUpload ID="fuImage" runat="server" CssClass=" form-white form-control" />
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                       
                       
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">نوع المدرسة</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlSchooltype" runat="server" DataSource='<%# ConstantManager.get("نوع المدرسة")%>' DataTextField="value" DataValueField="Id" CssClass="form-white form-control"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">نوع الدراسة</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlStudyType" runat="server" DataSource='<%# ConstantManager.get("نوع الدراسة")%>' DataTextField="value" DataValueField="Id" CssClass="form-white form-control"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">عدد الوكلاء</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlSecretaryNumber" runat="server" CssClass="form-white form-control">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">العنوان</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال اسم المدرسة" ControlToValidate="txtSchoolName" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">البريد الالكتروني</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-white form-control"></asp:TextBox>

                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">سنة التأسيس</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtYearFounded" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txtYearFounded" ValidationGroup="Add" ErrorMessage="الرجاء ادخال سنة التأسيس عبارة عن رقم" ForeColor="Red" />
                  
                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">عدد الطاقم الاداري و التعليمي</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txttotalStaff" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                     <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txttotalStaff" ValidationGroup="Add" ErrorMessage="الرجاء ادخال عدد الطاقم عبارة عن رقم" ForeColor="Red" />
                  
                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">عدد المباني الحكومية</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtGovernmentBuildingsNo" runat="server" CssClass="form-white form-control"></asp:TextBox>

                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                            ControlToValidate="txtGovernmentBuildingsNo" ValidationGroup="Add" ErrorMessage="الرجاء ادخال عدد المباني عبارة عن رقم" ForeColor="Red" />
                  
                                </div>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                            <div class="form-group">
                            
                                <div class="col-md-8">
                                       <asp:Image ID="ImgLogo" Width="100px" Height="100" runat="server" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <br />
             <div class="row">


                    <div class="col-md-offset-3">
                        <asp:Button ID="btnEdit" runat="server" Text="تعديل" CssClass="btn btn-primary" OnClick= "btnEdit_Click" ValidationGroup="Add" />
                    </div>

                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

