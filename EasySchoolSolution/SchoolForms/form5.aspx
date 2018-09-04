<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form5.aspx.cs" Inherits="SchoolForms_form5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 5</title>
    
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
                <h3>نموذج رقم (5)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                   <div class="col-xs-6">
                       <h5>اسم النموذج : السجل الأكاديمي   </h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-01-05)</h5>
                   </div>
               </div>
               <div class="row table5">
                   <table>
                       <tr>
                           <th>المدرسة</th>
                           <td colspan="9"><asp:Literal ID="ltrSchName" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <th>اسم الطالب</th>
                           <td colspan="3"></td>
                           <th colspan="2">الجنسية</th>
                           <td style="border-left:none" colspan="3"><h5>سعودي</h5></td>
                           <td style="border-right:none" colspan="3"><h5>غير سعودي</h5></td>
                       </tr>
                       <tr>
                           <th colspan="4" rowspan="2">العام الدراسي :  &shy; &shy; 14 / &shy; &shy; 14 هــ</th>
                           <th rowspan="2" colspan="2">التخصص</th>
                           <td style="border-bottom:none" colspan="4"><h5>العلوم الطبيعية</h5></td>
                       </tr>
                       <tr>
                           <td style="border-top:none; background: #EBF0EA" colspan="4"><h5>العلوم الانسانية</h5></td>
                       </tr>
                       <tr>
                           <th>الرقم الأكاديمي</th>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                           <td style="width:70px"></td>
                       </tr>
                       <tr>
                           <th>رقم الجوال</th>
                           <td colspan="5"></td>
                           <th colspan="2">رقم المنزل</th>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row end" style="color:#467553;font-size:15px;">
                   <h4>محتوى السجل الأكاديمي</h4>
               </div>
               <div class="row table5">
                   <table>
                       <tr>
                           <th>الفصل الدراسي</th>
                           <td colspan="8"><asp:Literal ID="ltrSemester" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td></td>
                           <th>الأول</th>
                           <th>الثاني</th>
                           <th>الثالث</th>
                           <th>الرابع</th>
                           <th>الخامس</th>
                           <th>السادس</th>
                           <th>السابع</th>
                           <th>الثامن</th>
                       </tr>
                       <tr>
                           <th>العام الدراسي</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                           <th>14 هـــ</th>
                       </tr>
                       <tr>
                           <th>الساعات المسجلة</th>
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
                           <th>الساعات المكتبة</th>
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
                           <th>المعدل </th>
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
                           <th>مجموع الساعات</th>
                           <td></td>
                           <th colspan="7">متوقع التخرج في : &shy;&shy;&shy;&shy;&shy; سنتان ونصف, &shy;&shy;&shy;&shy;&shy; ثلاث سنوات, &shy;&shy;&shy;&shy;&shy; أكثر من ذلك</th>
                       </tr>
                   </table>
               </div>
               <div class="row end">
                   <div class="col-xs-12"><h4>المرشد الأكاديمي :<asp:Literal ID="ltrAcademic" runat="server">.............</asp:Literal> </h4></div>
                   <div class="col-xs-6">
                       <h4>وكيل شؤون الطلاب:<asp:Literal ID="ltrAgent" runat="server">.............</asp:Literal></h4>
                   </div>
                   <div class="col-xs-6">
                       <h4>قائد المدرسة:<asp:Literal ID="ltrLeader" runat="server">.............</asp:Literal></h4>
                   </div>
               </div>
               <div class="row end" style="color:#467553;font-size:15px;margin-top:150px">
                   <h4>الخطط والبرامج الدراسية لنظام المقررات في التعليم الثانوي</h4>
               </div>
               <div class="item">
                   <h5>خطة دراسية مقترحة لطلاب العلوم الطبيعية</h5>
               </div>
               <div class="row table5-1">
                   <table>
                       <tr>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي الأول</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي الثاني</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي الثالث</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي الرابع</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي الخامس</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:120px;font-weight:bold;margin:0">الفصل الدراسي السادس</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="item">
                   <h5>خطة دراسية مقترحة لطلاب العلوم الانسانية</h5>
               </div>
               <div class="row table5-1">
                   <table>
                       <tr>
                           <th rowspan="7" style="width:2px"><h5 style="transform: rotate(-90deg);width:100px;font-weight:bold;">الفصل الدراسي الأول</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:2px"><h5 style="transform: rotate(-90deg);width:100px;font-weight:bold;">الفصل الدراسي الثاني</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:2px"><h5 style="transform: rotate(-90deg);width:100px;font-weight:bold;">الفصل الدراسي الثالث</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:110px;font-weight:bold;margin:0">الفصل الدراسي الرابع</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:110px;font-weight:bold;margin:0">الفصل الدراسي الخامس</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                           <th rowspan="7" style="width:10px;padding:0"><h5 style="transform: rotate(-90deg);width:110px;font-weight:bold;margin:0">الفصل الدراسي السادس</h5></th>
                           <th style="width:3px;">1</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <th>2</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <th>3</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <th>4</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <th>5</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <th>6</th>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <th>7</th>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="item" style="margin-top:400px">
                   <h5>السجل الدراسي للطالب</h5>
               </div>
               <div class="row table5">
                   <table>
                       <tr>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الأول &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الثاني &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="3" style="font-size:15px;font-weight:300">الفصل الدراسي الصيفي &shy;  &shy;  &shy; 14 هــ</td>
                       </tr>
                       <tr>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                       </tr>
                       <tr>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>التقدير</th>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row table5" style="margin-top:50px">
                   <table>
                       <tr>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الأول &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الثاني &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="3" style="font-size:15px;font-weight:300">الفصل الدراسي الصيفي &shy;  &shy;  &shy; 14 هــ</td>
                       </tr>
                       <tr>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                       </tr>
                       <tr>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>التقدير</th>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row table5" style="margin-top:150px">
                   <table>
                       <tr>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الأول &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الثاني &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="3" style="font-size:15px;font-weight:300">الفصل الدراسي الصيفي &shy;  &shy;  &shy; 14 هــ</td>
                       </tr>
                       <tr>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                       </tr>
                       <tr>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>التقدير</th>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row table5" style="margin-top:50px">
                   <table>
                       <tr>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الأول &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="4" style="font-size:15px;font-weight:300">الفصل الدراسي الثاني &shy;  &shy;  &shy; 14 هــ</td>
                           <td colspan="3" style="font-size:15px;font-weight:300">الفصل الدراسي الصيفي &shy;  &shy;  &shy; 14 هــ</td>
                       </tr>
                       <tr>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                           <th>اسم المقرر</th>
                           <th>الدرجة</th>
                           <th>التقرير</th>
                       </tr>
                       <tr>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>1</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>2</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>3</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>4</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>5</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>6</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>7</th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>المعدل</th>
                           <td></td>
                           <td>التقدير</td>
                           <td></td>
                           <th>التقدير</th>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               
            </div>
        </div>
    </form>
</body>
</html>
