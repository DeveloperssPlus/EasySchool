<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form71.aspx.cs" Inherits="TahaniSchoolForms_form71" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 71</title>
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
                <h3>نموذج رقم (71)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : تسليم نسخ موثقة </h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-08-01)</h5>
                   </div> 
               </div>
               <div class="row sub-par">
                   <div class="col-xs-6">
                       <h5 class=" text-right">رقم الإصدار : <asp:Literal ID="ltrIssueNo" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>تاريخ الإصدار : <asp:Literal ID="ltrIssueDate" runat="server"></asp:Literal></h5>
                   </div>
               </div>
               <div class="row table71">
                   <table>
                       <thead>
                           <tr>
                               <th rowspan="2">م</th>
                               <th rowspan="2">اسم الوثيقة</th>
                               <th rowspan="2">رمز <br>الوثيقة</th>
                               <th colspan="2">الإصدار</th>
                               <th rowspan="2">عدد<br> انسخ</th>
                               <th rowspan="2">الجهة</th>
                               <th colspan="3">بيانات المستلم</th>
                           </tr>
                           <tr>
                               <th style="background:#8FAD95">رقم</th>
                               <th style="background:#8FAD95">تاريخ</th>
                               <th style="background:#8FAD95">الاسم</th>
                               <th style="background:#8FAD95">التوقيع</th>
                               <th style="background:#8FAD95">التاريخ</th>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
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
                               <td> &shy; &shy; / &shy; &shy; / &shy; &shy; 14</td>
                           </tr>
                       </tbody>
                   </table>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
