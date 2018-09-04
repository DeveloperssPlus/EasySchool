<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form4.aspx.cs" Inherits="SchoolForms_form4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 4</title>
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
            <h3>نموذج رقم (4)</h3>
       </div>
       <div class="container content" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : نموذج تسجيل طالب</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج: (و.ط.ع.ن-01-04)</h5>
               </div>
           </div>
            <div class="row sub-par">
               <div class="col-xs-6">
                   <h5>العام الدراسي:  &shy; &shy; &shy; &shy; 14 <asp:Literal ID="ltrSchoolYear" runat="server">/.....</asp:Literal> 14 هـــ</h5>
               </div>
               <div class="col-xs-6">
                   <h5>الفصل الدراسي : <asp:Literal ID="ltrSemester" runat="server">......</asp:Literal></h5>
                  
               </div>
           </div>
           <div class="row table4-1">
               <table>
                   <tr>
                       <th>اسم الطالب</th>
                       <th><asp:Literal ID="ltrStuName" runat="server"></asp:Literal></th>
                       <th>التخصص</th>
                       <th><asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></th>
                   </tr>
               </table>
           </div>
           <div class="row table4-2">
               <table>
                 <tr>
                       <th>الرقم</th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                       <th></th>
                   </tr>
               </table>
           </div>
           <div class="row table4-3">
               <table>
                   <tr class="text-center">
                       <th>عدد الساعات المسجلة</th>
                       <th colspan="7"><asp:Literal ID="ltrHoureNo" runat="server"></asp:Literal></th>
                   </tr>
               </table>
           </div>
           <div class="row table4-4">
               <table>
                     <thead>
                       <tr>
                           <th rowspan="5">م</th>
                           <th rowspan="5">اسم المقرر</th>
                           <th colspan="10">أيام الدراسة الأسبوعية</th>
                           <th rowspan="5">معلم المقرر</th>
                           <th rowspan="5">توقيع المعلم</th>
                        <tr>
                        <tr>
                           <th colspan="2">الأحد</th>
                                   <th colspan="2">الاثنين</th>
                                   <th colspan="2">الثلاثاء</th>
                                   <th colspan="2">الأربعاء</th>
                                   <th colspan="2">الخميس</th>        
                        </tr>
                               <tr>
                                   <th>من</th>
                                   <th>إلى</th>
                                   <th>من</th>
                                   <th>إلى</th>
                                   <th>من</th>
                                   <th>إلى</th>
                                   <th>من</th>
                                   <th>إلى</th>
                                   <th>من</th>
                                   <th>إلى</th>
                               </tr>
                           </tr>   
                       </tr>
                   </thead>
                   <tbody class="text-center">
                       <tr >
                        
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>5</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>6</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>7</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td>8</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
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
                           <td colspan="14" style="text-align:right">مجموع الساعات المعتمدة : </td>
                       </tr>
                       <tr>
                           <td colspan="14" style="text-align:right">توقيع الطالب : </td>
                       </tr>
                       <tr>
                           <td colspan="14" style="text-align:right">توقيع المرشد الأكاديمي : </td>
                       </tr>
                       <tr>
                           <td colspan="14" style="text-align:right">معتمد : توقيع وكيل شؤون الطلاب</td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="row end">
               <div class="col-xs-4">
                   <h5>* نسخة لولي أمر الطالب</h5>
               </div>
           </div>
       </div>
   </div>
    </form>
</body>
</html>
