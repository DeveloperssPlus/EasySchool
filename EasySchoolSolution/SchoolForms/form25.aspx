<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form25.aspx.cs" Inherits="TahaniSchoolForms_form25" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 25</title>
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
                <h3>نموذج رقم (25)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                   <div class="col-xs-6">
                       <h5>اسم النموذج : كشف حضور وغياب طلاب المدرسة</h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-03-03)</h5>
                   </div>
               </div>
               <div class="row table25">
                   <table>
                       <thead>
                           <tr>
                               <th colspan="4">الصف</th>
                               <th style="width:150px">
                                   <asp:Literal ID="ltrclassRoom" runat="server"></asp:Literal></th>
                               <th colspan="2">اليوم</th>
                               <th>
                                   <asp:Literal ID="ltrDay" runat="server"></asp:Literal></th>
                               <th colspan="2">التاريخ</th>
                               
                               <th colspan="2">
                                   <asp:Literal ID="ltrDate" runat="server" Text="/ &shy; &shy; / &shy; &shy;"></asp:Literal> 14 هــ
                               </th>
                           </tr>
                           <tr>
                               <th rowspan="2" style="transform : rotate(-90deg)">الفصل</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">المسجلون</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">الحضور</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">الغياب</th>
                               <th rowspan="2">الاسم</th>
                               <th colspan="2">نوع الغياب</th>
                               <th rowspan="2">رقم الهاتف</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">الزمن</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">المجيب</th>
                               <th rowspan="2">سبب الغياب</th>
                               <th rowspan="2" style="transform : rotate(-90deg)">توقيع المعلم</th>
                           </tr>
                           <tr>
                               <th style="transform : rotate(-90deg);height:60px">بعذر</th>
                               <th style="transform : rotate(-90deg);height:60px">بدون عذر</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td rowspan="4">1</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td rowspan="4">2</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td rowspan="4">3</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td rowspan="4">4</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td rowspan="4">5</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td rowspan="4">6</td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td rowspan="4"></td>
                               <td>1)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4)</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row end">
                   <div class="col-xs-6">
                       <h5>اسم المسؤول / <asp:Literal ID="ltrDirectOfficialName" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>التوقيع / </h5>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
