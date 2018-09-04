<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentAdd.aspx.cs" Inherits="StudentAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div class="">
                    <div>
                        <span class="noty_text">
                            <div class="alert alert-success">
                                <p>
                                    <strong>شكرا لك.</strong>
                                    <asp:Label ID="lblerror" runat="server">لقد تم الإضافة بنجاح..</asp:Label>
                                </p>

                                <div class="noty_buttons">

                                    <br />
                                    <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>

    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; إضافة طالب جديد
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="الاسم :"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" runat="server" ControlToValidate="txtName" ErrorMessage="الرجاء ادخال اسم بالعربي"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text=" الاسم بالإنجليزي :"></asp:Label>
                        <asp:TextBox ID="txtNameEnglish" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" runat="server" ControlToValidate="txtNameEnglish" ErrorMessage="الرجاء ادخال اسم بالإنجليزي"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="lblSource" runat="server" Text="التخصص :"></asp:Label>
                        <asp:TextBox ID="txtSpecification" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="الجنسية :"></asp:Label>
                        <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label15" runat="server" Text="الجنسية بالإنجليزي :"></asp:Label>
                        <asp:TextBox ID="txtNationalityEnglish" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <div class="col-lg-10"> <asp:Label ID="Label5" runat="server" Text="تاريخ الميلاد :"></asp:Label>
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control form-white"></asp:TextBox></div>
                       <div class="col-lg-1"><br /><obout:Calendar ID="CalendarDOB" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDOB" runat="server"></obout:Calendar>
                       </div>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtDOB" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true"> الرجاء ادخال تاريخ صحيح </asp:RegularExpressionValidator>

                    </div>
                </div>
            </div>



            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="سنة الدخول :"></asp:Label>
                        <asp:TextBox ID="txtYearEntery" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="رقم جواز السفر :"></asp:Label>
                        <asp:TextBox ID="txtPassportNo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label18" runat="server" Text="المرحلة الدراسية :"></asp:Label>
                        <asp:TextBox ID="txtEducationalLevel" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
                <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label19" runat="server" Text="الصف الدراسي :"></asp:Label>
                        <asp:TextBox ID="txtClass" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label20" runat="server" Text="الفصل :"></asp:Label>
                        <asp:TextBox ID="txtSemester" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label21" runat="server" Text="رقم التسجيل المدني :"></asp:Label>
                        <asp:TextBox ID="txtResidencyNo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
             <br />
                <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="مكان الولادة :"></asp:Label>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label23" runat="server" Text="الدولة :"></asp:Label>
                        <asp:TextBox ID="txtCountryBirth" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label24" runat="server" Text="المدينة :"></asp:Label>
                        <asp:TextBox ID="txtCityBirth" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label25" runat="server" Text="ملكية السكن :"></asp:Label>
                     <asp:TextBox ID="txtOwnershipHousing" runat="server" CssClass="form-control form-white"></asp:TextBox>
                </div>
                 <div class="col-lg-4">
                    <asp:Label ID="Label26" runat="server" Text="فئة الدم :"></asp:Label>
                     <asp:TextBox ID="txtBloodType" runat="server" CssClass="form-control form-white"></asp:TextBox>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="بيانات الهوية :"></asp:Label>
                </div>

            </div>
            <br />

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="نوعها :"></asp:Label>
                        <asp:TextBox ID="txtIdentityType" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="رقمها :"></asp:Label>
                        <asp:TextBox ID="txtIdentityNo1" runat="server" CssClass="form-control form-white" data-mask="9999999999" placeholder="000000000"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" runat="server" ControlToValidate="txtIdentityNo1" ErrorMessage="الرجاء ادخال رقم الهوية "></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <div class="col-lg-10">
                        <asp:Label ID="Label11" runat="server" Text="تاريخها :"></asp:Label>
                        <asp:TextBox ID="txtIdentityDate" runat="server" CssClass="form-control form-white"></asp:TextBox></div>
                        <div class="col-lg-1"><br />
                        <obout:Calendar ID="CalendarIdentityDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtIdentityDate" runat="server"></obout:Calendar>
                       </div> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtIdentityDate" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true"> الرجاء ادخال تاريخ صحيح </asp:RegularExpressionValidator>

                    </div>
                </div>
                </div><br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label17" runat="server" Text="مكان إصدار الهوية :"></asp:Label>
                        <asp:TextBox ID="txtIdentitySource" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label7" runat="server" Font-Bold="true" Text="بيانات القيد :"></asp:Label>
                </div>

            </div>
            <br />

            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label12" runat="server" Text="سجل الطالب :"></asp:Label>
                        <asp:TextBox ID="txtRecordStudent" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label13" runat="server" Text="حالة القيد :"></asp:Label>
                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <div class="col-lg-10">
                        <asp:Label ID="Label14" runat="server" Text="تاريخ الإلتحاق :"></asp:Label>
                        <asp:TextBox ID="txtJoinedDate" runat="server" CssClass="form-control form-white"></asp:TextBox></div>
                        <div class="col-lg-1"><br />
                        <obout:Calendar ID="CalendarJoinedDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtJoinedDate" runat="server"></obout:Calendar>
                       </div> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtJoinedDate" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true"> الرجاء ادخال تاريخ صحيح </asp:RegularExpressionValidator>

                    </div>
                </div>
                </div>
               <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label27" runat="server" Font-Bold="true" Text="بيانات الاتصال :"></asp:Label>
                </div>

            </div>
            <br />
               <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label28" runat="server" Text="المنطقة الادارية :"></asp:Label>
                        <asp:TextBox ID="txtAdministrativeRegion" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label29" runat="server" Text="المدينة :"></asp:Label>
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label30" runat="server" Text="الحي :"></asp:Label>
                        <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            
            <br />
             <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label31" runat="server" Text="الشارع الرئيسي :"></asp:Label>
                        <asp:TextBox ID="txtMainStreet" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label32" runat="server" Text="الشارع الفرعي :"></asp:Label>
                        <asp:TextBox ID="txtSubStreet" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label33" runat="server" Text="رقم المنزل :"></asp:Label>
                        <asp:TextBox ID="txtHouseNo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label34" runat="server" Text="البريد الالكتروني :"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label35" runat="server" Text="الرمز البريدي :"></asp:Label>
                        <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label36" runat="server" Text="صندوق البريد :"></asp:Label>
                        <asp:TextBox ID="txtMailBox" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
               <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label37" runat="server" Text="الفاكس :"></asp:Label>
                        <asp:TextBox ID="txtFax" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label38" runat="server" Text="العنوان في الاجازة :"></asp:Label>
                        <asp:TextBox ID="txtAddressHoliday" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                

            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label39" runat="server" Font-Bold="true" Text="بيانات ولي أمر الطالب :"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label40" runat="server" Text="اسم ولي أمر الطالب :"></asp:Label>
                        <asp:TextBox ID="txtGuardianName" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label41" runat="server" Text="الجنسية :"></asp:Label>
                        <asp:TextBox ID="txtGuardianNationality" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label42" runat="server" Text="صلة القرابة :"></asp:Label>
                        <asp:TextBox ID="txtRelativeRelation" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group">

                        <asp:Label ID="Label43" runat="server" Text="نوع الهوية :"></asp:Label>
                        <asp:TextBox ID="txtGuardianIdentityType" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                   <div class="col-lg-3">
                    <div class="form-group">
                        <asp:Label ID="Label45" runat="server" Text=" مصدرها :"></asp:Label>
                        <asp:TextBox ID="txtGuardianIdentitySource" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                      
                        <div class="col-lg-9">
                        <asp:Label ID="Label44" runat="server" Text="تاريخها :"></asp:Label>
                        <asp:TextBox ID="txtDateIdentity" runat="server" CssClass="form-control form-white"></asp:TextBox></div>
                        <div class="col-lg-1"><br />
                        <obout:Calendar ID="CalendarDateIdentity" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateIdentity" runat="server"></obout:Calendar>
                       </div> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtDateIdentity" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true"> الرجاء ادخال تاريخ صحيح </asp:RegularExpressionValidator>

                   
                    </div>
                </div>
             
                 <div class="col-lg-3">
                    <div class="form-group">
                        <div class="col-lg-9">
                        <asp:Label ID="Label46" runat="server" Text="نهايتها :"></asp:Label>
                        <asp:TextBox ID="txtEndIdentity" runat="server" CssClass="form-control form-white"></asp:TextBox></div>
                        <div class="col-lg-1">
                            <br />
                        <obout:Calendar ID="CalendarEndIdentity" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtEndIdentity" runat="server"></obout:Calendar>
                       </div> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtEndIdentity" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true"> الرجاء ادخال تاريخ صحيح </asp:RegularExpressionValidator>

                    </div>
                 </div>

            </div>
              <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label47" runat="server" Text="رقم هاتف المنزل :"></asp:Label>
                        <asp:TextBox ID="txtHomePhoneNo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label48" runat="server" Text="رقم الهاتف الجوال :"></asp:Label>
                        <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label49" runat="server" Text="رقم هاتف العمل :"></asp:Label>
                        <asp:TextBox ID="txtWorkPhoneNumber" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
               <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label50" runat="server" Text="اسم قريب للطالب 1 :"></asp:Label>
                        <asp:TextBox ID="txtNameStudentClose1" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label51" runat="server" Text="الهاتف :"></asp:Label>
                        <asp:TextBox ID="txtMobileClose1" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label52" runat="server" Text="العنوان :"></asp:Label>
                        <asp:TextBox ID="txtAddressClose1" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
             <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label53" runat="server" Text="اسم قريب للطالب 2 :"></asp:Label>
                        <asp:TextBox ID="txtNameStudentClose" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label54" runat="server" Text="الهاتف :"></asp:Label>
                        <asp:TextBox ID="txtMobileClose" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label55" runat="server" Text="العنوان :"></asp:Label>
                        <asp:TextBox ID="txtAddressClose" runat="server" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
                <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label16" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <br />
                        <br />
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn btn-primary btn-embossed" Text="إضافة" ValidationGroup="btnAdd" />
                    </div>
                </div>
            
        </div>
    </div>
    </div> 



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>
</asp:Content>

