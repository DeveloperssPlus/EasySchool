<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form14.aspx.cs" Inherits="infractions_نماذج_form14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 14</title>
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
        </div>
        <div class="row" style="text-align:right">
                <div class="col-xs-9">
                       <h4><b>سعادة مدير عام التعليم بمنطقة </b>.................................................................</h4>
                </div>
                <div class="col-xs-3">
                       <h4 style="font-weight:900;">وفقه الله</h4>
                </div>
                <div class="col-xs-9">
                       <h4><b>سعادة مدير التعليم بمحافظة </b>....................................................................</h4>
                </div>
                <div class="col-xs-3">
                       <h4 style="font-weight:900;">وفقه الله</h4><br/>
              </div>
       </div>
        <div class="row">
                <h3 style="text-align:center" >السلام عليكم ورحمة الله وبركاته</h3><br />
        </div>
        <div class="col-xs-12" style="text-align:right">
                  <h3>نفيد سعادتكم بأن الطالب/ة : <asp:Literal ID="ltrStudentName" runat="server" Text="........................."></asp:Literal> &shy;بالصف : <asp:Literal ID="ltrClass" runat="server" Text="......................."></asp:Literal></h3>
                  <h3>وجنسيته : <asp:Literal ID="ltrNationality" runat="server" Text="........................."></asp:Literal> رقم السجل المدني/الإقامة : <asp:Literal ID="ltrCivilRegistry" runat="server" Text="......................."></asp:Literal></h3>
                  <h3>قد ارتكب/ت مخالفة سلوكية من الدرجة <asp:Literal ID="ltrLevel" runat="server" Text="...................."></asp:Literal></h3>
                  <h3><b> وهي </b> <asp:Literal ID="ltrViolation" runat="server" Text="............................................................................................<br />
                  ......................................................................................................"></asp:Literal></h3> 
             </div>
            <div class="col-xs-12" style="text-align:right">
                  <h3>وبناءً عليه اجتمعت لجنة التوجيه والإرشاد في المدرسة عقب وقوع المخالفة مباشرة , ودرست القضية وملابساتها وفق ما نصت عليه قواعد السلوك والماظبة وخرجت بمحضر اجتماع رقم <asp:Literal ID="ltrMeetingNumber" runat="server" Text="................."></asp:Literal> وتاريخ <asp:Literal ID="ltrMeetingDate" runat="server" Text="&shy; &shy; &shy;  /  &shy; &shy; &shy;/ &shy; &shy; &shy; <b>14 هــ</b>"></asp:Literal></h3>
                  <h3>نرفع لسعادتكم المحضر أعلاه , ونأمل التكرم باتخاذ ما ترونه مناسباً حيال ذلك .</h3>
             </div>
        <div class="col-xs-12">
                    <h3>والسلام عليكم ورحمة الله وبركاته</h3>
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
                     <h3 style="text-align:right"><b>التاريخ:</b> &shy; &shy;  &shy; &shy; / &shy; &shy;  &shy; &shy; / &shy;  &shy;  14هـ</h3>
                </div>
           </div>
    </div>
    </form>
</body>
</html>
