<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form30.aspx.cs" Inherits="SchoolForms_form30" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 30</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
   <script src="../assets/global/arabicNumbers.js"></script>
        <style type="text/css" media="print">
    @page 
    {
        size:  auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }

    html
    {
        background-color: #FFFFFF; 
        margin: 0px;  /* this affects the margin on the html before sending to printer */
    }

    body
    {
        /*border: solid 1px blue ;*/
        margin: 10mm 15mm 10mm 15mm; /* margin you want for the content */
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row title">
            <h3>نموذج رقم (30)</h3>
        </div>
        <div class="container content" align="center">
            <div class="row sub-title">
                <div class="col-xs-6">
                    <h5>اسم النموذج : استمارة إبلاغ عن حالة طالب</h5>
                </div>
                <div class="col-xs-6">
                    <h5>رمز النموذج : (و.ط.ع.ن-04-02)</h5>
               </div>
            </div>
            <div class="row fo7 text-right">
                <div class="row">
                    <div class="col-xs-12">
                        <h5>المكرم الأستاذ / <asp:Literal ID="ltrTeacherName" runat="server">...........................................</asp:Literal>وفقه الله.</h5>
                    </div>
               </div> 
                <div class="row">
                    <div class="col-xs-12">
                        <h5>السلام عليكم ورحمة الله وبركاته  .. وبعد:</h5>
                   </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <h5>يوضح الجدول أدناه الحالة / الحالات الصحية للطالب / الطلاب , والتي تتطلب منكم التعامل معها حسب ما هو موضح .</h5>
                    </div>
               </div>
            </div>
            <div class="row table30"> 
                <table style="width:80%">
                    <tr>
                        <th class="text-center" style="width:5%;font-size:15px">م</th>
                        <th class="text-center" style="font-size:15px">اسم الطالب</th>
                        <th class="text-center" ><h5 style="transform:rotate(-90deg);font-size:15px">الصف</h5></th>
                        <th class="text-center" style="font-size:15px">وصف الحالة</th>
                        <th class="text-center" style="font-size:15px">الاجراء المطلوب عند وقوع الحالة</th>
                        <th class="text-center" style="font-size:15px">التوصيات</th>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">1</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">2</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">3</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">4</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">5</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">6</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">7</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">8</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">9</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">10</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="font-size:15px" class="text-center">11</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th style="font-size:15px" colspan="3" >المرشد الطلابي</th>
                        <th style="background-color: #D2DED2;font-size:15px" class="text-center">
                            <asp:Literal ID="ltrSchoolAdvisor" runat="server"></asp:Literal></th>
                        <th style="font-size:15px" colspan="1">قائد المدرسة</th>
                        <th style="background-color: #D2DED2;font-size:15px" class="text-center">
                            <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></th>
                    </tr>
                </table>
            </div>
        </div>
   </div>
    </form>
    
</body>
</html>
