<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form60.aspx.cs" Inherits="SchoolForms_form60" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 60</title>
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
            <h3>نموذج رقم (60)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : نموذج تقويم الأداء الوظيفي لشاغلي الوظائف التعليمية</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج: (م.م.ع.ن-05-01)</h5>
               </div>
           </div>
           <div class="row par">
               <div class="x col-xs-3">
                   <h5> الأول : معلومات عامة:</h5>
               </div>
               <div class="x col-xs-2">
                   <h5>فئة (أ)</h5>
               </div>
               <div class="x col-xs-2">
                   <h5>فئة (ب)</h5>
               </div>
               <div class="x col-xs-3">
                   <h5>فئة (ج)</h5>
               </div>
           </div>
           
           <div class="row table60-1">
               <table>
                   <thead>
                       <tr>
                           <th>الجهاز</th>
                           <th>المنطقة التعليمية</th>
                           <th>المدرسة</th>
                           <th>المرحلة التعليمية</th>
                           <th>المدينة أو القرية</th>
                           
                       </tr>
                   </thead>
                   <tbody>
                     
                       <tr>
                           <td style="padding-bottom:70px">
                               <asp:Literal ID="ltrDevice" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:70px">
                               <asp:Literal ID="ltrSchoolDistrict" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:70px">
                               <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:70px">
                               <asp:Literal ID="ltrEducationalLevel" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:70px">
                               <asp:Literal ID="ltrCollageOrCity" runat="server"></asp:Literal></td>
                       </tr>
                       
                   </tbody>
               </table>
                <table>
                   <thead>
                       <tr>
                           <th>الاسم رباعيا</th>
                           <th>تاريخ الميلاد</th>
                           <th>العمل الحالي</th>
                           <th>المستوى</th>
                           <th>الدرجة</th>
                           <th>الراتب</th>
                           <th>الجنسية</th>
                           <th>نوع العقد وتاريخه</th>
                           <th>بداية خدمته في التعليم</th>
                           
                       </tr>
                   </thead>
                   <tbody>
                     
                       <tr>
                           <td style="padding-bottom:100px">
                               <asp:Literal ID="ltrNameQuadrilateral" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:100px">
                               <asp:Literal ID="ltrDateOfBirth" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrCurrentWork" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrLevel" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrDegree" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrSalary" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrNationality" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrContractTypeAndDate" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrStartServiceEducation" runat="server"></asp:Literal></td>
                          
                       </tr>
                       
                   </tbody>
               </table>
                <table>
                   <thead>
                       <tr>
                            <th>آخر مؤهل علمي حصل عليه</th>
                            <th>تاريخه</th>
                            <th>التخصص</th>
                            <th>الدورات التدريبية</th>
                            <th>تاريخها</th>
                            <th>مدتها</th>
                            <th>المكان</th>
                            <th>علاقتها بالمدة</th>
                          
                       </tr>
                   </thead>
                   <tbody>
                     
                       <tr>
                           <td style="padding-bottom:100px">
                               <asp:Literal ID="ltrLastScientificQualificationObtained" runat="server"></asp:Literal></td>
                           <td style="padding-bottom:100px">
                               <asp:Literal ID="ltrDateLastQualification" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrSpecializationQualification" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrTrainingCourses" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrDateTrainingCourses" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrDurationCourse" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrCoursePlace" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:100px">
                                <asp:Literal ID="ltrRelationShipToArticle" runat="server"></asp:Literal></td>
                       </tr>
                       
                   </tbody>
               </table>
                <table>
                   <thead>
                       <tr>
                           <th>المادة أو المواد التي يدرسها أو يشرف عليها</th>
                           <th>السنة الدراسية</th>
                           <th>عدد الحصص</th>
                           <th colspan="4">آخر تقريري أداء حصل عليهما</th>
                          
                          
                       </tr>
                   </thead>
                   <tbody>
                     
                       <tr>
                           <td style="padding-bottom:150px">
                               <asp:Literal ID="ltrMaterialStudiedByOrSupervisedBy" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px">
                                <asp:Literal ID="ltrSchoolYear" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px">
                                <asp:Literal ID="ltrNumberShares" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px;">تاريخ الإعداد <br />
                                <asp:Literal ID="ltrDatePreparation1" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px; padding-left:50px">
                                <asp:Literal ID="ltrDatePreparation2" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px;">التقدير <br /> <asp:Literal ID="ltrAppreciation1" runat="server"></asp:Literal></td>
                            <td style="padding-bottom:150px; padding-left:50px">
                                <asp:Literal ID="ltrAppreciation2" runat="server"></asp:Literal></td>
                       </tr>
                       
                   </tbody>
               </table>
               <br /><br />
           </div>

           <div class="item">
                   <h5 style="color:#658c6f;">الثاني: عناصر التقويم</h5>
               </div>

           
            <div class="row table60-2">
               <table>
                   <thead>
                       <tr>
                           <th rowspan="2"></th>
                           <th colspan="2" rowspan="2" >العناصــــــــــــــــــــــــر</th>
                           <th colspan="3" class="text-center">مكان اجراء التجربة</th>
                           <th rowspan="2" style="transform:rotate(-90deg);width:20px">الدرجة المعطاة</th>
                           <th colspan="5" rowspan="2" style=";width:200px">مجموع درجات الأداء الوظيفي</th>
                           <th colspan="5" rowspan="2" style=";width:200px">مجموع درجات الصفات الشخصية</th>
                           <th colspan="5" rowspan="2" style="width:200px">مجموع درجات العلاقات</th>
                           <th colspan="5" rowspan="2" style="width:200px">المجموع الكلي للدرجة النهائية</th>
                       </tr>
                       <tr>
                           <td style="transform:rotate(-90deg);width:30px;height:50px">فئة أ</td>
                           <td style="transform:rotate(-90deg);width:30px;height:50px">فئة ب</td>
                           <td style="transform:rotate(-90deg);width:30px;height:50px">فئة ج</td>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td rowspan="19" style="transform:rotate(-90deg); width:90px;">أ - الأداء الوظيفي</td>
                           <td class="text-center" style="width:14px;">أ</td>
                           <td>المهارة في اتخاذ القرارات</td>
                           <td>5</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td colspan="5"></td>
                           <td colspan="5"></td>
                           <td colspan="5"></td>
                           <td colspan="5"></td>
                           
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب</td>
                           <td>العناية بوضع خطط العمل وتنفيذها</td>
                           <td>5</td>
                           <td>6</td>
                           <td></td>
                           <td></td>
                           <td colspan="20"></td>
                         
                       </tr>
                      <tr>
                           <td class="text-center" style="width:14px;">أب</td>
                           <td>الإلمام بنظم العمل وإجراءاته</td>
                           <td>7</td>
                           <td>7</td>
                           <td></td>
                           <td></td>
                           <td colspan="4" rowspan="2">ممتاز <br/> 90-100</td>
                           <td colspan="4" rowspan="2">جيد جداً <br/> 80-89</td>
                           <td colspan="4" rowspan="2">جيد <br/> 70-79</td>
                           <td colspan="4" rowspan="2">مرضي <br/> 60-69</td>
                           <td colspan="4" rowspan="2">غير مرضي أقل من <br/> 60</td>
                       </tr>
                      <tr>
                          <td class="text-center" style="width:14px;">أب</td>
                           <td>التفهم لتكامل التربية والتعليم</td>
                           <td>5</td>
                           <td>6</td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب</td>
                           <td>القدرة على تطوير أساليب العمل</td>
                           <td>5</td>
                           <td>5</td>
                           <td></td>
                           <td></td>
                           <td colspan="4"></td>
                           <td colspan="4"></td>
                           <td colspan="4"></td>
                           <td colspan="4"></td>
                           <td colspan="4"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب</td>
                           <td>المهارة في المتابعة والتوجيه</td>
                           <td>7</td>
                           <td>8</td>
                           <td></td>
                           <td></td>
                           <td colspan="20" rowspan="2">الرابع ملحوظات عامة :</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب</td>
                           <td>العناية ببيئة المدرسة وتوظيف التجهيزات</td>
                           <td>6</td>
                           <td>5</td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب <br />ج</td>
                           <td>الالتزام باستخدام اللغة الفصحى</td>
                           <td>6</td>
                           <td>6</td>
                           <td>6</td>
                           <td></td>
                           <td colspan="20">أذكر مواطن قوة ومواطن ضعف ترى أهمية إضافتها ( إن وجدت )</td>
                        
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب <br />ج</td>
                           <td>الحرص على تظيم النشاط المدرسي وتنفيذه</td>
                           <td>5</td>
                           <td>4</td>
                           <td>5</td>
                           <td></td>
                           <td rowspan="2" colspan="20">مواطن القوة : الانجازات أو النشاطات العملية الأخرى التي يتميز بها ولم تشتمل عليها العناصر السابقة .</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب <br />ج</td>
                           <td>الاهتمام بالنمو المعرفي</td>
                           <td>5</td>
                           <td>5</td>
                           <td>5</td>
                           <td></td>
                           
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب <br />ج</td>
                           <td>المحافظة على أوقات الدوام</td>
                           <td>7</td>
                           <td>7</td>
                           <td>7</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">أب <br />ج</td>
                           <td>الإلمام بالأسس التربوية في إعداد الدروس وتطبيقها</td>
                           <td>5</td>
                           <td>7</td>
                           <td>7</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ب <br />ج</td>
                           <td>التمكن من المادة العلمية والقدرة على تحقيق أهدافها</td>
                           <td></td>
                           <td>6</td>
                           <td>7</td>
                           <td></td>
                           <td colspan="20" rowspan="2">مواطن الضعف : ( الجوانب السلبية التي يتصف بها وتؤثر على عمله دون أن يكون في ذلك تكرار للعناصر السابقة )</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ج</td>
                           <td>الاهتمام بالتقويم المستمر ومراعاة الفروق الفردية</td>
                           <td></td>
                           <td></td>
                           <td>7</td>
                           <td></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ج</td>
                           <td>توزيع المنهج وملاءمة ما فذ منه للزمن</td>
                          <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ج</td>
                           <td>استخدام السبورة والكتب المدرسية والوسائل التعليمية الأخرى</td>
                           <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ج</td>
                           <td>المهارة في عرض الدروس وإدارة الفصل</td>
                           <td></td>
                           <td></td>
                           <td>5</td>
                           <td></td>
                           <td colspan="20">التوجيهات والتوصيات العامة لتطوير قدراته ( إن وجدت ) .</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px">ج</td>
                           <td>مستوى تحصيل الطلاب العلمي</td>
                           <td></td>
                           <td></td>
                           <td>10</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">ج</td>
                           <td>التطبيقات والواجبات المدرسية والعناية بتصحيحها</td>
                          <td></td>
                           <td></td>
                           <td>5</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr style="background-color:#658c6F;color:#FFF;">
                           <td></td>
                           <td></td>
                           <td colspan="4">المجموع</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       
                   </tbody>
               </table>
                <br/><br/><br/><br /><br />
           </div>
           
               <div class="row table60-3">
               <table>
                   <tbody>
                       <tr>
                           <td rowspan="5" style="transform:rotate(-90deg); width:150px">ب - الصفات الشخصية</td>
                           <td class="text-center" style="width:14px;">أب</td>
                           <td>القدرة على الحوار وإدارة النقاش</td>
                           <td>4</td>
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td colspan="20">رأي معد التقرير :</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>السلوك العام ( القدوة الحسنة )</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>تقدير المسئولية</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>تقبل التوجيهات</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>حسن التصرف</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr style="background-color:#EBF0EA;">
                           <td></td>
                           <td colspan="2">المجموع</td>
                           <td colspan="3"></td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                        <tr style="background-color:#D2DED2;">
                           <td colspan="3">اسم معتمد التقرير : <asp:Literal ID="ltrCertifiedReportName" runat="server"></asp:Literal></td>
                           <td colspan="4">وظيفته : <asp:Literal ID="ltrCertifiedReportJob" runat="server"></asp:Literal></td>
                           <td colspan="4">توقيعه :</td>
                           <td colspan="4">التاريخ <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                       </tr>
                   </tbody>
               </table>
           </div>
           
              <div class="row table60-3">
               <table>
                   <tbody>
                       <tr>
                           <td rowspan="7" style="transform:rotate(-90deg); width:110px">ج - العلاقات مع</td>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>الرؤساء</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td rowspan="2"></td>
                           <td colspan="20" style="text-align:center">
                               <asp:Literal ID="ltrDate1" runat="server" Text="&shy;  &shy;  &shy;  &shy; / &shy;   &shy;  &shy; &shy;   &shy;  &shy;  &shy;  &shy;  &shy; / &shy;   &shy;   &shy; &shy;   &shy;  &shy;  &shy;  &shy;  &shy;"></asp:Literal> 14هــ</td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أب<br />ج</td>
                           <td>الزملاء</td>
                           <td>4</td>
                           <td>4</td>
                           <td>4</td>
                           <td colspan="20">ملحوظات معتمد التقرير : </td>
                       </tr>
                       <tr>
                           <td class="text-center" style="width:14px;">أج</td>
                           <td>الطلاب وأولياء الأمور</td>
                           <td>4</td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                       <tr>
                           <td colspan="5">المجموع</td>
                           <td></td>
                           <td colspan="20"></td>
                       </tr>
                        <tr>
                           <td colspan="6">فئة أ : تخص المديرين والمديرات في المدارس والمعاهد والمراكز التعليمية والتدريبية ووكلاءها .</td>
                           <td colspan="20"></td>
                       </tr>
                        <tr >
                           <td colspan="6">قئة ب : تخص الموجهين والموجهات .</td>
                             <td style="padding:20px;" colspan="5">اسم معتمد التقرير:</td>
                             <td style="padding:20px;" colspan="5">وظيفته:</td>
                             <td style="padding:20px;" colspan="5">توقيعه:</td>
                             <td style="padding:20px;" colspan="5">التاريخ</td>
                       </tr>
                        <tr>
                           <td colspan="6">فئة ج : تخص المدرسين والمدرسات والمدربين والمدربات</td>
                           <td colspan="20" style="text-align:center">  <asp:Literal ID="ltrDate2" runat="server" Text="&shy;  &shy;  &shy;  &shy; / &shy;    &shy;  &shy; &shy;   &shy;  &shy;  &shy;  &shy;  &shy; / &shy;   &shy;  &shy;    &shy;  &shy;  &shy;  &shy;  &shy;"></asp:Literal> 14هــ</td>
                       </tr>
                     
                   </tbody>
               </table>
           </div>

           <div class="item">
                   <h5>صدق التقويم ودقته يعتمدان على استيعاب الإرشادات والعناية بمصادر تقويم الأداء الوظيفي المكتوبة خلف هذا النموذج ورصد ملحوظاته وتوجيهاته للمدرس ( للمدرسة ) أولا بأول .</h5>
               </div>
           
        </div>
    </div>
    </form>
</body>
</html>
