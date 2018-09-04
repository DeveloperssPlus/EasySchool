<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form48.aspx.cs" Inherits="SchoolForms_form48" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 48</title>
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
            <h3>نموذج رقم (48)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : الخطة الفصلية لتوزيع المادة الدراسية</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ت.ع.ن-04-01)</h5>
               </div>
           </div>
           <div class="row sub-par">
               <div class="col-xs-6">
                   <h5>المرحلة الدراسية: <asp:Literal ID="Literal1" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-6">
                   <h5>المادة: <asp:Literal ID="Literal2" runat="server"></asp:Literal></h5>
               </div>
           </div>
           <div class="row sub-par">
               <div class="col-xs-6">
                   <h5>الصف: <asp:Literal ID="Literal3" runat="server"></asp:Literal></h5>
               </div>
           </div>
           <div class="row table48">
               <table>
                   <thead>
                       <tr>
                           <th>الأسبوع الأول</th>
                           <th>الأسبوع الثاني</th>
                           <th>الأسبوع الثالث</th>
                           <th>الأسبوع الرابع</th>
                           <th>الأسبوع الخامس</th>
                           <th>الأسبوع السادس</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr class="text-center">
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                       </tr>
                       <tr class="text-center">
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                       </tr>
                       <tr>
                           <th>الأسبوع السابع</th>
                           <th>الأسبوع الثامن</th>
                           <th>الأسبوع التاسع</th>
                           <th>الأسبوع العاشر</th>
                           <th>الأسبوع الحادي عشر</th>
                           <th>الأسبوع الثاني عشر</th>
                       </tr>
                       <tr class="text-center">
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                       </tr>
                       <tr class="text-center">
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                       </tr>
                       <tr>
                           <th>الأسبوع الثالث عشر</th>
                           <th>الأسبوع الرابع عشر</th>
                           <th>الأسبوع الخامس عشر</th>
                           <th>الأسبوع السادس عشر</th>
                           <th>الأسبوع السابع عشر</th>
                           <th>الأسبوع الثامن عشر</th>
                       </tr>
                       <tr class="text-center">
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                           <td>/ إلى /</td>
                       </tr>
                       <tr class="text-center">
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                           <td style="padding:30px"></td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="row end">
               <div class="col-xs-4">
                   <h5>معلم المادة: <asp:Literal ID="ltrTeacherArticle" runat="server"></asp:Literal></h5>
               </div>
               
               <div class="col-xs-4">
                   <h5>وكيل الشؤون التعليمية: <asp:Literal ID="ltrUndersecretaryEducationalAffairs" runat="server"></asp:Literal></h5>
               </div>
               
               <div class="col-xs-4">
                   <h5>قائد المدرسة: <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></h5>
               </div>
           </div>
        </div>
    </div>
    </form>
</body>
</html>
