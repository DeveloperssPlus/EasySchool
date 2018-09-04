<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form53.aspx.cs" Inherits="TahaniSchoolForms_form53" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 53</title>
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
                <h3>نموذج رقم (53)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : مهام لجان الاختبارات الفرعية</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج: (و.ت.ع.ن-03-01)</h5>
                   </div> 
               </div>
               <div class="row" align="right" style="margin-right:50px;">
                   <div class="row">
                       <div class="col-xs-3">
                           
                           <h5>العام الدراسي <br/> <asp:Literal ID="ltrYear" runat="server" Text="___ / ___"></asp:Literal> هــ </h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>الدور <br/>
                               <asp:CheckBox ID="CheckBox1" runat="server" Text="الأول" />
                               <asp:CheckBox ID="CheckBox2" runat="server" Text="الثاني"/>
                           </h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>الفصل الدراسي <br> 
                               <asp:CheckBox ID="CheckBox3" runat="server" Text="الأول" />
                               <asp:CheckBox ID="CheckBox4" runat="server" Text="الثاني"/>
                           </h5>
                       </div>
                   </div>
                   <div class="row table25">
                       <table>
                           <thead>
                               <tr>
                                   <th colspan="5">لجنة التحكم والضبط</th>
                               </tr>
                               <tr>
                                   <th>م</th>
                                   <th>الاسم</th>
                                   <th>الصفة</th>
                                   <th>المهمة</th>
                                   <th>التوقيع</th>
                               </tr>
                           </thead>
                           <tbody class="text-center">
                               <tr>
                                   <td>1</td>
                                   <td></td>
                                   <td>رئيس</td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>2</td>
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
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row table25">
                       <table>
                           <thead>
                               <tr>
                                   <th colspan="5">لجنة الإشراف والملاحظة</th>
                               </tr>
                               <tr>
                                   <th>م</th>
                                   <th>الاسم</th>
                                   <th>الصفة</th>
                                   <th>المهمة</th>
                                   <th>التوقيع</th>
                               </tr>
                           </thead>
                           <tbody class="text-center">
                               <tr>
                                   <td>1</td>
                                   <td></td>
                                   <td>رئيس</td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>2</td>
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
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row table25">
                       <table>
                           <thead>
                               <tr>
                                   <th colspan="5">لجنة التصحيح والمراجعة</th>
                               </tr>
                               <tr>
                                   <th>م</th>
                                   <th>الاسم</th>
                                   <th>الصفة</th>
                                   <th>المهمة</th>
                                   <th>التوقيع</th>
                               </tr>
                           </thead>
                           <tbody class="text-center">
                               <tr>
                                   <td>1</td>
                                   <td></td>
                                   <td>رئيس</td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>2</td>
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
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row table25">
                       <table>
                           <thead>
                               <tr>
                                   <th colspan="5">لجنة الرصد و إخراج النتائج</th>
                               </tr>
                               <tr>
                                   <th>م</th>
                                   <th>الاسم</th>
                                   <th>الصفة</th>
                                   <th>المهمة</th>
                                   <th>التوقيع</th>
                               </tr>
                           </thead>
                           <tbody class="text-center">
                               <tr>
                                   <td>1</td>
                                   <td></td>
                                   <td>رئيس</td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>2</td>
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
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row">
                       <div class="col-xs-12">
                           <h5>قائد المدرسة <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></h5>
                       </div>
                       <div class="col-xs-12">
                           <h5>التوقيع : </h5>
                       </div>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
