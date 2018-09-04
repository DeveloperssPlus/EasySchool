<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form22.aspx.cs" Inherits="infractions_نماذج_form22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 22</title>
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
                    <br/>
               <div class="col-xs-12">
                       <h3 style="color:#009e9a;font-weight:900;">خطاب استدعاء</h3>
                   <br/><br/>
             </div>
               
        <div class="row">
            <div class="col-xs-12" style="text-align:right">
                 <h3><b>المكرم ولي أمر الطالب/ة</b>&shy; <asp:Literal ID="ltrGuardianName" runat="server" Text="..............................."></asp:Literal> <b>بالصف </b>/&shy; <asp:Literal ID="ltrClass" runat="server" Text="......................"></asp:Literal></h3><br/>
                <h3 style="text-align:center" >السلام عليكم ورحمة الله وبركاته</h3>
             </div>
            <div class="col-xs-12" style="text-align:right">
                       <h3>تجدون أدناه محضر استلام جهاز الهاتف النقال الذي وجد بحوزة ابنكم/ابنتكم <asp:Literal ID="ltrStudentName" runat="server" Text=".........................................."></asp:Literal></h3>
                       <h3> في يوم : <asp:Literal ID="ltrViolationDay" runat="server" Text="..........................."></asp:Literal> بتاريخ <asp:Literal ID="ltrViolationDate" runat="server" Text="&shy; &shy; &shy; &shy / &shy; &shy; &shy; &shy / &shy; &shy; &shy; &shy 14 هــ"></asp:Literal>.</h3>
                       <h3>وحيث إن إحضار الجهاز يعد من مخالفات الدرجة <asp:Literal ID="ltrLevel" runat="server" Text="..............................."></asp:Literal> حسب قواعد السلوك والمواظبة، فقد</h3>
                       <h3>تحفظ عليه لمدة <asp:Literal ID="ltrStayTime" runat="server" Text="......................."></asp:Literal> من تاريخ إحضاره ( <asp:Literal ID="ltrStartDate" runat="server" Text=" &shy; &shy; /  &shy; &shy; /  &shy; &shy; 14 هــ"></asp:Literal> )، وبناء على انتهاء المدة المحددة</h3>
                      <h3>(<asp:Literal ID="ltrRangeTime" runat="server" Text="...................."></asp:Literal>) سلم لكم على ألا يحضره ابنكم / ابنتكم مرة أخرى ، ونأمل التعاون مع إدارة المدرسة؛ لتحقيق</h3>
                      <h3>الانضباط السلوكي لدى الطالب/ة.</h3>
                      
             </div>
            
            <div class="col-xs-12">
                    <h4><b>شاكرين تعاونكم واهتمامكم,,</b></h4>
             </div>
            
            
        </div>
        <div class="row">
                <div class="col-xs-8">
                </div>
                 <div class="col-xs-4" >
                     <h4 style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;قائد/ة المدرسة</h4>
                     <h4 style="text-align:right">الاسم: <asp:Literal ID="ltrSchoolLeader" runat="server" Text="..........................."></asp:Literal></h4>
                     <h4 style="text-align:right">التوقيع: ..........................</h4>
                </div>
             
           </div>
             
          <div class="col-xs-12">
              <h5>ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ</h5>
                       <h3 style="color:#009e9a;font-weight:900;">محضر استلام</h3><br />
             </div>
               
    <div class="row" style="text-align:right">
        <div class="col-xs-1">
        </div>
        <div class="col-xs-7" style="text-align:right">       
            <h3><b>اليوم :</b> <asp:Literal ID="ltrRecievedDay" runat="server" Text="............................."></asp:Literal></h3>
         </div>
        <div class="col-xs-4" style="text-align:right">
            <h3><b>التاريخ: <asp:Literal ID="ltrRecievedDate" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;  / &shy; &shy; &shy; 14 هـ"></asp:Literal></b></h3>
        </div>
    </div> 
               
     <div class="table1">
         <table>
             <thead>
               <tr>
                 <th>م</th>
                 <th>اسم الجهاز</th>
                 <th>نوعه</th>
                 <th>العدد</th>
                 <th>ملاحظات</th>
               </tr>
             </thead>
            <tbody>
              <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
               <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
            </tbody>
         </table>
      </div>
          <div class="row">
              <div class="col-xs-1"></div>
              <div class="col-xs-3">
                     <h4 style="text-align:right"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;المسلم /</b></h4>
                     <h4 style="text-align:right"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; الموظف المسؤول/</b></h4>
                     <h4 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrEmployeeCharge" runat="server" Text="................................."></asp:Literal></h4>
                     <h4 style="text-align:right"><b>التوقيع:</b> ...............................</h4>
                </div>
              <div class="col-xs-4">
                    <br/><br/><br/>
                      <h3><b>الختم</b></h3>
                </div>
              <div class="col-xs-4">
                     <h4 style="text-align:right"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; المستلم /</b></h4>
                     <h4 style="text-align:right"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ولي أمر الطالب</b></h4>
                     <h4 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrGuardianStudent" runat="server" Text="................................"></asp:Literal></h4>
                     <h4 style="text-align:right"><b>التوقيع:</b> ...............................</h4>
                </div>
              
       </div>
               
        </div>
    </form>
</body>
</html>
