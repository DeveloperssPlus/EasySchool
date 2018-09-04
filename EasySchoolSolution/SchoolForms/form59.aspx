<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form59.aspx.cs" Inherits="TahaniSchoolForms_form59" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 59</title>
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
                <h3>نموذج رقم (59)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : تعديل الدرجة</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ت.ع.ن-05-07)</h5>
                   </div> 
               </div>
               <div class="row" align="right" style="margin-right:30px;">
                   <div class="col-xs-12">
                       <h5>المكرم/ قائد المدرسة السلام عليكم ورحمة الله وبركاته</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>آمل التكرم بالموافقة على تعديل الدرجة/ الدرجات للطلاب التالية أسماؤهم ,, مع جزيل الشكر.</h5>
                   </div>
               </div>
               <div class="row table4-1">
                   <table>
                       <tr style="height:50px">
                           <th>الاسم</th>
                           <td style="background:#EBF0EA">
                               <asp:Literal ID="ltrTeacherName" runat="server"></asp:Literal></td>
                           <th>التاريخ</th>
                           <td style="background:#EBF0EA">
                               <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                           <th>التوقيع</th>
                           <td style="background:#EBF0EA"></td>
                       </tr>
                   </table>
               </div>
               <div class="row table59">
                   <table>
                       <thead>
                           <tr>
                               <th rowspan="2">م</th>
                               <th rowspan="2">المادة</th>
                               <th rowspan="2">اسم الطالب</th>
                               <th rowspan="2">الصف</th>
                               <th colspan="2">الدرجة</th>
                               <th rowspan="2">سبب التعديل</th>
                               <th colspan="2">مسجل المعلومات</th>
                           </tr>
                           <tr>
                               <th>قبل التعديل</th>
                               <th>بعد التعديل</th>
                               <th>تاريخ التعديل</th>
                               <th>التوقيع</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
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
                   <div class="col-xs-4">
                       <h5>رأي قائد المدرسة / </h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>الموافقة</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>عدم الموافقة</h5>
                   </div>
               </div>
               <div class="row table4-1">
                   <table>
                       <tr style="height:50px">
                           <th>الاسم</th>
                           <td style="background:#EBF0EA">
                               <asp:Literal ID="ltrTeacherNameSure" runat="server"></asp:Literal></td>
                           <th>التاريخ</th>
                           <td style="background:#EBF0EA">
                               <asp:Literal ID="ltrDateSure" runat="server"></asp:Literal></td>
                           <th>التوقيع</th>
                           <td style="background:#EBF0EA"></td>
                       </tr>
                   </table>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
