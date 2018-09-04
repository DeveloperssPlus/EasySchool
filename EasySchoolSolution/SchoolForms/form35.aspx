<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form35.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 35</title>
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
                <h3>نموذج رقم (35)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : موافقة ولي الأمر لمشاركة ابنه في نشاط مدرسي</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-05-02)</h5>
                   </div> 
               </div>
               <div class="row sub-par" style="padding-right:50px;">
                   <div class="col-xs-6">
                       <h5>العام الدراسي 14 هــ / <asp:Literal ID="ltrYears" runat="server" Text=".............."></asp:Literal>الفصل <asp:Literal ID="ltrSemester" runat="server" Text="(............)"></asp:Literal></h5>
                   </div>
               </div>
               <div class="row" style="margin-top:20px;margin-right:40px" align="right">
                   <div class="col-xs-8">
                       <h5>المكرم ولي أمر الطالب :<asp:Literal ID="ltrGuardianStudent" runat="server" Text=".............."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>حفظه الله</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>السلام عليكم ورحمة الله وبركاته وبعد :</h5>
                   </div>
                   <div class="row">
                       <div class="col-xs-3" style="margin-right:12px">
                           <h5>تعتزم المدرسة بقيام ب</h5>
                       </div>
                       <div class="col-xs-1">
                           <h5>رحلة</h5>
                       </div>
                       <div class="col-xs-1">
                           <h5>زيارة</h5>
                       </div>
                       <div class="col-xs-1">
                           <h5>مشاركة</h5>
                       </div>
                       <div class="col-xs-2">
                           <h5>أخرى تذكر</h5>
                       </div>
                   </div>
                   <div class="col-xs-12">
                       <p>وذلك يوم / <asp:Literal ID="ltrDay" runat="server" Text=".............."></asp:Literal> الموافق <asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; &shy; &shy;/&shy; &shy; &shy; &shy;/&shy; &shy; &shy; &shy;"></asp:Literal> 14 هــ من الساعة (<asp:Literal ID="ltrTimeGo" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) صباحاً / مساء وستكون العودة<br/>
بمشيئة الله الساعة (<asp:Literal ID="Literal1" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) وقد تم ترشيح أبنكم ضمن الطالب المشاركين في هذا النشاط عليه <br/>
نأمل موافاتنا بموافقتكم أو عدمها ليتسنى لنا إجراء اللازم .
                      </p>
                   </div>
                   <div class="col-xs-6"></div>
                   <div class="col-xs-6">
                       <h5>قائد المدرسة / <asp:Literal ID="ltrleaderSchool" runat="server" Text=".............."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>رأي ولي الأمر : <asp:Literal ID="ltrOpinionGuardian" runat="server" Text=".............."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-2">
                       <h5>موافق</h5>
                   </div>
                   <div class="col-xs-2">
                       <h5>غير موافق</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>اسم ولي الأمر : <asp:Literal ID="ltrNameGuardian" runat="server" Text=".............."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>التوقيع : </h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>ملاحظة <br/> يجب إعادة هذا الخطاب للمدرسة بعد إطلاع وتوقيع ولي الأمر .</h5>
                   </div>
               </div>
            </div>
        </div>
</body>
</html>
