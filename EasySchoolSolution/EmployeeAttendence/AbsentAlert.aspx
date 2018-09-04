<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AbsentAlert.aspx.cs" Inherits="EmployeeAttendence_AbsentAlert" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
     <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>  اضافة رد على مساءلة الغياب </strong></h4>
                </div>
                <div class="modal-body">
                    <p><strong>  تم اضافة الرد على مساءلة الغياب بنجاح</strong><br /> هل تريد الرجوع لسجل الغياب؟</p>
                    
                </div>
                <div class="modal-footer">
                   
                    <a  href="AbsenceDisplay.aspx" class="btn btn-default btn-embossed" >نعم</a>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">لا</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">تسجيل مساءلة غياب</div>
        <div class="panel-body">
            <div class="continar">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="اسم الموظف :"></asp:Label>
                            <asp:Label ID="lblEmpName" runat="server" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="السجل المدني :"></asp:Label>
                            <asp:Label ID="lblIdentity" runat="server" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="مدة الغياب :"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="من :"></asp:Label>
                            <asp:Label ID="lblfrom" runat="server" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="إلى :"></asp:Label>
                            <asp:Label ID="lblto" runat="server" ForeColor="#3399ff"></asp:Label>
                        </div>
                    </div>
                </div>

                  <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label10" runat="server" Text="عدد أيام الغياب :"></asp:Label>
                            <asp:Label ID="lblCount" runat="server" ForeColor="#3399ff"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text=" أيام  :"></asp:Label>

                        </div>
                    </div>
                  
                </div>
                <br />
                <asp:Label ID="Label6" runat="server">
                 <strong>رد الموظف :</strong>
                </asp:Label>
                <br />
                <br />
                <div class="row">
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <asp:Label ID="Label9" runat="server" Text="تاريخ رد الموظف :"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtDateReplayEmp" CssClass="form-control form-white col-md-8" runat="server" placeholder="يوم/شهر/سنة"> </asp:TextBox>
                                <span>
                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateReplayEmp" runat="server"></obout:Calendar>
                                </span>
                                <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDateReplayEmp"
                                    Display="Dynamic" EnableClientScript="true" runat="server"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDateReplayEmp" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-2">
                                <asp:Label ID="Label7" runat="server" Text="سبب الغياب :"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtReson" CssClass="form-control form-white col-md-8" col="20" placeholder="سبب الغياب" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>

                        </div>
                    </div>

                </div>

            </div>
            <br />
            <br />
            <div class="row">
                <div class="rows">
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server">
                            <strong>قرار مدير المدرسة :</strong>
                        </asp:Label>


                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-2">
                            <asp:Label ID="Label11" runat="server" Text="تاريخ قرار مدير المدرسة :"></asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtDateReplay" CssClass="form-control form-white col-md-8" runat="server" placeholder="يوم/شهر/سنة"> </asp:TextBox>
                            <span>
                                <obout:Calendar ID="Calendar2" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateReplay" runat="server"></obout:Calendar>
                            </span>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtDateReplay"
                                Display="Dynamic" EnableClientScript="true" runat="server"
                                ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                            </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDateReplay" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-lg-11">
                    <asp:RadioButtonList ID="lstDecition" runat="server">
                        <asp:ListItem Value="مرضية">  تحسب له اجازة مرضية&nbsp;</asp:ListItem>
                        <asp:ListItem Value="اضطرارية">  يحتسب غيابه من رصيد الاجازات الاضطرارية لقبول عذره إذا كان رصيده يسمح و إلا يحسم عليه &nbsp; </asp:ListItem>
                        <asp:ListItem Selected="True" Value="حسم">يعتمد الحسم لعدم قبول عذره    &nbsp; </asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <br />
            <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" Text="تسجيل" OnClick="btnAdd_Click" />
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
           
    <script type="text/javascript">
    
        function prepareFrame(src1) {
            var ff=document.getElementById('newframe');
            if(ff != null)
                ff.parentNode.removeChild(ff);

            var ifrm = document.createElement("iframe");
            ifrm.setAttribute("id", "newframe");
            ifrm.setAttribute("src", src1);
            ifrm.style = "Display:none;"

            ifrm.style.width = "640px";
            ifrm.style.height = "480px";
            document.body.appendChild(ifrm);

            document.getElementById('newframe').contentWindow.print();
        }

    </script>

</asp:Content>

