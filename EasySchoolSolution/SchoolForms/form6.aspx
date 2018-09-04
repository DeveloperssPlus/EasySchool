<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form6.aspx.cs" Inherits="SchoolForms_form6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 6</title>
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
            <h3>نموذج رقم (6)</h3>
        </div>
        <div class="container content" align="center">
            <div class="row sub-title">
                <div class="col-xs-6">
                    <h5>اسم النموذج : حذف وإضافة مقررات مدرسية</h5>
                </div>
                <div class="col-xs-6">
                    <h5>رمز النموذج : (و.ط.ع.ن-01-06)</h5>
                </div>
            </div>
            <div class="row sub-par">
                <div class="col-xs-6">
                    
                    <h5>الفصل الدراسي : <asp:Literal ID="ltrSemester" runat="server" Text=".............................."></asp:Literal></h5>
                </div>
                <div class="col-xs-6">
                    <h5> العام الدراسي : <asp:Literal ID="ltrYear1" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; 14هـ"></asp:Literal>  &shy; &shy; / <asp:Literal ID="ltrYear2" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; 14هـ"></asp:Literal></h5>
                </div>
            </div>
            <div class="row table4-1">
                <table>
                    <tr class="text-center">
                       <th>اسم الطالب</th>
                       <th>
                           <asp:Literal ID="ltrStudentName" runat="server"></asp:Literal></th>
                       <th>التخصص</th>
                       <th>
                           <asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></th>
                   </tr>
               </table>
           </div>
           <div class="row table4-2">
               <table>
                   <tr class="text-center">
                       <th>الرقم</th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry1" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry2" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry3" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry4" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry5" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry6" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry7" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry8" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry9" runat="server"></asp:Literal></th>
                       <th>
                           <asp:Literal ID="ltrCivilRegistry10" runat="server"></asp:Literal></th>
                   </tr>
               </table>
           </div>
           <div class="row table6">
               <table>
                   <thead>
                       <tr>
                           <th colspan="8">حذف مقررات</th>
                       </tr>
                       <tr>
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>نوعه</th>
                           <th>عدد الساعات</th>
                           <th>الشعبة</th>
                           <th>معلم المقرر</th>
                           <th>توقيعه</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr class="text-center">
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>5</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td colspan="8">إضافة مقررات</td>
                       </tr>
                       <tr style="background: #658C6F;color: #fff;">
                           <th>م</th>
                           <th>اسم المقرر</th>
                           <th>نوعه</th>
                           <th>عدد الساعات</th>
                           <th>الشعبة</th>
                           <th>معلم المقرر</th>
                           <th>توقيعه</th>
                           <th>ملحوظات</th>
                       </tr>
                       <tr class="text-center">
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr class="text-center">
                           <td>5</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="row end">
               <h5>مجموع الساعات قبل الحذف والإضافة <asp:Literal ID="ltrTotalBeforeEdit" runat="server" Text="................................................................"></asp:Literal></h5>
               <h5>مجموع الساعات بعد الحذف والإضافة <asp:Literal ID="ltrTotalAfterEdit" runat="server" Text="............................"></asp:Literal> توقيع الطالب <asp:Literal ID="ltrStudentSignature" runat="server" Text="...................."></asp:Literal> توقيع <br /><br />
                   المرشد الأكاديمي <asp:Literal ID="ltrAcademicAdvisorSignature" runat="server" Text="..............................."></asp:Literal> توقيع وكيل شؤون الطلاب <asp:Literal ID="ltrAgentStudentAffairsSignature" runat="server" Text="..............................."></asp:Literal> 
               </h5>
               <div class="row" style="padding-right:20px">
                   <h4 style="color:#467553">تعليمات مهمة :</h4>
                   <li><h5>يستعمل هذا النموذج في حالة حذف أو إضافة مقررات </h5></li>
                   <li><h5>تتم عملية الحذف والإضافة باختيار الطالب، وموافقة المرشد الأكاديمي بناءً على توقيع
    معلم المقرر</h5>
                  <li> <h5>يسلم النموذج إلى وكيل شؤون الطالب بعد إكمال إجراءات المطلوبة؛ ليضمها إلى نماذج
    التسجيل الخاصة بالطالب ويجري التعديالت اللازمة بموجبها</h5></li>
                   <li><h5>يجب ألا يزيد عدد الساعات المعتمدة بعد الإضافة عن ( <asp:Literal ID="ltrTotalHoursAfterAddition" runat="server" Text="&shy; &shy; &shy;"></asp:Literal>) ساعة معتمدة  </h5></li>
                   <li><h5>يجب أن لا يقل عدد الساعات المعتمدة بعد الحذف عن ( <asp:Literal ID="ltrTotalHoursAfterDeletion" runat="server" Text="&shy; &shy; &shy;"></asp:Literal>) ساعة معتمدة</h5></li>
                   <li><h5>على معلم المقرر حذف أو إضافة اسم الطالب من كشف المادة عند اعتماده</h5></li>
                   <li><h5>نسخة لولي أمر الطالب</h5></li>
                   </div>
           </div>
        </div>
    </div>
    </form>
    
</body>
</html>
