<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeRecord.aspx.cs" Inherits="Manager_jhj" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:PlaceHolder ID="placeHolderError" runat="server" Visible="false">
        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div>
                    <span class="noty_text">
                        <div class="alert alert-danger">
                            <p>
                                الموظف غير موجود. الرجاء التحقق من رقم الهوية
                            </p>
                            <div class="noty_buttons">
                                <asp:Button ID="btnok2" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                            </div>
                        </div>
                    </span>
                </div>

            </li>
        </ul>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">
        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div>
                    <span class="noty_text">
                        <div class="alert alert-success">
                            <asp:Literal ID="lblSuccess" runat="server"></asp:Literal>
                            <div class="noty_buttons">
                                <asp:HiddenField ID="OutId" runat="server" />
                                <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                            </div>
                        </div>
                    </span>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>

    <div class="row">
        <asp:Panel runat="server" DefaultButton="btnSearch">
            <div class="panel">
                <div class="panel-header bg-aero">
                    <h3>البحث باستخدام <i class="fa fa-search faa-wrench animated"></i><strong>رقم الهوية </strong></h3>
                </div>
                <div class="panel-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <div class="col-md-4">
                                        رقم الهوية:
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtIdentityNo" class="form-control form-white" runat="server" data-mask="9999999999" placeholder="0000000000"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>

                            <div class="col-md-6 ">
                                <div class="row">
                                    <div class="col-md-4">
                                        اسم الموظف:
                                    </div>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="lstEmpName" runat="server" CssClass="chosen-select AutherDrop form-control form-white" DataTextField="Type" DataValueField="Id">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                        <asp:Button ID="btnSearch" runat="server" class="btn btn-primary btn-embossed" ValidationGroup="IdentityNo" Text="بحث" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>

    </div>

    <br />
    <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>

    <div class="row">

        <div class="panel">
            <div class="panel-content">
                <div class="row">
                    <div class="col-lg-5">
                        اسم الموظف:
                             <asp:Label ID="lblEmpName" runat="server" Visible="false" Text="Label" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-4">
                        المسمى الوظيفي:
                             <asp:Label ID="lblJobName" runat="server" Text="Label" Visible="false" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-3">

                        <asp:HyperLink ID="lnkEdit" runat="server" Visible="false" CssClass="btn btn-success">تعديل بيانات الموظف</asp:HyperLink>
                        </div>
                </div>
                <br />
                <div class="nav-tabs2">
                    <ul class="nav nav-tabs nav-red">

                        <li class="active"><a aria-expanded="true" href="#tab5_1" data-toggle="tab"><i class="fa fa-info"></i>المعلومات الشخصية</a></li>
                        <li><a aria-expanded="false" href="#tab5_2" data-toggle="tab"><i class="icon-home"></i>الحضور</a></li>
                        <li><a aria-expanded="false" href="#tab5_3" data-toggle="tab"><i class="fa fa-table"></i>جدول الموظف</a></li>

                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" id="tab5_2">

                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>عرض الغياب</h4>
                                    </div>
                                    <div class="panel-body">
                                        <asp:ListView ID="lstAbsences" runat="server">
                                            <LayoutTemplate>
                                                <table class="table table-hover dataTable" id="table-editable">
                                                    <thead>
                                                        <th>التاريخ</th>
                                                        <th>السبب</th>
                                                    </thead>
                                                    <tr id="itemPlaceholder" runat="server"></tr>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Date","{0:d}") %></td>
                                                    <td><%# ConstantManager.getConstant((int)Eval("type")) %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                <h4 style="text-align: center">لا يوجد غياب حتى الآن</h4>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>عرض التأخير</h4>
                                    </div>
                                    <div class="panel-body">
                                        <asp:ListView ID="lstLateness" runat="server">
                                            <LayoutTemplate>
                                                <table class="table table-hover dataTable" id="table-editable">
                                                    <thead>
                                                        <th>التاريخ</th>
                                                        <th>النوع</th>
                                                        <th>مدة التأخر</th>
                                                    </thead>
                                                    <tr id="itemPlaceholder" runat="server"></tr>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Date","{0:d}") %></td>
                                                    <td><%# Eval("Type") %></td>
                                                    <td><%# Eval("Amount") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                <h4 style="text-align: center">لا يوجد تأخر حتى الآن</h4>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h4>عرض الاستئذان</h4>
                                    </div>
                                    <div class="panel-body">
                                        <asp:ListView ID="lstPermission" runat="server">
                                            <LayoutTemplate>
                                                <table class="table table-hover dataTable" id="table-editable">
                                                    <thead>
                                                        <th>التاريخ</th>
                                                        <th>من الساعة</th>
                                                        <th>الى الساعة</th>
                                                        <th>السبب</th>
                                                    </thead>
                                                    <tr id="itemPlaceholder" runat="server"></tr>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Date","{0:d}") %></td>
                                                    <td><%# Eval("TimeFrom") %></td>
                                                    <td><%# Eval("TimeTo") %></td>
                                                    <td><%#  Eval("Reason") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                <h4 style="text-align: center">لا يوجد استئذان حتى الآن</h4>
                                            </EmptyDataTemplate>
                                        </asp:ListView>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="tab-pane  active" id="tab5_1">
                                <div class="panel">
                                    <div class="panel-body">


                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label3" runat="server" Text="رقم الهوية :"></asp:Label>
                                                    <asp:Label ID="txtIdentityNumber" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="lblSource" runat="server" Text="الاسم :"></asp:Label>
                                                    <asp:Label ID="txtName" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label2" runat="server" Text="الجنسية :"></asp:Label>
                                                    <asp:Label ID="txtNationality" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                        </div>





                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label1" runat="server" Text="تاريخ التعيين :"></asp:Label>
                                                    <asp:Label ID="txtIdentityDate" runat="server" ForeColor="#3399ff"></asp:Label>
                                              
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label4" runat="server" Text="المؤهل :"></asp:Label>
                                                    <asp:Label ID="txtQualification" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label5" runat="server" Text="تاريخ المؤهل :"></asp:Label>
                                                    <asp:Label ID="txtYearQualification" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label6" runat="server" Text="التخصص :"></asp:Label>
                                                    <asp:Label ID="txtSpecification" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label7" runat="server" Text="تاريخ بداية العمل في الوزارة :"></asp:Label>
                                                    <asp:Label ID="txtJobStartMinistry" runat="server" ForeColor="#3399ff"></asp:Label>
                                            
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label8" runat="server" Text="تاريخ بداية العمل في المدرسة :"></asp:Label>

                                                    <asp:Label ID="txtJobStartSchool" runat="server" ForeColor="#3399ff"></asp:Label>
                                           
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label9" runat="server" Text="تاريخ بداية عمل الوظيفة الحالية"></asp:Label>
                                                    <asp:Label ID="txtJobStartCurrent" runat="server" ForeColor="#3399ff"></asp:Label>
                                          
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label10" runat="server" Text="المستوى :"></asp:Label>
                                                    <asp:Label ID="txtLevel" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label11" runat="server" Text="الدرجة :"></asp:Label>
                                                    <asp:Label ID="txtDegree" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label12" runat="server" Text="هاتف المنزل :"></asp:Label>
                                                    <asp:Label ID="txtPhoneHome" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label13" runat="server" Text="الهاتف المحمول :"></asp:Label>
                                                    <asp:Label ID="txtMobile" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" Text="البريد الإلكتروني :"></asp:Label>
                                                    <asp:Label ID="txtEmail" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label ID="Label15" runat="server" Text="ملاحظات :"></asp:Label>
                                                    <asp:Label ID="txtComments" runat="server" ForeColor="#3399ff"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <asp:PlaceHolder ID="placeEmpInfo" runat="server" Visible="false">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label16" runat="server" Text="عدد الأبناء :"></asp:Label>
                                                                <asp:Label ID="txtsons" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label17" runat="server" Text="الابناء الأقل من 6 :"></asp:Label>
                                                                <asp:Label ID="txtsonLess6" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label18" runat="server" Text="الأبناء الاقل من 24  :"></asp:Label>
                                                                <asp:Label ID="txtsonles24" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label19" runat="server" Text="الأبناء الاكبر من 24 :"></asp:Label>
                                                                <asp:Label ID="txtsonold24" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label24" runat="server" Text="تاريخ الميلاد :"></asp:Label>
                                                                <asp:Label ID="txtBod" runat="server" ForeColor="#3399ff"></asp:Label>
                                                             
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label21" runat="server" Text="صندوق البريد  :"></asp:Label>
                                                                <asp:Label ID="txtMailBox" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label25" runat="server" Text="عنوان المنزل :"></asp:Label>
                                                                <asp:Label ID="txtaddres" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label20" runat="server" Text="postal card :"></asp:Label>
                                                                <asp:Label ID="txtpostCard" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label22" runat="server" Text="الحالة الإجتماعية :"></asp:Label>
                                                                <asp:Label ID="txtstate" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <asp:Label ID="Label23" runat="server" Text="مكان الولادة :"></asp:Label>
                                                                <asp:Label ID="txtbirthLocation" runat="server" ForeColor="#3399ff"></asp:Label>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                        </asp:PlaceHolder>
                                        <br />
                                     
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab5_3">
                    </div>
                </div>

            </div>
        </div>
    </div>

    <%-- </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>

</asp:Content>

