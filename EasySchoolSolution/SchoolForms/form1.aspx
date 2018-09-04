<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="TahaniSchoolForms_form1" %>

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

    <style>
        #A12
        {
            margin-right: 25px;
        }
        #a12
        {
            margin-right:5px;
        }
        .H5
        {
            color: #5A3F60;
            text-align: right;
            font-weight:bold;
            font-size:15px;
        }
        #A11
        {
            margin-right:12px;
        }
        #A10
        {
            margin-right:5px;
        }
        #box1
        {
            border-top:none;
            background-color: #EBF0EA;
        }
        #A13
        {
            margin-right: 25px;
        }
        #a13
        {
            margin-right: 25px;
        }
        #A14
        {
            margin-right: 15px;
        }
        #A9
        {
            margin-right:10px;
        }
        #a9
        {
            margin-right:10px;
        }
        #A8
        {
            border-top:none;
        }
        #a8
        {
            border-top:none;
        }
        #a81
        {
            border-top:none;
        }
        #box2
        {
            margin-top:200px;
            background-color: #EBF0EA;
        }
        #A7
        {
            margin-right:22px;
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
                <h3>نموذج رقم (1)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                   <div class="col-xs-6">
                       <h5>طلب تحويل من مدارس تحفيظ القرآن الكريم والمعاهد العلمية الى التعليم العام</h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-01-01)</h5>
                   </div>
               </div>
               <div class="box">
                   <div class="row">
                       <div class="col-xs-12" id="A12">
                           <h5 class="H5">أولاَ: بيانات عامة:</h5>
                       </div>
                       <div class="row">
                           <div class="col-xs-8">
                               <h5>الاسم رباعياً: <asp:Literal ID="ltrNameQuadrilateral" runat="server" Text="....................................................."></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الجنسية <asp:Literal ID="ltrNationality" runat="server" Text="......................."></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-8">
                               <h5>تاريخ الميلاد <asp:Literal ID="ltrDateOFBirth" runat="server" Text="....................................................."></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الصف الدراسي : <asp:Literal ID="ltrClassRoom" runat="server" Text="..........."></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-8">
                               <h5> آخر شهادة دراسية حصل عليها : <asp:Literal ID="ltrLastCertificateObtained" runat="server" Text="................................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>مصدرها : <asp:Literal ID="ltrCertificateIssuer" runat="server" Text="..................."></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-10">
                               <h5>تاريخ الحصول عليها : <asp:Literal ID="ltrCertificateDate" runat="server" Text="................................................................."></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-5" id="A11">
                               <h5>نوع الطلب : تحويل من التعليم العام</h5>
                           </div>
                           <div class="col-xs-5">
                               <h5>إلى: <asp:Literal ID="ltrConvertTo" runat="server" Text=".........................................."></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-4" id="A10">
                               <h5>نوع الدراسة المطلوبة:</h5>
                           </div>
                           <div class="col-xs-3">
                               <h5>* مسائي</h5>
                           </div>
                           <div class="col-xs-2">
                               <h5>* ليلي</h5>
                           </div>
                           <div class="col-xs-2">
                               <h5>* انتساب</h5>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="box" id="box1">
                   <div class="row">
                       <div class="col-xs-12" id="A13">
                           <h5 class="H5">ثانياَ: التحصيل الدراسي</h5>
                       </div>
                       <div class="col-xs-11">
                           <h5>عدد سنوات الإعادة في الصف الدراسي الحالي ( إن وجدت ) ومواد الرسوب لكل سنة دراسية :</h5>
                       </div>
                       <div class="col-xs-12">
                           <h5>عدد سنوات الانقطاع من الدراسة ( إن وجدت ) <asp:Literal ID="ltrDiscontinuityYears" runat="server" Text="..............................................................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-12">
                           <h5>أسباب الانقطاع <asp:Literal ID="ltrDiscontinuityReasons" runat="server" Text=".................................................................................................."></asp:Literal></h5>        
                       </div>
                       <div class="col-xs-6" id="A14">
                           <h5>تقدير الطالب دلى نجاحه في الصفين السابقين نصفه:</h5>
                       </div>
                       <div class="col-xs-6">
                           <h5>ناجح من الصف <asp:Literal ID="ltrSuccessfulGrade1" runat="server" Text=".............................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-6">
                           <h5>في العام الدراسي <asp:Literal ID="ltrSuccessfulYear1" runat="server" Text="................................"></asp:Literal></h5>
                       </div>
                       <div class="row">
                           <div class="col-xs-5" id="A9">
                               <h5>وتقديره العام <asp:Literal ID="ltrOverallAssessment1" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                       </div>
                       <div class="col-xs-6">
                           <h5>ناجح من الصف <asp:Literal ID="ltrSuccessfulGrade2" runat="server" Text=".............................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-6">
                           <h5>في العام الدراسي <asp:Literal ID="ltrSuccessfulYear2" runat="server" Text="................................"></asp:Literal></h5>
                       </div>
                       <div class="row">
                           <div class="col-xs-5" id="a9">
                               <h5>وتقديره العام <asp:Literal ID="ltrOverallAssessment2" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="box" id="A8">
                   <div class="row">
                       <div class="col-xs-8">
                           
                           <h5>تم تحويل الاستمارة إلى إدارة التعليم برقم <asp:Literal ID="ltrFormNo" runat="server" Text="........................"></asp:Literal></h5>
                       </div>
                       <div class="col-xs-4">
                           <h5>وتاريخ <asp:Literal ID="ltrFormDate" runat="server" Text="........................"></asp:Literal></h5>
                       </div>
                       <div class="col-xs-8">
                           <h5>قائد المدرسة <asp:Literal ID="ltrSchoolCommander" runat="server" Text="......................................................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-4">
                           <h5>التوقيع ....................</h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>ختم المدرسة</h5>
                       </div>
                   </div>
               </div>
               <div class="box" id="box2">
                   <div class="row">
                       <div class="col-xs-12" id="a13">
                           <h5 class="H5">ثالثاَ: دراسة وضع الطالب:</h5>
                       </div>
                       <div class="col-xs-12">
                           
                           <h5>الأسباب التي أبداها الطالب للتحويل : <asp:Literal ID="ltrShiftReasons" runat="server" Text=".........................................................................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-12">
                           <h5>التعرف على الدوافع الحقيقية للطالب : <asp:Literal ID="Literal1" runat="server" Text="........................................................................"></asp:Literal></h5>
                       </div>
                       <div class="col-xs-12">
                           <h5>مدى موافقة ولي أمر الطالب : <asp:Literal ID="ltrConsentParentStudnet" runat="server" Text="..............................................................................."></asp:Literal></h5>
                       </div>
                       <div class="row">
                           <div class="col-xs-6">
                               <h5>مدى موافقة جهة عمله ( إن وجدت ) &shy; &shy;</h5>
                           </div>
                       </div>
                       <div class="col-xs-4">
                           <h5>الخدمات المقدمة له :</h5>
                       </div>
                       <div class="col-xs-9">
                           <h5>تبصيره بالفرص التعليمية والمهنية المتاحة له في مجال دراسته الحالي .</h5>
                       </div>
                       <div class="col-xs-10">
                           <h5>تبصيره بما يترتب على تحويله من إطالة أمد دراسته وتشتيت لجهده السابقة . &shy; &shy; &shy; &shy; &shy;</h5>
                       </div>
                       <div class="col-xs-9">
                           <h5>مساعدته على اتخاذ القرار المناسب لتحديد مستقبله التعليمي والمهني . &shy; </h5>
                       </div>
                       <div class="col-xs-9">
                           <h5>نتائج الخدمات الإرشادية: أ- تم إقناع الطالب ويواصل دراسته الحالية .</h5>
                       </div>
                       <div class="row">
                           <div class="col-xs-6" id="A7">
                               <h5>لم يقتنع الطالب وهو يرغب في إنجاز تحويله .</h5>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-xs-5" id="a12">
                               <h5>مرئيات اللجنة بشأن الطالب:</h5>
                           </div>
                       </div>
                       <div class="col-xs-6">
                           <h5>يسمح له بالتحويل</h5>
                       </div>
                       <div class="col-xs-4">
                           <h5>لا يسمح له</h5>
                       </div>
                       <div class="col-xs-9">
                           <h5>أحيل الطالب إلى قسم خدمة الطلاب برقم : <asp:Literal ID="ltrStudnetNo" runat="server" Text=".............................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>تاريخ <asp:Literal ID="ltrShiftStudnetDate" runat="server" Text="................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-9">
                           
                           <h5>مرئيات مدير التعليم : <asp:Literal ID="ltrVisualsDirectorEducation" runat="server" Text="....................................................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-9">
                           <h5>توقيع مدير التعليم : .......................................................</h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>الختم&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;</h5>
                       </div>
                   </div>
               </div>
               <div class="box" id="a8">
                   <div class="row">
                       <div class="col-xs-9">
                           <h5>تم تحويل الاستمارة إلى المدرسة برقم: <asp:Literal ID="ltrFormShiftNo" runat="server" Text="..................................."></asp:Literal></h5>
                       </div>
                       <div class="col-xs-3">
                           <h5>تاريخ <asp:Literal ID="ltrShiftFormDate" runat="server" Text="................."></asp:Literal></h5>
                       </div>
                   </div>
               </div>
               <div class="box" id="a81">
                   <div class="row">
                       <p>ملاحظة: تشفع الاستمارة:  1) آخر شهادة حصل عليها الطالب . 2) شهادة حسن سيرة وسلوك . 3) موافقة جهة
<br/> العمل ( إن وجدت ) .</p>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
