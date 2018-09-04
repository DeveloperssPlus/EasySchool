<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form31.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 31</title>
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
  <div class="container-fluid">
       <div class="row title">
            <h3>نموذج رقم (31)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : تحويل طالب لوكيل شؤون الطلاب</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ط.ع.ن-04-03)</h5>
               </div>
           </div>
           <div class="row sub-par">
               <div class="row">
                   <div class="col-xs-6">
                       <h5>اسم الطالب /<asp:Literal ID="ltrNameStudent" runat="server">..............</asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>بالصف /<asp:Literal ID="ltrClass" runat="server">..............</asp:Literal></h5>
                   </div>
               </div>
               <div class="row">
                   <div class="col-xs-6">
                       <h5>المادة /<asp:Literal ID="ltrCourse" runat="server">..............</asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>الحصة الدراسية /<asp:Literal ID="ltrSchoolClass" runat="server">..............</asp:Literal></h5>
                   </div>
               </div>
               <br>
               <div class="row">
                   <h4>سبب التحويل</h4>
                   <div class="row">
                       <form action="" method="">
                          <input type="checkbox" style="margin-right:20px"> عدم أداء الواجب
                          <input type="checkbox" style="margin-right:50px"> مشاغبة
                          <input type="checkbox" style="margin-right:50px"> تأخر عن الحصة <br>
                          <input type="checkbox" style="margin-right:20px"> ضعف دراسي
                          <input type="checkbox" style="margin-right:60px"> أخرى تذكر...................................................................
                       </form>
                   </div>
               </div>
               <br>
               <div class="row">
                   <h4>إيضاح المشكلة</h4>
                   <div class="row" style="margin-right:10px">
				   <asp:Literal ID="lrtClarifyProblem" runat="server">
                       ..............................................................................................................................................................................................................................<br>
                       ............................................................................................................................................................................................................................. <br>
                       ............................................................................................................................................................................................................................. <br>
                  </asp:Literal> </div>
                   <div class="row" style="margin-right:10px">
                       <div class="col-xs-4">
                           <h5>اسم المعلم /<asp:Literal ID="ltrTeacher" runat="server">..............</asp:Literal></h5>
                       </div>
                       <div class="col-xs-4">
                           <h5>التوقيع /<asp:Literal ID="ltrSignature" runat="server">..............</asp:Literal></h5>
                       </div>
                       <div class="col-xs-4">
                           <h5>التاريخ... <asp:Literal ID="ltrMonth" runat="server"> / </asp:Literal>... <asp:Literal ID="ltrDay" runat="server"> / </asp:Literal>14 هــ</h5>
                       </div>
                   </div>
                   <div class="row" style="margin-right:5px">
                       <h4>ما تم حيال الطالب ( خاص بوكيل شؤون الطلاب ) :</h4>
                       <div class="row" style="margin-right:10px">
					   <asp:Literal ID="ltrStudentAffairsSpecialAgent" runat="server">
                           ..............................................................................................................................................................................................................................<br>
                           ............................................................................................................................................................................................................................. <br>
                           ............................................................................................................................................................................................................................. <br><br>
                       </asp:Literal></div>
                       <h5 style="padding-right:20px">تم إحالته للمرشد الطلابي</h5>
                       <div class="row" style="margin-right:5px">
                           <div class="col-xs-4">
                               <h5>وكيل المدرسة /<asp:Literal ID="ltrUndersecretarySchool" runat="server">..............</asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التوقيع /<asp:Literal ID="ltrSignature1" runat="server">..............</asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التاريخ:... <asp:Literal ID="ltrMonth1" runat="server"> / </asp:Literal>... <asp:Literal ID="ltrDay1" runat="server"> / </asp:Literal> 14 هــ</h5>
                           </div>
                       </div>
                   </div>
                   <br>
                   <div class="row" style="margin-right:5px">
                       <h4>ما تم حيال الطالب ( خاص بالمرشد الطلابي ) :</h4>
                       <div class="row" style="margin-right:10px">
					   <asp:Literal ID="ltrSpecialStudentSupremeLeader" runat="server">
                           ..............................................................................................................................................................................................................................<br>
                           ............................................................................................................................................................................................................................. <br>
                           ............................................................................................................................................................................................................................. <br><br>
					</asp:Literal>                      
					  </div>
                       <div class="row" style="margin-right:5px">
                           <div class="col-xs-4">
                               <h5>المرشد الطلابي<asp:Literal ID="ltrStudentAdvisor" runat="server">..............</asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التوقيع /<asp:Literal ID="ltrSignature2" runat="server">..............</asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التاريخ:... <asp:Literal ID="ltrMonth2" runat="server"> / </asp:Literal>... <asp:Literal ID="ltrDay2" runat="server"> / </asp:Literal> 14 هــ</h5>
                           </div>
                       </div>
                   </div>
                   <div class="row" style="margin-right:5px">
                       <h4>ملحوظات :</h4>
                       <h5>1 - يتم إخطار وكيل شؤون الطلاب حسب هذا النموذج بعد انتهاء الحصة الدراسية</h5>
                       <h5>2 - يقوم وكيل شؤون الطلاب باستدعاء الطالب في وقت لا يؤثر عليه دراسياً</h5>
                       <h5>3 - يتم تحويل الطالب إلى المرشد في حالة تكرار السلوك أو الضعف الدراسي</h5>
                       <h5>4 - يقوم المرشد الطلابي بإخطار المعلم بما تم حيال الطالب</h5>
                       <h5>5 - يحفظ هذا النموذج لدى وكيل شؤون الطلاب ونسخة لدى المرشد الطلابي</h5>
                   </div>
               </div>
           </div>
        </div>
    </div>
</body>
</html>
