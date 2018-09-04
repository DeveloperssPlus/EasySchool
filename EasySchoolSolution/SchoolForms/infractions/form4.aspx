<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form4.aspx.cs" Inherits="infractions_نماذج_form4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 4</title>
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
                       <h3 style="font-weight:900;">إشعار ولي أمر الطالب/ة</h3>
             </div>
               <br /><br />
        <div class="row">
            <div class="col-xs-12" style="text-align:right">
                <h3><b>المكرم ولي أمر الطالب/ة</b>&shy; <asp:Literal ID="ltrGuardianName" runat="server" Text="..............................."></asp:Literal> <b>بالصف </b>/&shy; <asp:Literal ID="ltrClass" runat="server" Text="......................"></asp:Literal></h3>
                
                <h3 style="text-align:center" >السلام عليكم ورحمة الله وبركاته</h3>
             </div>
            <div class="col-xs-12" style="text-align:right">
                <h3>نشعركم بأن ابنكم / ابنتكم ارتكب/ت مخالفة سلوكية من الدرجة <asp:Literal ID="ltrLevel" runat="server" Text="........................................................................."></asp:Literal></h3>
              <br/>
                <h3><b>وهي :</b> <asp:Literal ID="ltrViolation" runat="server" Text="........................................................................................................................................"></asp:Literal></h3>
             </div>
            
             <div class="col-xs-12" style="text-align:right">
              
              <h3><b>وقد تم قُررت الإجراءات التالية حياله/ها وفق ما ورد في قواعد السلوك والمواظبة :</b></h3>  
                 <h4>1...................................................................................................................................................................................................</h4>
                 <h4>2...................................................................................................................................................................................................</h4> 
                 <h4>3...................................................................................................................................................................................................</h4>
                 <h4>4...................................................................................................................................................................................................</h4> 
                 <h4>5...................................................................................................................................................................................................</h4> 
                 <h4>6...................................................................................................................................................................................................</h4>
             </div>
               
             <div class="col-xs-12">
                 
                       <h3><b>لذا يرجى منك المتابعة والتعاون مع المدرسة بما يسهم في انضباط السلوك .</b></h3>
                       
             </div>
               
        </div>
        <div class="row">
                <div class="col-xs-5" style="text-align:right">
                     <h3><b>توقيع ولي الأمر بالاستلام</b></h3>
                     <h3><b>الاسم:</b> <asp:Literal ID="ltrStudentGuardianName" runat="server" Text="..............................."></asp:Literal></h3>
                     <h3><b>التوقيع:</b> ..............................</h3>
                     <h3><b>التاريخ: &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;   &shy; &shy;14هـ</b></h3>
                </div>
                <div class="col-xs-3">
                </div>
                 <div class="col-xs-4" >
                     <h3 style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>قائد/ة المدرسة</b></h3>
                     <h3 style="text-align:right"><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="......................."></asp:Literal></h3>
                     <h3 style="text-align:right"><b>التوقيع:</b> .....................</h3>
                     <h3 style="text-align:right"><b>التاريخ: &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;  &shy; &shy; 14هـ</b></h3>
                </div>
           </div>
               <br/><br/>
    <div class="row">
        <div class="col-xs-9" style="text-align:right">       
            <h3><b>ملحوظة:</b> يسلم الطالب/ة الأصل, وتحتفظ إدارة المدرسة بصورة منه بعد التوقيع.</h3>
         </div>
        <div class="col-xs-3">
            <h3><b>الختــــم</b></h3>
        </div>
    </div> 
        </div>       
    </form>
</body>
</html>
