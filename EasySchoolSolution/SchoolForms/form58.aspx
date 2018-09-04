<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form58.aspx.cs" Inherits="TahaniSchoolForms_form58" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 58</title>
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
                <h3>نموذج رقم (58)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : بيان تسليم واستلام أوراق إجابات اختبار</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ت.ع.ن-05-06)</h5>
                   </div> 
               </div>
               <div class="row" align="right" style="margin-right:30px;">
                   <div class="col-xs-4">
                       <h5>الفصل الدراسي: <asp:Literal ID="ltrSemester" runat="server" Text="...................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>لعام <asp:Literal ID="ltrYear" runat="server" Text="......................................"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>للصف <asp:Literal ID="ltrClass" runat="server" Text="............................"></asp:Literal></h5>
                   </div>
               </div>
               <div class="row table58">
                   <table>
                       <thead>
                           <tr>
                               <th rowspan="2" style="transform:rotate(-90deg)">اليوم والتاريخ</th>
                               <th rowspan="2" style="transform:rotate(-90deg)">المادة</th>
                               <th rowspan="2" style="transform:rotate(-90deg)">رقم اللجنة</th>
                               <th colspan="3">عدد أوراق الإجابة</th>
                               <th colspan="2">لجنة التحكم <br>والضبط  <br> استلام أوراق<br> الإجابة</th>
                               <th colspan="2">لجنة <br>التصحيح <br>والمراجعة</th>
                               <th colspan="2">لجنة الرصد <br>وإخراج <br>النتائج</th>
                               <th colspan="2">لجنة التحكم <br>والضبط <br>حفظ كشوف<br> الرصد وأوراق<br> الإجابة</th>
                               <th rowspan="2" style="transform:rotate(-90deg)">ملحوظات</th>
                           </tr>
                           <tr style="background:#EBF0EA;color:#000">
                               <th style="transform:rotate(-90deg);height:150px">عدد الحضور</th>
                               <th style="transform:rotate(-90deg)">عدد الغياب</th>
                               <th style="transform:rotate(-90deg)">المجموع</th>
                               <th style="transform:rotate(-90deg)">اسم المستلم</th>
                               <th style="transform:rotate(-90deg)">التوقيع</th>
                               <th style="transform:rotate(-90deg)">اسم المستلم</th>
                               <th style="transform:rotate(-90deg)">التوقيع</th>
                               <th style="transform:rotate(-90deg)">اسم المستلم</th>
                               <th style="transform:rotate(-90deg)">التوقيع</th>
                               <th style="transform:rotate(-90deg)">اسم المستلم</th>
                               <th style="transform:rotate(-90deg)">التوقيع</th>
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
            </div>
        </div>
    </form>
</body>
</html>
