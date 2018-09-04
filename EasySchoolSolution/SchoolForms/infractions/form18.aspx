<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form18.aspx.cs" Inherits="infractions_نماذج_form18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 18</title>
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
                <div class="col-xs-12">
                <h3 style="color:#009e9a;font-weight:900;margin-top:20px">تعهد</h3>
             </div>
               </div>
            <br />
            
            <div class="row" style="border: 1px solid black;">
            <div class="col-xs-8" style="text-align:right">
                <h4>أنا <b>الطالب /ة :</b> <asp:Literal ID="ltrStudentName" runat="server"></asp:Literal></h4>
            </div>
             <div class="col-xs-4" style="text-align:right">
                <h4><b>بالصف :</b> <asp:Literal ID="ltrClass" runat="server"></asp:Literal></h4>
            </div>
             <div class="col-xs-12" style="text-align:right">
                <h4>أقر بأنني ارتكبت في يوم / <asp:Literal ID="ltrViolationDay" runat="server" Text=".................."></asp:Literal> الموافق <asp:Literal ID="ltrViolationDate" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; / &shy; &shy; 14هـ"></asp:Literal> مخالفة سلوكية من الدرجة <asp:Literal ID="ltrViolationLevel" runat="server" Text="......................"></asp:Literal></h4>
                <h4><b>وهي </b> <asp:Literal ID="ltrViolation" runat="server" Text="..................................................................................................................................<br />
                    ........................................................................................................................................"></asp:Literal></h4>
            </div>
            <div class="col-xs-12">
                <h4>وأتعهد بعدم تكرار أي مخالفة سلوكية مستقبلاً.</h4>
                <h5><b>وعلى ذلك جرى التوقيع</b></h5>
            </div>
            <div class="col-xs-5" style="text-align:right">
                     <br>
                     <h5><b>اسم الطالب/ة :</b> <asp:Literal ID="ltrStudentNameSure" runat="server" Text="..............................."></asp:Literal></h5>
                     <h5><b>التوقيــــــــع:</b> .................................</h5>
                     <h5><b>التاريـــــــخ: &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;  / &shy; &shy; &shy; 14هـ</b></h5>
                </div>
                <div class="col-xs-3">
                </div>
                 <div class="col-xs-4" >
                     <h5><b>قائد/ة المدرسة</b></h5>
                     <h5 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="......................."></asp:Literal></h5>
                     <h5 style="text-align:right"><b>التوقيع:</b> ..............................</h5>
                     <h5 style="text-align:right"><b>التاريخ: &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;  / &shy; &shy; &shy; 14هـ</b></h5>
                </div>
            
             </div>
               
               <br /><br />
            
    <div class="row" style="border: 1px solid black;">
            <div class="col-xs-8" style="text-align:right">
                <h4>أنا ولي أمر <b>الطالب /ة :</b> <asp:Literal ID="ltrStudentGuardianName" runat="server"></asp:Literal></h4>
            </div>
             <div class="col-xs-4" style="text-align:right">
                <h4><b>بالصف :</b></h4>
            </div>
             <div class="col-xs-12" style="text-align:right">
                <h4>أُوبلغت بمخالفة ابني / ابنتي المتمثلة في <asp:Literal ID="ltrSureViolation" runat="server" Text="......................................................................................<br />
                    ......................................................................................................................................."></asp:Literal></h4>
            </div>
            <div class="col-xs-12">
                <h4 style="text-align:right">وسأقوم بالتعاون مع المدرسة في تعديل سلوكه/ها بما يحقق المصلحة العامة .</h4>
                <h5><b>وعلى ذلك جرى التوقيع</b></h5>
            </div>
                <div class="col-xs-4">
                     <h5><b> ولي الأمر </b></h5>
                     <h5><b>الاسم:</b> <asp:Literal ID="ltrStudentGuardianNameSure" runat="server" Text="..............................."></asp:Literal></h5>
                     <h5><b>التوقيع:</b> ..............................</h5>
                     <h5><b>التاريخ:</b> &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;   &shy; &shy;14هـ</h5>
                </div>
                <div class="col-xs-4">
                    <br /><br />
                    <h5><b>الختم</b></h5>
                </div>
                 <div class="col-xs-4" >
                     <h5 style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>قائد/ة المدرسة</b></h5>
                     <h5 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader2" runat="server" Text="......................."></asp:Literal></h5>
                     <h5 style="text-align:right"><b>التوقيع:</b> .....................</h5>
                     <h5 style="text-align:right"><b>التاريخ:</b> &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;  &shy;  14هـ</h5>
                </div>
       </div> 
        </div>
    </form>
</body>
</html>
