<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form72.aspx.cs" Inherits="SchoolForms_form72" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 72</title>
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
                <h3>نموذج رقم (72)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج: طلب ( إصدار / إلغاء / تعديل ) وثيقة </h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج: (م.م.ع.ن-08-02)</h5>
                   </div> 
               </div>
               <div class="row sub-par">
                   <div class="col-xs-6">
                       <h5 class=" text-right">رقم الإصدار : <asp:Literal ID="ltrIssueNumber" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>تاريخ الإصدار : <asp:Literal ID="ltrIssueDate" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>اولاً: الجهة المعنية : <asp:Literal ID="ltrConcernedParty" runat="server" Text=".............................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>التاريخ <asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; &shy; / &shy;  &shy;  &shy; /  &shy;  &shy;  &shy;"></asp:Literal> 14 هــ</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>ثانياً: نوع واسم الوثيقة : <asp:Literal ID="ltrTypeNameDocument" runat="server" Text="......................................................................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>ثالثاً: رمز الوثيقة : <asp:Literal ID="ltrDocumentSymbol" runat="server" Text="...................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>رقم الإصدار : <asp:Literal ID="ltrIssueNumber1" runat="server" Text="......................"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>تاريخ الإصدار <asp:Literal ID="ltrIssueDate1" runat="server" Text="&shy; &shy; &shy; / &shy;  &shy;  &shy; /  &shy;  &shy;  &shy;"></asp:Literal> 14 هــ</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>رابعاً: ملخص المطلوب وسببه :</h5>
                   </div>
                   <div class="col-xs-2">
                       <h5> <asp:CheckBox ID="chkVersion" runat="server" Text="إصدار" /></h5>
                   </div>
                   <div class="col-xs-2">
                       <h5><asp:CheckBox ID="chkEdit" runat="server" Text="تعديل" /> </h5>
                   </div>
                   <div class="col-xs-2">
                       <h5><asp:CheckBox ID="chkCancel" runat="server" Text="إلغاء" /></h5>
                   </div>
                   <div class="col-xs-12">................................................................................................................................................................</div>
                   <div class="col-xs-12">................................................................................................................................................................</div>
               </div>
               <div class="col-xs-4">
                   <h5>مقدم الطلب  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; </h5>
               </div>
               <div class="col-xs-4">
                   <h5>الاسم <asp:Literal ID="ltrName" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-4">
                   <h5>التوقيع</h5>
               </div>
               <div class="col-xs-4" style="margin-right:28px;">
                   <h5>خامساً: رأي مسؤول جهة الإصدار :</h5>
               </div>
               <div style="margin-right:40px">
                   <div class="col-xs-12">................................................................................................................................................................</div>
                   <div class="col-xs-12">................................................................................................................................................................</div>
               </div>
               </div>
               <div class="col-xs-4" style="margin-right:50px">
                   <h5>الاسم <asp:Literal ID="ltrName1" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-3">
                   <h5>التوقيع</h5>
               </div>
               <div class="col-xs-4">
                   <h5>التاريخ <asp:Literal ID="ltrDate1" runat="server" Text="&shy;  /   &shy; /  &shy;"></asp:Literal> 14 هــ</h5>
               </div>
               <div class="col-xs-5" style="margin-right:50px">
                   <h5>سادساَ: رأي مسؤول الجهة المتأثرة بالوثيقة :</h5>
               </div>
               <div class="col-xs-4">
                   <h5>اسم الجهة : <asp:Literal ID="Literal1" runat="server"></asp:Literal></h5>
               </div>
               <div style="margin-right:40px">
                   <div class="col-xs-12">................................................................................................................................................................</div>
                   <div class="col-xs-12">................................................................................................................................................................</div>
               </div>
               </div>
               <div class="col-xs-3" style="margin-right:50px">
                   <h5>الاسم <asp:Literal ID="ltrName2" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-2" style="margin-right:30px">
                   <h5>التوقيع</h5>
               </div>
               <div class="col-xs-3" style="margin-right:50px">
                   <h5>التاريخ <asp:Literal ID="ltrDate2" runat="server" Text="&shy;  /   &shy; /  &shy;"></asp:Literal> 14 هــ</h5>
               </div>
               <div class="col-xs-12" style="margin-right:50px">
                   <h5><asp:CheckBox ID="CheckBox1" runat="server" Text="في حالة وجود أكثر من جهة ترفق موافقاتهم وتوقيعاتهم في جدول يبين الجهة و ر أيها و توقيع المسؤول ." /></h5>
               </div>
               <div class="col-xs-5" style="margin-right:50px">
                   <h5>سابعاَ : قرار معتمد الوثيقة : ( رئيس لجنة التميز والجودة )</h5>
               </div>
               <div style="margin-right:40px">
                   <div class="col-xs-12">................................................................................................................................................................</div>
                   <div class="col-xs-12">................................................................................................................................................................</div>
               </div>
               <div class="col-xs-2" style="margin-right:50px">
                   <h5>اليوم <asp:Literal ID="ltrDay" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-2">
                   <h5>التاريخ <asp:Literal ID="ltrDate3" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-2">
                   <h5>الاسم <asp:Literal ID="ltrName3" runat="server"></asp:Literal></h5>
               </div>
               <div class="col-xs-2" style="margin-right:30px">
                   <h5>التوقيع</h5>
               </div>
               <div class="col-xs-2">
                   <h5>الوظيفة <asp:Literal ID="ltrJob" runat="server"></asp:Literal></h5>
               </div>
    </form>
</body>
</html>
