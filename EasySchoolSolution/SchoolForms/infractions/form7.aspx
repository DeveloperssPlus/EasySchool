<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form7.aspx.cs" Inherits="infractions_نماذج_form7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 7</title>
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
                       <h3 style="font-weight:900;">إحالة إلى لجنة التوجيه والإرشاد في المدرسة</h3>
             </div><br />
            <div class="row">
            <div class="col-xs-12" style="text-align:right">
                <h3><b>أعضاء لجنة التوجيه والإرشاد</b></h3>
                <h3 style="text-align:center" >السلام عليكم ورحمة الله وبركاته</h3>
             </div>
            <div class="col-xs-12" style="text-align:right">
                <h3>نحيل إليكم <b>الطالب/ة</b><asp:Literal ID="ltrStudentName" runat="server" Text="................................"></asp:Literal><b> بالصف : </b>
                         <asp:Literal ID="ltrClass" runat="server" Text="................................"></asp:Literal></h3>
                <br/>
                       <h3>  لتكرار المخالفة السلوكية من الدرجة / <asp:Literal ID="ltrLevel" runat="server" Text="......................................................."></asp:Literal></h3>
                       <h3><b>وهي :</b> <asp:Literal ID="ltrViolation" runat="server" Text="......................................................................................<br />.................................................................................................."></asp:Literal></h3>
             </div>
            
             <div class="col-xs-12"  style="text-align:right">
                 
                       <h3>حيث طبقت الإجراءات الخاصة بالحالة وبعد دراستها تبين مدى الحاجة إلى المشاركة في المتابعة والعلاج , لذا</h3>
                       <h3>نأمل منكم وضع الحلول المناسبة لمخالفات الطالب/ة وذلك بالرجوع إلى قواعد السلوك والمواظبة وتقرير دراسة</h3>
                       <h3> من المرشد الطلابي .</h3>
                       <br />
                       <h3 style="text-align:center"><b>والسلام عليكم ورحمة الله وبركاته</b></h3>
                        <br />
             </div>
               
        </div>
        <div class="row">
                <div class="col-xs-5">
                     <h3><b>الختم</b></h3>
                </div>
                <div class="col-xs-3">
                </div>
                 <div class="col-xs-4" >
                     <h3 style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>قائد/ة المدرسة</b></h3>
                     <h3 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="......................."></asp:Literal></h3>
                     <h3 style="text-align:right"><b>التوقيع:</b> .....................</h3>
                     <h3 style="text-align:right"><b>التاريخ:</b> &shy; &shy;  &shy; / &shy; &shy;  &shy; / &shy;  &shy; &shy; 14هـ</h3>
                 </div>
           </div>
        </div>
    </form>
</body>
</html>
