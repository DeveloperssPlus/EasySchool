<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form27.aspx.cs" Inherits="SchoolForms_form27" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 27</title>
    <link rel="stylesheet" type="text/css" href="lib/lib/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="lib/lib/bootstrap-rtl.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
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
            <h3>نموذج رقم (27)</h3>
       </div>
       <div class="container content" align="center">
           <div class="row sub-title">
             <div class="col-xs-6">
                   <h5>اسم النموذج : طلب صيانة</h5>
               </div> 
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-03-01)</h5>
               </div> 
           </div>
           <div class="row" align="right" style="margin-right: 30px;"> &shy;
               <div class="col-xs-12">
                   <h5>طلب صيانة للعام الدراسي <asp:Literal ID="ltrSchYear" runat="server" Text="......"></asp:Literal> 14 هـ / الفصل ( <asp:Literal ID="ltrSemester" runat="server" Text="......"></asp:Literal> )</h5>
               </div>
               <div class="col-xs-12">
                   <h5>معلومات عن المدرسة</h5>
               </div>
               <div class="col-xs-4">
                   <h5>اسم المدرسة / <asp:Literal ID="ltrSchName" runat="server" Text="......................"></asp:Literal></h5>
               </div>
               <div class="col-xs-4">
                   <h5>المرحلة / <asp:Literal ID="ltrLevel" runat="server" Text="......................"></asp:Literal></h5>
               </div>
               <div class="col-xs-4">
                   <h5>الرقم بالوزارة / <asp:Literal ID="ltrNoOrg" runat="server" Text="......................"></asp:Literal></h5>
               </div>
               <div class="col-xs-4">
                   <h5>رقم هاتف المدرسة / <asp:Literal ID="ltrTelSch" runat="server" Text="......................"></asp:Literal></h5>
               </div>
               <div class="col-xs-6">
                   <h5>رقم جوال مدير المدرسة / <asp:Literal ID="ltrTelLeader" runat="server" Text="......................"></asp:Literal></h5>
               </div>
               <div class="col-xs-12">
                   <h5>نوع الصيانة المطلوبة:</h5>
               </div>
               <div class="col-xs-4">
                   <h5>كهرباء</h5>
               </div>
               <div class="col-xs-6">
                   <h5>نجارة</h5>
               </div>
               <div class="col-xs-4">
                   <h5>سباكة</h5>
               </div>
               <div class="col-xs-6">
                   <h5>تبريد</h5>
               </div>
               <div class="col-xs-4">
                   <h5>تكييف</h5>
               </div>
               <div class="col-xs-6">
                   <h5> ( صيانة ) كراسي وطاولات </h5>
               </div>
               <div class="col-xs-12">
                   <h5>أخرى تذكر :.......................................</h5>
               </div>
               <div class="col-xs-12">
                   <h5>آمل تكليف فريق الصيانة بعمل ما يلي :</h5>
               </div>
               <div class="col-xs-12">
                   <h5>1-.......................................</h5>
               </div>
               <div class="col-xs-12">
                   <h5>2-.......................................</h5>
               </div>
               <div class="col-xs-12">
                   <h5>3-.......................................</h5>
               </div>
               <div class="col-xs-12">
                   <h5>4-.......................................</h5>
               </div>
              <br />
               <div class="col-xs-3">
                   <h5>نوع الطلب:</h5>
               </div>
               <div class="col-xs-3">
                   <h5>عاجل</h5>
               </div>
               <div class="col-xs-3">
                   <h5>عاجل جداَ</h5>
               </div>
               <br />
               <div class="col-xs-4">
                   <h5>متى يمكن إجراء أعمال الصيانة:</h5>
               </div>
               <div class="col-xs-4">
                   <h5>في الصباح فقط</h5>
               </div>
               <div class="col-xs-4">
                   <h5>في الصباح أو المساء</h5>
               </div>
               <br />
               <div class="col-xs-12">
                   <h5>ملحوظة : عند اختيار الصيانة في وقت الصباح فقط قد يؤخر ذلك إجراء الصيانة.</h5>
               </div>
               <div class="col-xs-12">
                   <h5>وكيل الشؤون المدرسية / <asp:Literal ID="ltrUndersecretarySchoolAffairs" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-12">
                   <h5>التوقيع ....................</h5>
               </div>
               <div class="col-xs-12">
                   <h5>قائد المدرسة / <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-12">
                   <h5>التوقيع ....................</h5>
               </div>
           </div>
        </div>
    </div>
    </form>
</body>
</html>
