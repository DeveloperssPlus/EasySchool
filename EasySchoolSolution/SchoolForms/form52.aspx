<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form52.aspx.cs" Inherits="TahaniSchoolForms_form52" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 52</title>
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
                <h3>نموذج رقم (52)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : قياس اتجاهات المتعلمين نحو المدرسة</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-04-01)</h5>
                   </div> 
               </div>
               <div class="row sub-title">
                   <div class="col-xs-6">
                       <h5>عزيزي الطالب *: </h5>
                   </div>
               </div>
               <div class="row form52" align="right" style="margin-right:40px;">
                   <div class="col-xs-12">
                       <p>إن جميع ما تقدمه المدرسة من خدمات وما توفره من إمكانات يهدف في النهاية إلى خدمتك<br/>
وتحقيق بيئة مدرسية تساعدك على تحقيق أعلى مستويات الأداء.</p>
                   </div>
                   <div class="col-xs-12">
                       <p>ونظرا لأنك المستهدف الأول والأخير من تلك الخدمات والممارسات التي تقدمها المدرسة فإن<br/>
رأيك حولها يساعدنا على تحسينها وتطويرها، ولهذا قامت المدرسة بإعداد هذه الاستبانة<br/>
التي نسعى من ورائها إلى التعرف على اتجاهاتك عن مدرستك .</p>
                   </div>
                   <div class="col-xs-12">
                       <p>لذا نرجو منك الإجابة عن بنود هذه الاستبانة بكل وضوح و صراحة و شفافية، مع الحرص<br/>
على عدم ترك أي عبارة بدون إجابة.</p>
                   </div>
                   <div class="col-xs-12">
                       <p>تأكد من أن إجاباتك سوف تكون في غاية السرية ولن تستخدم إلا لغرض التعرف على مستوى<br/>
الخدمات التي تقدمها لتطويرها وتحسينها، ولن تستخدم بالتالي لأي غرض آخر . <br/>
أجب بوضع علامة (  &shy; &shy; &shy; &shy; ) أمام كل بند وفي الخانة التي تتفق مع رؤيتك من الخانات الثلاث، <br/>
وهي :</p>
                   </div>
                   <div class="col-xs-2">
                       <h5>أوافق تماما</h5>
                   </div>
                   <div class="col-xs-2">
                       <h5>أوافق الى حد ما</h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>لا أوافق</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>الاسم ( اختياري ) : <asp:Literal ID="ltrName" runat="server" Text="...................................................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12">
                       
                       <h5>الصف الدراسي : <asp:Literal ID="ltrClassRoom" runat="server" Text="........................................................................................"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>* ملاحظة: يمكن تعبئة هذا النموذج بمساعدة ولي أمر الطالب لبعض فئات التربية الخاصة.</h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>يرجى وضع علامة ( &shy; &shy; &shy; &shy; ) أمام كل عبارة من العبارات الآتية في الخانة التي تتفق مع ر أيك:</h5>
                   </div>
                   <div class="row table25">
                       <table>
                           <thead>
                               <tr>
                                   <th>المجال</th>
                                   <th>م</th>
                                   <th>العبارات</th>
                                   <th>أوافق تماماَ</th>
                                   <th>أوافق إلى حد ما</th>
                                   <th>لا أوافق إطلاقاَ</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td rowspan="4" style="transform:rotate(-90deg);text-align:center">القيادة</td>
                                   <td>1</td>
                                   <td>توضح المدرسة تعليماتها من بداية العام الدراسي لجميع الطلاب</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>2</td>
                                   <td>القرارات التي تتخذها المدرسة عادلة بين الطلاب.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>3</td>
                                   <td>أتواصل مع المدرسة بسهولة عند الحاجة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>4</td>
                                   <td>تستطلع المدرسة آراء الطلاب حول خدماتها.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td rowspan="3" style="transform:rotate(-90deg);text-align:center">التدريس</td>
                                   <td>5</td>
                                   <td>أحاور المعلمين بحرية وبلا تخوف</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>6</td>
                                   <td>لا تراعي المدرسة اختلاف القدرات بين الطلاب</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>7</td>
                                   <td>يمكن أن أحقق أداء أفضل لو كنت في مدرسة أخرى</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td rowspan="2" style="text-align:center">التدريس</td>
                                   <td>8</td>
                                   <td>يحرص المعلمون في المدرسة على استثمار زمن الحصة الدراسية.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>9</td>
                                   <td>يحرص المعلمون على توجيهي تربويا</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row table25" style="margin-top:50px">
                       <table>
                           <thead>
                               <tr>
                                   <th>المجال</th>
                                   <th>م</th>
                                   <th>العبارات</th>
                                   <th>أوافق تماماَ</th>
                                   <th>أوافق إلى حد ما</th>
                                   <th>لا أوافق إطلاقاَ</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td rowspan="4" style="transform:rotate(-90deg);text-align:center">رعاية الطلاب</td>
                                   <td>10</td>
                                   <td>تسعى المدرسة إلى التعرف على مواهبي و إبداعاتي</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>11</td>
                                   <td>يحصل الطالب المجدّ على تقدير كاف من المدرسة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>12</td>
                                   <td>أتوجه إلى المرشد الطلابي عندما أتعرض لمشكلة ما</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>13</td>
                                   <td>تسخّر المدرسة مرافقها و إمكاناتها لخدمة طلابها ( معامل ، <br>
مصادر تعلم، صالات ، ... )</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td rowspan="2" style="text-align:center">الانضباط</td>
                                   <td>14</td>
                                   <td>أحرص على الحضور المبكر يومياَ إلى المدرسة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>15</td>
                                   <td>الانضباط في مدرستي قلل من مشكلات الطلاب</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td rowspan="4" style="transform:rotate(-90deg);text-align:center">السلوك</td>
                                   <td>16</td>
                                   <td>أشعر بالقلق أثناء وجودي في المدرسة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>17</td>
                                   <td>يمكن أن أتعرض للإيذاء من قبل بعض الطلاب داخل المدرسة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>18</td>
                                   <td> أعرف النظام المطبق في المدرسة بشأن السلوك.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>19</td>
                                   <td> أرى من بعض الطلاب سلوكيات غير لائقة داخل المدرسة.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td rowspan="4" style="transform:rotate(-90deg);text-align:center">البيئة المدرسية</td>
                                   <td>20</td>
                                   <td>أحب مدرستي كثيرا </td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>21</td>
                                   <td>أرغب في الانتقال إلى مدرسة أخرى</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>22</td>
                                   <td>توجهني المدرسة للاستخدام الأمثل لوسائل الأمن والسلامة</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                               <tr>
                                   <td>23</td>
                                   <td>تقام في المدرسة أنشطة وفعاليات طلابية.</td>
                                   <td></td>
                                   <td></td>
                                   <td></td>
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="row table25">
                       <table>
                           <tr>
                               <td>التقويم العام للمدرسة</td>
                               <td>ممتاز</td>
                               <td>جيد</td>
                               <td>ضعيف</td>
                           </tr>
                       </table>
                   </div>
                   <div class="row">
                       <div class="col-xs-12">
                           <h5>الاقتراحات لتطوير المدرسة: <br/>
                           1 <br/> 2
                           </h5>
                       </div>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
