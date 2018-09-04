<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="infractions_نماذج_form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 1</title>
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
                       <h3 style="color:#009e9a;font-weight:900;">سري</h3>
                       <h3 style="font-weight:900;">محضر إثبات واقعة</h3>
             </div>
               <div class="col-xs-12" >
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
                <h4>.................................................................................................................................................................................................................</h4> 
             </div>
        
               <div class="col-xs-12" style="text-align:right;color:#009e9a">
                       <h3>• أعضاء لجنة التوجيه والإرشاد :</h3>
             </div>
               
               <div class="row table2">
                   <table>
                    <thead>
                       <tr>
                           <th>م</th>
                           <th>اسم العضو المشارك</th>
                           <th>الوظيفة</th>
                           <th>العمل المسند إليه</th>
                           <th>التوقيع</th>
                       </tr>
                    </thead>
                    <tbody>
                         <tr>
                           <th>1</th>
                           <td></td>
                           <th>قائد/ة المدرسة</th>
                           <td><b>رئيس/ة</b></td>
                           <td></td>
                       </tr>
                          <tr>
                           <th>2</th>
                           <td></td>
                           <th>وكيل المدرسة لشئون الطلاب</th>
                           <td><b>نائب الرئيس</b></td>
                           <td></td>
                       </tr>
                          <tr>
                           <th>3</th>
                           <td></td>
                           <th>وكيل المدرسة للشئون التعليمية</th>
                           <td><b>عضو</b></td>
                           <td></td>
                       </tr>
                         <tr>
                           <th>4</th>
                           <td></td>
                           <th>المرشد الطلابي</th>
                           <td><b>عضو ومقرر</b></td>
                           <td></td>
                       </tr>
                          <tr>
                           <th>5</th>
                           <td></td>
                           <th>معلم متميز</th>
                           <td><b>عضو</b></td>
                           <td></td>
                       </tr>
                        <tr>
                           <th>6</th>
                           <td></td>
                           <th>معلم متميز</th>
                           <td><b>عضو</b></td>
                           <td></td>
                       </tr>
                         <tr>
                           <th>7</th>
                           <td></td>
                           <th>معلم متميز</th>
                           <td><b>عضو</b></td>
                           <td></td>
                       </tr>
                    </tbody>
                </table>
                   <br/><br/>
            </div>
         <div class="row">
             <div class="col-xs-8">
             </div>
                <div class="col-xs-4" >
                     <h4 style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>قائد/ة المدرسة</b></h4>
                     <h4 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="..........................."></asp:Literal></h4>
                     <h4 style="text-align:right"><b>التوقيع:</b> ..........................</h4>
                     <h4 style="text-align:right"><b>التاريخ: &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;  &shy; &shy; 14هـ</b></h4>
              
           </div>
           </div>
        </div>
    </form>
</body>
</html>
