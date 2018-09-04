<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form21.aspx.cs" Inherits="infractions_نماذج_form21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 21</title>
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
        <div class="container content" align="center">
        <div class="row sub-title">
                   <div class="col-xs-4">
                         <h4 style="font-weight:bold;">المملكة العربية السعودية</h4>
                         <h4 style="font-weight:bold;">وزارة التعليم (280)</h4>
                         <h4 style="font-weight:bold;">الإدارة العامة للتوجيه والإرشاد</h4>
                   </div>
                   <div class="col-xs-3">
                       <img src="image/logo.png" alt="logo">
                   </div>
                   <div class="col-xs-5">
                        <h5 style="font-weight:bold;">منطقة / محافظة : <asp:Literal ID="ltrGovernorate" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">المدرســـــــــــــة : <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">اليــــــــــــــــــوم : <asp:Literal ID="ltrDay" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">التــــــــــــــــاريخ : <asp:Literal ID="ltrDate" runat="server"></asp:Literal></h5>
                   </div>
               </div>
            <br />
            <div class="col-xs-12">
                       <h3 style="color:#009e9a;font-weight:900;">تقويم السلوك</h3>
             </div>
            <div class="col-xs-12" style="text-align:right">
                      <h3>اسم الطالب/ة <asp:Literal ID="ltrStudentName" runat="server" Text="........................................"></asp:Literal> الصف <asp:Literal ID="ltrClass" runat="server" Text="................................"></asp:Literal></h3><br />
             </div>
            <div class="row table1">
                   <table>
                    <thead>
                       <tr>
                           <th>يوم وتاريخ المخالفة</th>
                           <th>درجة المخالفة</th>
                           <th>نوع المخالفة</th>
                           <th>الدرجة المحسومة (-)</th>
                           <th>الدرجة المسترجعة (+)</th>
                           <th style="width:20%">كيفية الاسترجاع</th>
                           <th>توقيع الطالب</th>
                       </tr>
                    </thead>
                    <tbody>
                         <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                         <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <td></td>
                           <td></td>
                           <th></th>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                          <tr>
                           <th colspan="3">مجموع الدرجات</th>
                           <th></th>
                           <th></th>
                           <th></th>
                           <th></th>
                       </tr>
                          <tr>
                           <th colspan="3">الدرجة المستحقة للطالب نهاية الفصل الدراسي</th>
                           <th colspan="3"></th>
                           <th></th>
                       </tr>
                    </tbody>
                </table>
            </div>
                <br />
         <div class="row"> 
              <div class="col-xs-4" style="text-align:right">
                     <h4><b>الموظف المسؤول /</b></h4>
                     <h4><b>الاسم:</b> <asp:Literal ID="ltrEmployeeCharge" runat="server" Text="................................."></asp:Literal></h4>
                     <h4><b>التوقيع:</b> ..............................................</h4>
                </div>
                <div class="col-xs-4">
                </div>
                 <div class="col-xs-4" style="text-align:right" >
                     <h4><b>قائد/ة المدرسة /</b></h4>
                     <h4><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="......................."></asp:Literal></h4>
                     <h4><b>التوقيع:</b> .............................................</h4>
                </div>
              <div class="col-xs-12">
                    <h3>الختم</h3>
                </div>
       </div>
        </div>
    </form>
</body>
</html>
