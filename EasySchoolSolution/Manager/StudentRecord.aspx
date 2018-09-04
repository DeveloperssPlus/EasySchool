<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentRecord.aspx.cs" Inherits="Manager_StudentRecord" %>

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
                                    <asp:Label ID="lblerror" runat="server">لقد تم التعديل بنجاح..</asp:Label>
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
    <asp:PlaceHolder ID="placeHolderError" runat="server" Visible="false">
        <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>الطالب غير موجود!</strong>
        </div>
    </asp:PlaceHolder>

    <div class="row">
        <div class="col-md-12 portlets ui-sortable">
            <div class="panel">
                <div class="panel-header bg-aero">
                    <h3>بحث عن<i class="fa fa-search faa-wrench animated"></i> <strong>طالب </strong></h3>
                </div>
                <div class="panel-content">
                    <div class="col-lg-5">
                        الرقم الأكاديمي:
            <asp:TextBox ID="txtStdNumber" CssClass="form-control form-white" runat="server" data-mask="99999" placeholder="00000"></asp:TextBox>
                    </div>
                    <div class="col-lg-5">
                        اسم الطالب:
                 <asp:DropDownList ID="lstStuName" runat="server" CssClass="chosen-select AutherDrop form-control form-white" DataTextField="Type" DataValueField="Id">
                 </asp:DropDownList>
                    </div>

                    <br />
                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary btn-embossed" OnClick="btnSearch_Click" Text="بحث" />
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

    </div>

    <br />

    <div class="row">

        <div class="panel">
            <div class="panel-content">
                <div class="row">
                    <div class="col-lg-5">
                        اسم الطالب:
                             <asp:Label ID="lblStuName" runat="server" Visible="false" Text="Label" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-5">
                        <asp:HyperLink ID="lnkEdit" runat="server" Visible="false" CssClass="btn btn-success">تعديل بيانات الطالب</asp:HyperLink>

                    </div>
                </div>
                <br />
                <div class="nav-tabs2">
                    <ul class="nav nav-tabs nav-red">
                        <li class="active"><a aria-expanded="false" href="#tab5_2" data-toggle="tab"><i class="fa fa-info"></i>المعلومات الشخصية</a></li>
                        <li><a aria-expanded="true" href="#tab5_1" data-toggle="tab"><i class="icon-home"></i>الحضور</a></li>

                        <li><a aria-expanded="false" href="#tab5_3" data-toggle="tab"><i class="fa fa-table"></i>جدول الطالب</a></li>
                        <li><a aria-expanded="false" href="#tab5_4" data-toggle="tab"><i class="fa fa-comments"></i>ملاحظات</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" id="tab5_1">

                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>سجل الغياب</h4>
                                    </div>
                                    <div class="panel-body">
                                     <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstAbsence" OnDataBinding="lstAbsence_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    
                                    <td> <%# getCounter() %></td>
                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <div runat="server" visible='<%#Eval("IsExcuse") %>' class="badge badge-primary">بعذر</div>
                                        <div runat="server" visible='<%# !(bool) Eval("IsExcuse") %>' class="badge badge-danger">بدون عذر</div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>سجل التأخير</h4>
                                    </div>
                                    <div class="panel-body">
                                         <table class="table table-hover dataTable table-dynamic">
                    <thead>
                        <tr>
                            <th></th>
                            <th>الرقم الأكاديمي
                            </th>
                            <th>اسم الطالب
                            </th>
                            <th>مدة التأخر
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView runat="server" ID="lstLate" OnDataBinding="lstLate_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Id") %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("Amount") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>سجل الحضور</h4>
                                    </div>
                                    <div class="panel-body">
                                        <asp:ListView ID="lstAttendences" runat="server" OnDataBinding="lstAttendences_DataBinding">
                                            <LayoutTemplate>
                                                <table class="table table-hover dataTable" id="table-editable">
                                                    <thead>
                                                        <th>التاريخ</th>
                                                        <th>وقت الحضور</th>
                                                        <th>وقت الانصراف</th>

                                                    </thead>
                                                    <tr id="itemPlaceholder" runat="server"></tr>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Date","{0:d}") %></td>
                                                    <td><%# Eval("ArrivingTime") %></td>
                                                    <td><%# Eval("DepartureTime") %></td>

                                                </tr>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                <h4 style="text-align: center">لا يوجد حضور حتى الآن</h4>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane  active" id="tab5_2">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label3" runat="server" Text="الرقم الأكاديمي"></asp:Label>
                                                <asp:Label ID="txtNumber" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="lblSource" runat="server" Text="التخصص :"></asp:Label>
                                                <asp:Label ID="txtSpecification" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label2" runat="server" Text="الجنسية :"></asp:Label>
                                                <asp:Label ID="txtNationality" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="سنة الدخول :"></asp:Label>
                                                <asp:Label ID="txtYearEntery" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label4" runat="server" Text="رقم جواز السفر :"></asp:Label>
                                                <asp:Label ID="txtPassportNo" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label5" runat="server" Text="تاريخ الميلاد :"></asp:Label>
                                                <asp:Label ID="txtDOB" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <asp:Label ID="Label6" Font-Bold="true" runat="server" Text="بيانات الهوية :"></asp:Label>
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label9" runat="server" Text="نوعها :"></asp:Label>
                                                <asp:Label ID="txtIdentityType" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label10" runat="server" Text="رقمها :"></asp:Label>
                                                <asp:Label ID="txtIdentityNo1" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label11" runat="server" Text="تاريخها :"></asp:Label>
                                                <asp:Label ID="txtIdentityDate" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <asp:Label ID="Label7" Font-Bold="true" runat="server" Text="بيانات القيد :"></asp:Label>
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label12" runat="server" Text="سجل الطالب :"></asp:Label>
                                                <asp:Label ID="txtRecordStudent" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label13" runat="server" Text="حالة القيد :"></asp:Label>
                                                <asp:Label ID="txtState" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label14" runat="server" Text="تاريخ الإلتحاق :"></asp:Label>
                                                <asp:Label ID="txtJoinedDate" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label19" runat="server" Text="الصف الدراسي :"></asp:Label>
                                                <asp:Label ID="txtClass" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label20" runat="server" Text="الفصل :"></asp:Label>
                                                <asp:Label ID="txtSemester" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label21" runat="server" Text="رقم التسجيل المدني :"></asp:Label>
                                                <asp:Label ID="txtResidencyNo" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                               
                                                <asp:Label ID="Label22" runat="server" Text="المرحلة الدراسية :"></asp:Label>
                                                <asp:Label ID="txtEducationalLevel" runat="server"></asp:Label>

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label23" runat="server" Text="مكان الولادة\الدولة :"></asp:Label>
                                                <asp:Label ID="txtCountryBirth" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label24" runat="server" Text="مكان الولادة\المدينة :"></asp:Label>
                                                <asp:Label ID="txtCityBirth" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                     <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label26" runat="server" Text="ملكية السكن :"></asp:Label>
                   <asp:Label ID="txtOwnershipHousing" runat="server"></asp:Label>
                </div>
                 <div class="col-lg-4">
                    <asp:Label ID="Label27" runat="server" Text="فئة الدم :"></asp:Label>
                    <asp:Label ID="txtBloodType" runat="server"></asp:Label>
                </div>

            </div>
                                    <br /><br />
                                   
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label30" runat="server" Font-Bold="true" Text="بيانات الاتصال :"></asp:Label>
                </div>

            </div>
 <br />
                                    <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label31" runat="server" Text="المنطقة الادارية :"></asp:Label>
                        <asp:Label ID="txtAdministrativeRegion" runat="server"></asp:Label>   
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label32" runat="server" Text="المدينة :"></asp:Label>
                         <asp:Label ID="txtCity" runat="server"></asp:Label>  </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label33" runat="server" Text="الحي :"></asp:Label>
                       <asp:Label ID="txtDistrict" runat="server"></asp:Label> </div>
                </div>

            </div>
            
            <br />
                                    <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label34" runat="server" Text="الشارع الرئيسي :"></asp:Label>
                        <asp:Label ID="txtMainStreet" runat="server"></asp:Label> 
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label35" runat="server" Text="الشارع الفرعي :"></asp:Label>
                        <asp:Label ID="txtSubStreet" runat="server"></asp:Label> </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label36" runat="server" Text="رقم المنزل :"></asp:Label>
                       <asp:Label ID="txtHouseNo" runat="server"></asp:Label> </div>
                </div>

            </div>
            
            <br />
                                     <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label37" runat="server" Text="البريد الالكتروني :"></asp:Label>
                        <asp:Label ID="txtEmail" runat="server"></asp:Label> 
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label38" runat="server" Text="الرمز البريدي :"></asp:Label>
                        <asp:Label ID="txtPostalCode" runat="server"></asp:Label> </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label39" runat="server" Text="صندوق البريد :"></asp:Label>
                        <asp:Label ID="txtMailBox" runat="server"></asp:Label> </div>
                </div>

            </div>
               <br />
                                    <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label40" runat="server" Text="الفاكس :"></asp:Label>
                      <asp:Label ID="txtFax" runat="server"></asp:Label>   
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label41" runat="server" Text="العنوان في الاجازة :"></asp:Label>
                        <asp:Label ID="txtAddressHoliday" runat="server"></asp:Label></div>
                </div>
                

            </div>
            <br />
                                    <br />
            <div class="row">
                <div class="col-lg-4">
                    <asp:Label ID="Label42" runat="server" Font-Bold="true" Text="بيانات ولي أمر الطالب :"></asp:Label>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label43" runat="server" Text="اسم ولي أمر الطالب :"></asp:Label>
                       <asp:Label ID="txtGuardianName" runat="server"></asp:Label> 
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label44" runat="server" Text="الجنسية :"></asp:Label>
                        <asp:Label ID="txtGuardianNationality" runat="server"></asp:Label>  </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label45" runat="server" Text="صلة القرابة :"></asp:Label>
                        <asp:Label ID="txtRelativeRelation" runat="server"></asp:Label> </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group">

                        <asp:Label ID="Label46" runat="server" Text="نوع الهوية :"></asp:Label>
                        <asp:Label ID="txtGuardianIdentityType" runat="server"></asp:Label> 
                    </div>
                </div>
                   <div class="col-lg-3">
                    <div class="form-group">
                        <asp:Label ID="Label47" runat="server" Text=" مصدرها :"></asp:Label>
                        <asp:Label ID="txtGuardianIdentitySource" runat="server"></asp:Label></div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                      
                        
                        <asp:Label ID="Label48" runat="server" Text="تاريخها :"></asp:Label>
                        <asp:Label ID="txtDateIdentity" runat="server"></asp:Label>
                    
                </div>
             </div>
                 <div class="col-lg-3">
                    <div class="form-group">
                       
                        <asp:Label ID="Label49" runat="server" Text="نهايتها :"></asp:Label>
                         <asp:Label ID="txtEndIdentity" runat="server"></asp:Label>
                    </div>
                 

            </div>
                   </div>
              <br /><br />
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label50" runat="server" Text="رقم هاتف المنزل :"></asp:Label>
                        <asp:Label ID="txtHomePhoneNo" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label51" runat="server" Text="رقم الهاتف الجوال :"></asp:Label>
                         <asp:Label ID="txtMobileNumber" runat="server"></asp:Label>    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label52" runat="server" Text="رقم هاتف العمل :"></asp:Label>
                        <asp:Label ID="txtWorkPhoneNumber" runat="server"></asp:Label> </div>
                </div>

            </div>
            <br />
               <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label53" runat="server" Text="اسم قريب للطالب 1 :"></asp:Label>
                       <asp:Label ID="txtNameStudentClose1" runat="server"></asp:Label> 
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label54" runat="server" Text="الهاتف :"></asp:Label>
                        <asp:Label ID="txtMobileClose1" runat="server"></asp:Label> </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label55" runat="server" Text="العنوان :"></asp:Label>
                        <asp:Label ID="txtAddressClose1" runat="server"></asp:Label></div>
                </div>

            </div>
            <br />
             <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">

                        <asp:Label ID="Label56" runat="server" Text="اسم قريب للطالب 2 :"></asp:Label>
                      <asp:Label ID="txtNameStudentClose" runat="server"></asp:Label>     
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label57" runat="server" Text="الهاتف :"></asp:Label>
                        <asp:Label ID="txtMobileClose" runat="server"></asp:Label></div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label58" runat="server" Text="العنوان :"></asp:Label>
                       <asp:Label ID="txtAddressClose" runat="server"></asp:Label> </div>
                </div>

            </div>
                                </div>
                          
                        </div>
                            </div>
                        <div class="tab-pane" id="tab5_3">
                        </div>
                        <div class="tab-pane" id="tab5_4">
                        </div>
                    

                </div>
            </div>
        </div>
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

    <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>

</asp:Content>

