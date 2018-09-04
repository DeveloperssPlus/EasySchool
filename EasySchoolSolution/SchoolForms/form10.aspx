<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form10.aspx.cs" Inherits="SchoolForms_form10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 10</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .no
        {
            background: #658C6F;
            color: #fff;
        }
        .book
        {
            background-color: #BCCCBF;
        }
        .row3
        {
            background-color: #EBF0EA;
        }
        .row1
        {
            background-color: #D2DED2;
        }
    </style>
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
            <h3>نموذج رقم (10)</h3>
       </div>
       <div class="container content" align="center">
           <div class="row sub-title">
             <div class="col-xs-6">
                   <h5>اسم النموذج : تسليم المقررات الدراسية للطلاب</h5>
               </div> 
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ط.ع.ن-02-01)</h5>
               </div> 
           </div>
           <div class="row sub-par">
               <div class="col-xs-4">
                   
                   <h5>المدرسة : ( <asp:Literal ID="ltrSchoolName" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>)</h5>
               </div>
               <div class="col-xs-4">
                   
                   <h5>البرنامج : ( <asp:Literal ID="ltrProgramName" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>)</h5>
               </div>
               <div class="col-xs-4">
                   <h5>العام الدراسي : <asp:Literal ID="ltrYear" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal></h5>
               </div>
           </div>
           <div class="row sub-par">
               <div class="col-xs-3">
                   <h5>الصف : <asp:Literal ID="ltrClass" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>الفصل : <asp:Literal ID="ltrSemester" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>اليوم : <asp:Literal ID="ltrDay" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>التاريخ : <asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; / &shy; &shy; / &shy; &shy; 14 هــ"></asp:Literal></h5>
               </div>
           </div>
           <div class="row table10">
               <table>
                   <thead>
                       <tr>
                           <th rowspan="2">م</th>
                           <th rowspan="2">اسم الطالب</th>
                           <th rowspan="2">وثيقة استلام ومحافظة على الكتب</th>
                           <th rowspan="2">توقيع الطالب</th>
                           <th colspan="2">استلام الكتب نهاية الفصل</th>
                           <th rowspan="2">توقيع المعلم</th>
                       </tr>
                       <tr>
                           <th>تم استلامها</th>
                           <th>لم تستلم</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr class="row3">
                           <td class="no">1</td>
                           <td></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="row1">
                           <td rowspan="2" class="no">2</td>
                           <td></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                       </tr>
                       <tr class="row3">
                           <td></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                       </tr>
                       <tr>
                           <td rowspan="2" class="no">3</td>
                           <td class="row"></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td rowspan="2" style=""></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                       </tr>
                       <tr>
                           <td class="row3"></td>
                           <td class="book"">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                       </tr>
                       <tr class="row1">
                           <td rowspan="2" class="no">4</td>
                           <td></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                           <td rowspan="2"></td>
                       </tr>
                       <tr class="row3">
                           <td></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                       </tr>
                       <tr>
                           <td rowspan="2" class="no">5</td>
                           <td class="row1"></td>
                           <td class="book">المحافظة على كتبي وتسليمها<br/>
بعد نهاية الفصل الدراسي</td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                       </tr>
                       <tr>
                           <td class="row3"></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                       </tr>
                       <tr>
                           <td rowspan="2" class="no">6</td>
                           <td class="row1"></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                           <td rowspan="2" class="row3"></td>
                       </tr>
                       <tr>
                           <td class="row3"></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                       </tr>
                       <tr>
                           <td class="no">7</td>
                           <td class="row1"></td>
                           <td class="book">المحافظة على كتبي وتسليمها <br/>
بعد نهاية الفصل الدراسي</td>
                           <td class="row3"></td>
                           <td class="row3"></td>
                           <td class="row3"></td>
                           <td class="row3"></td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="row end">
               <div class="col-xs-3">
                   <h5>الكتب غير المسلمة : 1- <asp:Literal ID="ltrBooksReceived1" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>2- <asp:Literal ID="ltrBooksReceived2" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>3- <asp:Literal ID="ltrBooksReceived3" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>4- <asp:Literal ID="ltrBooksReceived4" runat="server"></asp:Literal></h5>
               </div>
           </div>
           <div class="row end">
               <div class="col-xs-6">
                   <h5>اسم المسؤول / <asp:Literal ID="ltrManagerName" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-6">
                   <h5>التوقيع : <asp:Literal ID="ltrSignature" runat="server"></asp:Literal></h5>
               </div>
           </div>
        </div>
    </div>
    </form>
    
</body>
</html>
