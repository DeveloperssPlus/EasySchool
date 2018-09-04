<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form17.aspx.cs" Inherits="SchoolForms_form18" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 17</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="../assets/global/arabicNumbers.js"></script>
    <style type="text/css" media="print">
        @page {
            size: auto; /* auto is the initial value */
            margin: 0mm; /* this affects the margin in the printer settings */
        }

        html {
            background-color: #FFFFFF;
            margin: 0px; /* this affects the margin on the html before sending to printer */
        }

        body {
            /*border: solid 1px blue ;*/
            margin: 10mm 15mm 10mm 15mm; /* margin you want for the content */
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row title">
            <h2>نموذج رقم (17)</h2>
        </div>
        <div class="container content" align="center">
            <div class="row sub-title">
                <div class="col-xs-6">
                    <h5>اسم النموذج : سجل العمل الرسمي</h5>
                </div>
                <div class="col-xs-6">
                    <h5>رمز النموذج : (و.م.ع.ن-02-01)</h5>
                </div>
            </div>
            <div class="sub-par">
                <div class="row">
                    <div class="col-xs-6">
                        <h5>سجل دوام الموظفين</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج :  </h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <h5>سجل دوام الموظفين للفصل الدراسي :</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>الفصل :
                            <asp:Literal ID="ltrSemester" runat="server">..............</asp:Literal></h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <h5>يوم :
                            <asp:Literal ID="ltrDay" runat="server">..............</asp:Literal></h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>الموافق : 
                            <asp:Literal ID="ltrDate" runat="server">... / </asp:Literal>
                            <asp:Literal ID="ltrDate1" runat="server">... /</asp:Literal>...</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6 pull-xs-6">
                        <h5>الحاضرون قبل بداية الاصطفاف الصباحي</h5>
                    </div>
                </div>
            </div>

            <div class="row table17">
                <table style="width: 80%">
                    <table>
                        <thead>
                            <tr>
                                <th class="text-center" style="font-size: 15px">م</th>
                                <th class="text-center" style="font-size: 15px">اسم الموظف الرباعي</th>
                                <th class="text-center" style="font-size: 15px">الوظيفة</th>
                                <th class="text-center" style="font-size: 15px">وقت الحضور</th>
                                <th class="text-center" style="font-size: 15px">التوقيع</th>
                                <th class="text-center" style="font-size: 15px">وقت الخروج</th>
                                <th class="text-center" style="font-size: 15px">التوقيع</th>
                                <th class="text-center" style="font-size: 15px">م</th>
                                <th class="text-center" style="font-size: 15px">اسم الموظف الرباعي</th>
                                <th class="text-center" style="font-size: 15px">الوظيفة</th>
                                <th class="text-center" style="font-size: 15px">وقت الحضور</th>
                                <th class="text-center" style="font-size: 15px">التوقيع</th>
                                <th class="text-center" style="font-size: 15px">وقت الخروج</th>
                                <th class="text-center" style="font-size: 15px">التوقيع</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center" style="font-size: 15px; font-weight: bold">1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">3</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">3</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">4</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">4</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">5</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">5</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">6</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td style="font-size: 15px; font-weight: bold">6</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">7</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">الموظفون الغائبون</td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">8</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">م</td>
                                <td colspan="3" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">اسم الموظف رباعي</td>
                                <td colspan="2" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">الوظيفة</td>
                                <td colspan="1" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">سبب الغياب</td>


                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">9</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>

                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center">1</td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>

                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">10</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center">2</td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">11</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center">3</td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">12</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center">4</td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">13</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center">5</td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">14</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">المعلم المناوب بداية ونهاية العمل</td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">15</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">اسم المعلم و توقيعه</td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">16</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">17</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">المعلم المناوب بداية ونهاية العمل</td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">18</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="7" style="background-color: #658C6F; color: white; font-size: 15px; font-weight: bold" class="text-center">اسم المعلم و توقيعه</td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">19</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center"></td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                            <tr>
                                <td style="font-size: 15px; font-weight: bold">20</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td colspan="1" style="font-size: 15px; font-weight: bold" class="text-center"></td>
                                <td colspan="3"></td>
                                <td colspan="2"></td>
                                <td colspan="1"></td>
                            </tr>
                        </tbody>
                    </table>
            </div>
        </div>
    </div>



    <div class="row form17">
        <div class="col-xs-12">
            <h5>ملاحظة : يغلق الدوام مرتين في الفترة الأولى بعد بداية البرنامج الصباحي مباشرة وفي المرة الثانية عند بداية الحصة
الأولى مباشرة</h5>
        </div>
    </div>




</body>
</html>
