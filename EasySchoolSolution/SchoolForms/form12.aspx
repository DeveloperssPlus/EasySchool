<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form12.aspx.cs" Inherits="SchoolForms_form12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 12</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .head
        {
            background: #658C6F; 
            color: #fff;
        }
        .bold
        {
            font-weight:bold;
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
            <h3>نموذج رقم (12)</h3>
        </div>
        <div class="container content" align="center">
            <div class="row sub-title">
                <div class="col-xs-6">
                    <h5>اسم النموذج : أمر مطالبة  </h5>
                </div>
                <div class="col-xs-6">
                    <h5>رمز النموذج : (م.م.ع.ن-01-02)</h5>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12"><h5>إلى مدير مكتب التعليم في <asp:Literal ID="ltrSchoolName" runat="server" Text=".................................................................................................."></asp:Literal> وفقه الله</h5></div>
                
                <div class="col-xs-12"><h5>إلى مدير الشؤون المالية بالإدارة <asp:Literal ID="ltrManagerName" runat="server" Text="............................................................................................"></asp:Literal> وفقه الله</h5></div>
                <div class="col-xs-9"><h5>بشأن طلب صرف تعويض من الميزانية التشغيلية للمدارس .</h5></div>
                <div class="col-xs-12">
                    <div class="col-xs-8" style="margin-right:13px;"><h5>السلام عليكم ورحمة الله وبركاته</h5></div>
                    <div class="col-xs-12" style="padding-right:12px;"><p>إشارة إلى القرار رقم 32671078 / 1 في 17 / 4/ 1432 هــ المتضمن منح المدارس ميزانية تشغيلية عليه فإن المدرسة<br>
     قام بصرف المبالغ الموضحة في الفواتير المرفقة البالغ مجموع قيمتها (<asp:Literal ID="ltrAmount" runat="server" Text="..................."></asp:Literal>) ريالا لقاء تأمين احتياجات المدرسة<br>
    حسب بند <asp:Literal ID="ltrItem" runat="server" Text=".........................."></asp:Literal> لذا نرجو التكرم بإكمال الإجراءات اللازمة للتعويض عما تم صرفه . وبرفقه أصل الفواتير<br>
    للمبلغ المطلوب .&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;  &shy; &shy; &shy; &shy; &shy;</p>
                    </div>
                </div>
                <div class="col-xs-5" style="margin-right:40px;">
                    <h5>شاكرا تجاوبكم ..... والسلام عليكم ورحمة الله وبركاته</h5>
                </div>
            </div>
            <div class="row table11"  style="margin-right:5px;">
                <table>
                       <tr>
                           <th colspan="3"></th>
                           <th class="head">قائد المدرسة ورئيس <br/>لجنة الصندوق المدرسي</th>
                       </tr>
                       <tr>
                           <td class="head">أعضاء اللجنة : </td>
                           <td></td>
                           <td></td>
                           <td>الاسم / <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td class="head">وكيل المدرسة / المعلم</td>
                           <td class="head">المرشد الطلابي / المعلم</td>
                           <td class="head">رائد النشاط / المعلم</td>
                           <td>التوقيع / </td>
                       </tr>
                       <tr>
                           <td>الاسم</td>
                           <td>الاسم</td>
                           <td>الاسم</td>
                           <td>التاريخ: <asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; / &shy; &shy; / &shy; 143 هــ"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td>التوقيع </td>
                           <td>التوقيع </td>
                           <td>التوقيع </td>
                           <td>الختم الرسمي</td>
                       </tr>
                </table>
                <div class="box">
                    <div class="row text-right ">
                        <div class="col-xs-12"><h6 class="bold">تم التأكد من اكتمال المستندات اللازمة المذكورة والمرفقة وتدقيقها .</h6></div>
                        <div class="col-xs-12"><h6 class="bold">اسم الموظف المختص</h6></div>
                        <div class="col-xs-12"><h6 class="bold">التاريخ  <asp:Literal ID="Literal5" runat="server" Text="&shy; &shy; / &shy; &shy; / &shy; 14 هــ"></asp:Literal></h6></div>
                        <div class="col-xs-12"><h6 class="bold">الختم</h6></div>
                    </div>
                </div>
            </div>
            <div class="row end">
                <div class="col-xs-8">
                    <h5>* خاص بالمدقق في مكتب التعليم / الشؤون المالية بالإدارة .</h5>
                </div>
            </div>
        </div>
    </div>
    </form>
   
</body>
</html>
