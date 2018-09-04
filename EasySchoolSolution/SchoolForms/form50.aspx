<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form50.aspx.cs" Inherits="SchoolForms_form50" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 50</title>
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
            <h3>نموذج رقم (50)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : استمارة دعم وتطوير الهيئة التعليمية</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (م.م.ع.ن-03-02)</h5>
               </div>
           </div>
           <div class="row">
           <div class="text col-xs-12">
                   <h5 style="color:black;">في مدرسة (<asp:Literal ID="ltrSchoolName" runat="server" Text="......................................................."></asp:Literal>)</h5>
               </div>
        <div class="col-xs-6">
                   <h5></h5>
               </div>
           </div>
           <br/>
           <div class="container content form50" align="right">
                   <div class="row">
                       <h4>أولاً : إرشادات عامة :</h4>
                   <ul>
                      <li><h5> تعبأ الاستمارة من قبل قائد المدرسة / وكيل الشؤون التعليمية أثناء الزيارة الصفية للمعلم لدعم وتطوير الأداء
التعليمي.</h5></li> 
                      <li><h5> تعبأ الاستمارة للمعلم المتميز بواقع زيارة واحدة في العام الدراسي كحد ادنى.</h5></li> 
                      <li><h5> تعبأ الاستمارة للمعلم بمستوى متوسط بواقع زيارتين في العام الدراسي كحد ادنى .</h5></li> 
                      <li><h5> تعبأ الاستمارة للمعلم الجديد والمعلم بمستوى ضعيف بواقع ثلاثة زيارات في العام الدراسي كحد ادنى .</h5></li> 
                     <li><h5> تستخدم البيانات والمعلومات الواردة في الاستمارة ( كمعطيات دقيقة لتحديد الاحتياجات التدريبية وتحقيق
التنمية المهنية للمعلمين، ولبناء وتفعيل شبكات ومجتمعات التعلم المهني داخل المدرسة، ولتحديد المعلمين ذوي
القدرات المتميزة في المدرسة لتقديم الدعم لزملائهم).</h5></li> 
                      <li><h5> تعد الاستمارة مصدر من مصادر تقويم الأداء الوظيفي المعتمد من وزارة الخدمة المدنية للمعلمين.</h5></li> 
                      <li> <h5> يستفيد المشرف التربوي للمادة من هذه الاستمارة عند زيارته للمدرسة.</h5></li> 
                    </ul>
                   </div>
               <br/>
               <h4>ثانياً : معلومات عامة </h4>
               </div>
           
           <div class="row table50-1">
               <table>
                   
                   <tbody>
                       <tr>
                           <td>الإسم : <asp:Literal ID="ltrName" runat="server"></asp:Literal></td>
                           <td>المؤهل : <asp:Literal ID="ltrQualification" runat="server"></asp:Literal></td>
                           <td>سنوات الخدمة : <asp:Literal ID="ltrServiceYears" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td>المادة : <asp:Literal ID="ltrSubject" runat="server"></asp:Literal></td>
                           <td>التخصص : <asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></td>
                           <td></td>
                       </tr>
                   </tbody>
               </table>
           </div>
          <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br /><br /><br /><br />
           <div class="item">
               <h5 style="color:#658c6f;">ثالثاً: عملية التعليم والتعلم</h5>
           </div>
           <div class="row table50-2">
               <table>
                   <thead>
                       <tr>
                           <th rowspan="5">م</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">المجال</th>
                           <th rowspan="5">العنصر</th>
                           <th colspan="9">مستوى الأداء</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">جوانب التميز</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">احتياجات التنمية المهنية</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">ملحوظات</th>
                        <tr>
                        <tr>
                                   <th colspan="3">متميز</th>
                                   <th colspan="3">متوسط</th>
                                   <th colspan="3">ضعيف</th>     
                        </tr>
                               <tr>
                                   <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                                   <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                                   <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                               </tr>
                           </tr>   
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td>1</td>
                           <td id="x" style="transform:rotate(-90deg)">التخطيط للتدريس</td>
                           <td>يخطط المعلم للدرس بمنهجية علمية واضحة</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                            <td></td>
                       </tr>
                       
                       <tr>
                           <td rowspan="3">2</td>
                           <td rowspan="3" style="transform:rotate(-90deg)">استراتيجيات التدريس</td>
                           <td>يستخدم استراتيجيات التعلم بما يتناسب وطبيعة الدرس</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td rowspan="3"></td>
                           <td rowspan="3"></td>
                            <td rowspan="3"></td>
                       </tr>
                       <tr>
                          
                           <td>يربط بين أهداف المادة والمواد الأخرى</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>يلتزم استخدام اللغة العربية في التحدث مع الطلاب</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       
                    
                       <tr>
                           <td rowspan="4">3</td>
                           <td rowspan="4" style="transform:rotate(-90deg)">إدارة الصف</td>
                           <td>يضبط الصف ويديره بكفاءة تدعم تحقيق الأهداف التعليمية</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td rowspan="3"></td>
                           <td rowspan="3"></td>
                            <td rowspan="3"></td>
                       </tr>
                       <tr>
                          
                           <td>يدير وقت التعليم بكفاءة عالية</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>يلتزم بالمهنية وأخلاقيات المهنة وقيمها</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>ينظم الصف بما يتناسب مع الاستراتيجيات المستخدمة والتغلب على الصعوبات التي قد تواجهه مثل (الإمكانات المتاحة, كثافة الفصول ,...).</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                            <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                     
                  <tr>
                           <td rowspan="4">4</td>
                           <td rowspan="4" style="transform:rotate(-90deg)">دعم المتعلمين</td>
                           <td>يعزز ما لدى الطلاب من خبرات سابقة</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td rowspan="4"></td>
                           <td rowspan="4"></td>
                            <td rowspan="4"></td>
                       </tr>
                       <tr>
                          
                           <td>يشجع الطلاب على التعبير عن حاجاتهم وآرائهم</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>يدعم توظيف ما تعلمه الطلاب في الدرس في حياتهم</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>يقدم الدعم اللازم للمتعلمين الضعاف والمتأخرين دراسيا .</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           
                       </tr>
                       <tr>
                       </tr>
                   </tbody>
               </table>
           </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br /><br /><br />
             <div class="row table50-2">
               <table>
                   <thead>
                       <tr>
                           <th rowspan="5">م</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">المجال</th>
                           <th rowspan="5">العنصر</th>
                           <th colspan="9">مستوى الأداء</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">جوانب التميز</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">احتياجات التنمية المهنية</th>
                           <th rowspan="5" style="transform:rotate(-90deg)">ملحوظات</th>
                        <tr>
                        <tr>
                                   <th colspan="3">متميز</th>
                                   <th colspan="3">متوسط</th>
                                   <th colspan="3">ضعيف</th>     
                        </tr>
                               <tr>
                                  <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                                   <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                                   <th style="transform:rotate(-90deg)">ز1</th>
                                   <th style="transform:rotate(-90deg)">ز2</th>
                                   <th style="transform:rotate(-90deg)">ز3</th>
                               </tr>
                           </tr>   
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td rowspan="5">5</td>
                           <td rowspan="5" style="transform:rotate(-90deg)">التقويم الصفي</td>
                           <td>ينفذ التقويم الصفي وفق تحليل النتائج السابقة</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td rowspan="4"></td>
                           <td rowspan="4"></td>
                            <td rowspan="4"></td>
                       </tr>
                       <tr>
                          
                           <td>يستخدم سجل المتابعة كتحفيز للطلاب على المشاركة</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>يسأل أسئلة مثيرة لعمليات التفكير العليا .</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                          
                           <td>ينفذ تقويما ختاميا للدرس يدعم ترسيخ أهداف الدرس</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                         
                         <td>يستخدم أدوات تقويم متنوعة لقياس أداء المتعلمين مثل ملف الانجاز وبطاقات التأمل الذاتي والاختبارات التحصيلية وبطاقات تقويم الأقران...الخ</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                             <td></td>
                          <td></td>
                        
                       </tr>
                       
                   </tbody>
               </table>
         </div>
             <div class="row item1">
               <h5><span>متميز: </span> أداء يحقق جميع متطلبات العمل بكفاءة وفاعلية. <span>متوسط: </span> اداء يحقق معظم متطلبات العمل .<span>ضعيف: </span> اداء لم يحقق متطلبات العمل بالمستوى المطلوب.</h5>
                   
               <div class="col-xs-3" style="margin-right:80px">
                   <h5>(ز1) تعني الزيارة الاولى.</h5>
               </div>
               <div class="item2 col-xs-3 " style="margin-right:65px">
                   <h5>(ز2) تعني الزيارة الثانية.</h5>
               </div>
               <div class="item2 col-xs-3 ">
                   <h5>(ز3) تعني الزيارة الثالثة.</h5>
               </div>
          
               <h5><span>التخطيط للتدريس:</span> التفكير والعمل المنظم والنسق والمسبق المكتوب لما يعتزم المعلم القيام به مع الطلاب , من أجل تحقيق أهداف علمية معينة, سواء أكان ذلك على مستوى المقرر الدراسي, أو الوحدة الدراسية, أو الدرس اليومي .</h5>
        
               <h5><span>استراتيجيات التدريس:</span>مجموعة من الخطوات الإجرائية المنظمة يوظفها المعلم داخل الغرف الصفية بشكل منتظم ومتسلسل وبما يراعي الموقف التعليمي وطبيعة المتعلمين لتحقيق مخرجات تعليمية محددة مسبقا.</h5>
         
               <h5><span>إدارة الصف</span>مجموعة من الأنشطة التي يستخدمها المعلم لتنمية الأنماط السلوكية المناسبة لدى الطلاب , وتنمية العلاقات الإنسانية الجيدة , وخلق جو اجتماعي فعال ومنتج داخل الفصل والمحافظة على استمراريته.</h5>
           
               <h5><span>دعم المتعلمين :</span>مجموعة من الأنشطة التعليمية التعلمية التي يستخدمها المعلم إلى تدارك النقص الحاصل لدى المتعلمين خلال عملية التعلم.</h5>
          
               <h5><span>التقويم الصفي:</span>مجموعة من العمليات المنظمة تتضمن الملاحظة والوصف وجمع الأدلة والرصد والتصحيح وتفسير البيانات حول تعلم الطلاب , وتوظيفها لأغراض تعليمية مختلفة .</h5>
           </div>
       </div>

       <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="row item">
               <h5 style="color:#658C6F;">رابعأً: الأدوات المساندة لعملية التعليم والتعلم :</h5>
           </div>
            <div class="row table50-3">
               <table>
                   <thead>
                       <tr>
                           <th>م</th>
                           <th>الأدوات</th>
                           <th style="transform:rotate(-90deg)">مفعل</th>
                           <th>جوانب التميز*</th>
                           <th>مفعل إلى حد ما**</th>
                           <th style="transform:rotate(-90deg)">غير <br> مفعل**</th>
                           <th>الأسباب**</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td>1</td>
                           <td>يستخدم ويتابع كتاب الطالب</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>2</td>
                           <td>يستخدم ويتابع تطبيق كتاب النشاط</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>3</td>
                           <td>ينفذ تطبيقات وواجبات إضافية ويصححها للطلاب</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>4</td>
                           <td>يوظف كتاب دليل المعلم</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>5</td>
                           <td>يستخدم مصادر التعلم بكفاية</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>6</td>
                           <td>يوظف المعامل والمختبرات</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>7</td>
                           <td>يستخدم التقنية الحديثة كأداة توضيح وتحفيز يوظف التقنية في توضيح ومعالجة موضوعات التعلم.</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>8</td>
                           <td>يشجع الطلاب على الاستزادة من المعرفة حول موضوع الدرس</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>9</td>
                           <td>يحث الطلاب على الإفادة من مصادر التعلم المختلفة مثل)الانترنت , المراجع ...)</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>10</td>
                           <td>يشارك بفاعلية في الأنشطة المدرسية</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       
                   </tbody>
               </table>
           </div>
            <br/><br/>
            <div class="row item">
               <h5 style="color:#658C6F;">خامساً: الدعم المقدم من قائد المدرسة / وكيل الشئون التعليمية للمعلم :</h5>
           </div>
            <div class="row table50-4">
               <table>
                   <thead>
                       <tr>
                           <th colspan="6">الدعم المقدم للمعلم</th>
                       </tr>
                       <tr>
                           <th colspan="2">تاريخ الزيارة الأولى:</th>
                           <th colspan="2">تاريخ الزيارة الثانية:</th>
                           <th colspan="2">تاريخ الزيارة الثالثة</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                       </tr>
                       <tr>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                       </tr>
                       <tr>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                       </tr>
                       <tr>
                          <td colspan="2"></td>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                       </tr>
                       <tr>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                           <td colspan="2"></td>
                       </tr>
                        <tr id="a">
                           <td>المعلم: <br> التوقيع:</td>
                           <td>مقدم الدعم: <br> وظيفته:</td>
                           <td>المعلم: <br> التوقيع:</td>
                           <td>مقدم الدعم: <br> وظيفته:</td>
                           <td>المعلم: <br> التوقيع:</td>
                           <td>مقدم الدعم: <br> وظيفته:</td>
                       </tr>
                       
                   </tbody>
               </table>
           </div>
            <div class="row item">
               <h5 style="margin-right:80px">* في حال تفعيل الأدوات المساندة لعملية التعليم والتعلم يرجى ذكر جوانب التميز ( إن وجدت).</h5>
               <h5 style="margin-right:80px;">** في حال عدم التفعيل أو التفعيل لحد ما للأدوات المساندة لعملية التعليم والتعلم يرجى ذكر الأسباب.</h5>
           </div>
        </div>
    </form>
</body>
</html>
