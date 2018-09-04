<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSchool.aspx.cs" Inherits="Admin_AddSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .lblStyle {
            font-weight: 100;
            font-size: 13px;
        }
    </style>

    <%--      <script>

          function ValidatePage() {
              FreezeScreen();

              if (typeof (Page_ClientValidate) == 'function') {
                  Page_ClientValidate();
              }

              if (Page_IsValid) {
                  UnFreezeScreen();
                  openModal();
              }
              else {
                  UnFreezeScreen();
              }
          }

          function openModal() {
                  $('#modal').modal('show');
              }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="header">
        <h3>إضافة مدرسة جديدة
        </h3>
        <br />
    </div>

    <div class="row">

        <div class="panel">
            <div class="panel-header">
                <h4 class="panel-header"><i class="fa fa-university"></i>&nbsp; معلومات المدرسة</h4>
                <hr />
            </div>
            <div class="panel-content">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <label class="lblStyle">الرقم الوزاري</label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtSchoolId" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال الرقم الوزاري" ControlToValidate="txtSchoolId" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"
                                        ControlToValidate="txtSchoolId" ValidationGroup="Add" ErrorMessage="الرقم الوزاري عبارة عن رقم" ForeColor="Red" />

                                </div>
                            </div>
                        </div>
                        <br />
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
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال اسم المدرسة" ControlToValidate="txtSchoolName" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
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


                    </div>
                    <div class="col-md-6">

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

                        <br />
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
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ErrorMessage="الرجاء إدخال اسم المدرسة" ControlToValidate="txtSchoolName" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>--%>
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

                                    <%--<asp:DropDownList ID="DDLSchoolDistrict" runat="server"></asp:DropDownList>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
                <br />
            </div>
        </div>

    </div>

    <div class="row">
        <div class="panel">
            <div class="panel-header">
                <h4 class="panel-header"><i class="fa fa-user"></i>&nbsp; معلومات أدمن المدرسة</h4>
                <hr />
            </div>
            <div class="panel-content">
                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <div class="col-md-3">
                                <label class="lblStyle">اسم القائد</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtAdminName" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="الرجاء إدخال الاسم" ForeColor="Red" ControlToValidate="txtAdminName" ValidationGroup="Add"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">

                        <div class="form-group">
                            <div class="col-md-4">
                                <label class="lblStyle">رقم الجوال</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="الرجاء إدخال رقم الجوال" ForeColor="Red" ControlToValidate="txtMobileNumber" ValidationGroup="Add"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <div class="col-md-3">
                                <label class="lblStyle"> رقم هوية القائد</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtIdentity" runat="server" CssClass="form-white form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="الرجاء إدخال رقم الهوية" ControlToValidate="txtIdentity" ForeColor="Red" ValidationGroup="Add"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                        <br />
                        <small style ="color:blue">
                            يتم تسجيل الدخول باستخدام رقم الهوية و كلمة المرور
                        </small>
                </div>


                <div class="row">

                    <%--<asp:Button ID="Button1" runat="server" Text="حفظ" CssClass="btn btn-primary" OnClientClick="return confirm('هل تريد حفظ  معلومات المدرسة؟ <br /> سيتم ارسال كلمة المرور الى رقم جوال قائد المدرسة'); " ValidationGroup="Add" />--%>
                    <asp:Button ID="Button1" runat="server" Text="نعم" CssClass="btn btn-primary btn-embossed" data-dismiss="modal" OnClick="btnAdd_Click" ValidationGroup="Add" />

                    <div class="col-md-offset-3">
                    </div>

                </div>
            </div>
    </div>
    </div>



    <%--    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <asp:HiddenField ID="hiddenId" runat="server" />
                <div class="modal-body">
                    <p>هل تريد حفظ  معلومات المدرسة؟
                        <br />
                        سيتم ارسال كلمة المرور الى رقم جوال قائد المدرسة
                    </p>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnAdd" runat="server" Text="نعم" CssClass="btn btn-primary btn-embossed" data-dismiss="modal" OnClick="btnAdd_Click"  ValidationGroup="Add" />

                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal" onclick="absentAlert(true)">نعم</button>
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">لا</button>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

