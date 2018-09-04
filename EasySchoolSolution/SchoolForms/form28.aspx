<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form28.aspx.cs" Inherits="TahaniSchoolForms_form28" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 28</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .check
        {
            margin-right:40px;
        }
        #row
        {
            margin-right:30px;
            margin-top:30px;
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
            <h3>نموذج رقم (28)</h3>
       </div>
       <div class="container content" align="center">
           <div class="row sub-title">
             <div class="col-xs-6">
                   <h5>اسم النموذج : استمارة موافقة ولي أمر الطالب للاشتراك في النقل الدراسي</h5>
               </div> 
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-04-01)</h5>
               </div> 
           </div>
           <div class="row" align="right" id="row">
               <div class="col-xs-12">
                   <h5>المكرم ولي أمر الطالب / <asp:Literal ID="ltrParentName" runat="server" Text="....................................................................."></asp:Literal> المحترم</h5>
               </div>
               <div class="col-xs-12">
                   <h5>السلام عليكم ورحمة الله وبركاته</h5>
               </div>
               <div class="col-xs-12">
                   <h5>تقوم المدرسة بتسجيل الطالب الراغب في الاشتراك في النقل المدرسي ، وعليه نأمل موافاتنا<br>
بموافقتكم أو عدمها ليتسنى لنا إجراء اللازم .</h5>
               </div>
               <div class="row">
                   <asp:CheckBox ID="CheckBox1" runat="server" Text="موافق" class="check"/><br />
                   <asp:CheckBox ID="CheckBox2" runat="server" Text="غير موافق" class="check"/>

               </div>
               <div class="row">
                   <div class="col-xs-6">
                       
                       <h5>اسم ولي الأمر <asp:Literal ID="ltrParentName1" runat="server" Text=".........................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>التوقيع ................................</h5>
                   </div>
                   <div class="col-xs-6">
                       
                       <h5>هاتف المنزل <asp:Literal ID="ltrHomePhone" runat="server" Text="..........................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       
                       <h5>جوال <asp:Literal ID="ltrMobile" runat="server" Text="................................"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-7"></div>
                   <div class="col-xs-5">
                       <h5>قائد المدرسة</h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>في حال الموافقة يرجى رسم توضيحي لعنوان المنزل</h5>
                   </div>
                   <div class="col-xs-12" style="text-align:center">
                       <h4>كروكي توضيحي لموقع المنزل</h4>
                   </div>
               </div>
               <div class="container">
                       <div style="border:1px dotted #000;width:80%;height:300px">
                       </div>
                   </div>
           </div>
        </div>
    </div>
    </form>
</body>
</html>
