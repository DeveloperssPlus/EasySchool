<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form56.aspx.cs" Inherits="TahaniSchoolForms_form56" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 56</title>
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
            <h3>نموذج رقم (56)</h3>
       </div>
       
       <div class="container content">
       
       <div class="container con" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : كشف الغياب اليومي للطلاب في الاختبارات</h5>

               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ت.ع.ن-05-04)</h5>
               </div>
           </div>
           
            <div class="row table56-1" >
               <table style="width:80%">
                   <tbody>
                       <tr>
                           <th><h5>اليوم</h5></th>
                           <th><h5>التاريخ</h5></th>
                           <th><h5>العام الدراسي</h5></th>
                           <th><h5>الفصل الدراسي</h5></th>
                           <th><h5>الدور</h5></th>
                       </tr>
                       <tr>
                           <td>
                               <asp:Literal ID="ltrDay" runat="server"></asp:Literal></td>
                           <td>
                               <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                           <td>
                               <asp:Literal ID="ltrYear" runat="server"></asp:Literal></td>
                           <td>
                               <asp:Literal ID="ltrSemester" runat="server"></asp:Literal></td>
                           <td>
                               <asp:Literal ID="ltrRole" runat="server"></asp:Literal></td>
                       </tr>
                   </tbody>
                </table>
                <br/>
            </div>
           
            
                <div class="row table56-2">
               <table style="width:80%">
                   <thead>
                       <tr>
                           <th class="x">الصف: ..............</th>
                           <th>اسم الطالب</th>
                           <th>رقم الجلوس</th>
                           <th>الفترة</th>
                           <th>المادة</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td class="xx" rowspan="2">عدد المسجلين</td>
                           <td>1.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>2.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       
                       </tr>
                       <tr>
                           
                           <td class="xx" rowspan="2">عدد الغائبين</td>
                           <td>3.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>4.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                        <thead>
                       <tr>
                           <th class="x">الصف: ..............</th>
                           <th>اسم الطالب</th>
                           <th>رقم الجلوس</th>
                           <th>الفترة</th>
                           <th>المادة</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td class="xx" rowspan="2">عدد المسجلين</td>
                           <td>1.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>2.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       
                       </tr>
                       <tr>
                           
                           <td class="xx" rowspan="2">عدد الغائبين</td>
                           <td>3.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>4.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                        <thead>
                       <tr>
                           <th class="x">الصف: ..............</th>
                           <th>اسم الطالب</th>
                           <th>رقم الجلوس</th>
                           <th>الفترة</th>
                           <th>المادة</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td class="xx" rowspan="2">عدد المسجلين</td>
                           <td>1.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>2.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       
                       </tr>
                       <tr>
                           
                           <td class="xx" rowspan="2">عدد الغائبين</td>
                           <td>3.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>4.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                  
                        <thead>
                       <tr>
                           <th class="x">الصف: ..............</th>
                           <th>اسم الطالب</th>
                           <th>رقم الجلوس</th>
                           <th>الفترة</th>
                           <th>المادة</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td class="xx" rowspan="2">عدد المسجلين</td>
                           <td>1.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>2.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       
                       </tr>
                       <tr>
                           
                           <td class="xx" rowspan="2">عدد الغائبين</td>
                           <td>3.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           
                           <td>4.</td>
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
           
       </div>
    </form>
</body>
</html>
