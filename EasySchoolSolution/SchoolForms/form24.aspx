<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form24.aspx.cs" Inherits="TahaniSchoolForms_form24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 24</title>
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
                <h3>نموذج رقم (24)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : تحويل طالب متكرر الغياب والتأخر لوكيل شؤون الطلاب</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-03-02)</h5>
                   </div> 
               </div>
               <div class="row table24">
                   <table>
                       <tr>
                           <th colspan="3" class="text-center">اسم الطالب</th>
                           <th colspan="3" class="text-center">الصف</th>
                           <th colspan="3" class="text-center">تاريخ التحويل</th>
                           <th colspan="3" class="text-center">الحصة</th>
                       </tr>
                       <tr>
                           <td colspan="3">
                               <asp:Literal ID="ltrStudentName" runat="server"></asp:Literal></td>
                           <td colspan="3">
                               <asp:Literal ID="ltrClassRoom" runat="server"></asp:Literal></td>
                           <td colspan="3">
                               <asp:Literal ID="ltrTransferDate" runat="server"></asp:Literal></td>
                           <td colspan="3">
                               <asp:Literal ID="ltrPeriod" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <th colspan="1">إلى : وكيل شؤون الطلاب</th>
                           <td colspan="5" style="background-color: #D2DED2;"></td>
                           <td colspan="5" style="background-color: #D2DED2;"></td>
                       </tr>
                       <tr>
                           <th colspan="12">حيل لكم الطالب الموضح اسمه أعلاه للأسباب التالية :</th>
                       </tr>
                       <tr>
                           <td colspan="12" style="padding: 3px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrReasons" runat="server" Text="......................................................................................................................................."></asp:Literal>
                           </td>
                       </tr>
                       <tr>
                           <th colspan="12">علماً انه تم اتخاذ الإجراءات التالية :</th>
                       </tr>
                       <tr>
                           <td colspan="12" style="padding: 3px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrActions" runat="server" Text="......................................................................................................................................."></asp:Literal>
                           </td>
                       </tr>
                       <tr>
                           <th colspan="4" class="text-center">اسم المرشد الطلابي</th>
                           <th colspan="4" class="text-center">التوقيع</th>
                           <th colspan="4" class="text-center">التاريخ</th>
                       </tr>
                       <tr>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrStudentAdvisorName" runat="server"></asp:Literal></td>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;"></td>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrReceivedStudentAdvisorDate" runat="server"></asp:Literal></td>
                       </tr>
                   </table>
               </div>
               <div class="row table24">
                   <table>
                       <tr>
                           <td colspan="4" class="text-center" style="padding:3px;background-color: #D2DED2;">وكيل شؤون الطلاب</td>
                           <td colspan="4" class="text-center" style="background-color: #D2DED2;"></td>
                           <td colspan="4" class="text-center" style="background-color: #D2DED2;"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="padding:3px">تم إنهاء الموقف بتاريخ <asp:Literal ID="ltrDateFinsih" runat="server" Text="&shy; &shy; &shy; / &shy; &shy; &shy; / &shy; &shy; &shy;"></asp:Literal> 14 هــ</td>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="2" style="padding:3px;background-color: #D2DED2;">إلى : مسجل المعلومات</td>
                           <td colspan="10" style="background-color: #D2DED2;"></td>
                       </tr>
                       <tr>
                           <td colspan="12" style="padding:3px">يتم حسم ( <asp:Literal ID="ltrDegrees" runat="server" Text="___"></asp:Literal> ) درجة على الطالب من درجات السلوك المواظبة حسب اللائحة التالية:</td>
                       </tr>
                       <tr>
                           <td colspan="12" style="padding: 3px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrRegulation" runat="server" Text="......................................................................................................................................."></asp:Literal>
                           </td>
                       </tr>
                       <tr>
                           <th colspan="4" class="text-center" style="padding:3px">اسم الوكيل</th>
                           <th colspan="4" class="text-center">التوقيع</th>
                           <th colspan="4" class="text-center">التاريخ</th>
                       </tr>
                       <tr>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrAgentName" runat="server"></asp:Literal></td>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;"></td>
                           <td colspan="4" style="padding: 10px;background-color: #D2DED2;">
                               <asp:Literal ID="ltrReceivedAgentDate" runat="server"></asp:Literal></td>
                       </tr>
                   </table>
               </div>
               <div class="row table24">
                   <table>
                       <tr>
                           <th colspan="3" style="padding:3px">إلى مسجل المعلومات</th>
                           <td colspan="4" style="background-color: #D2DED2;"></td>
                           <td colspan="4" style="background-color: #D2DED2;"></td>
                       </tr>
                       <tr>
                           
                           <td colspan="5"> تم حسم الدرجة بتاريخ <asp:Literal ID="ltrResolvDegreeDate" runat="server" Text="&shy; &shy; &shy; / &shy; &shy; &shy; / &shy; &shy; &shy;"></asp:Literal> 14 هــ 
                           </td>
                           <td colspan="7"></td>
                       </tr>
                       <tr>
                           <th class="text-center" colspan="3" style="padding:3px">اسم مسجل المعلومات</th>
                           <th class="text-center" colspan="4">التوقيع</th>
                           <th class="text-center" colspan="4">التاريخ</th>
                       </tr>
                       <tr>
                           <td colspan="3" style="padding: 10px">
                               <asp:Literal ID="ltrInformationRecordedName" runat="server"></asp:Literal></td>
                           <td colspan="4" style="padding: 10px"></td>
                           <td colspan="4" style="padding: 10px">
                               <asp:Literal ID="ltrReceviedInformationRecordedDate" runat="server"></asp:Literal></td>
                       </tr>
                   </table>
               </div>
               <div class="row table24">
                   <table>
                       <tr>
                           <th colspan="5" >إلى المرشد الطلابي :</th>
                           <th colspan="5"></th>
                           <th colspan="4"></th>
                         </tr>

                        <tr>
                           <td colspan="14" >آمل متابعة الطالب خلال الفترة القادمة و إبلاغنا عن مدى تحسن مستواه ورأيكم في تثبيت الحسم من عدمه</td>
                         </tr>

                         <tr>
                           <th class="text-center" colspan="5" >اسم الوكيل </th>
                           <th class="text-center" colspan="5">التوقيع</th>
                           <th class="text-center" colspan="4">التاريخ</th>
                         </tr>

                        <tr>
                           <td colspan="5">
                               <asp:Literal ID="ltrAgentName2" runat="server"></asp:Literal></td>
                           <td colspan="5"></td>
                           <td colspan="4">
                               <asp:Literal ID="ltrReceivedAgentNameDate2" runat="server"></asp:Literal></td>
                         </tr>
                   </table>
               </div>
               <div class="row table24">
                   <table>
                       <tr>
                           <th colspan="5">إلى وكيل شؤون الطلاب  :</th>
                           <th colspan="5"></th>
                           <th colspan="4"></th>
                         </tr>

                        <tr style="padding:8px;">
                           <td colspan="14" colrow="2">? نرى تثبيت درجة الحسم لعدم استجابة الطالب خلال الفترة السابقة<br/>? نرى إلغاء حسم الدرجة لتحسن مستوى الطالب</td>
                         </tr>

                         <tr>
                           <th colspan="5" class="text-center">اسم المرشد الطلابي</th>
                           <th colspan="5" class="text-center">التوقيع</th>
                           <th colspan="4" class="text-center">التاريخ</th>
                         </tr>

                        <tr>
                           <td colspan="5">
                               <asp:Literal ID="ltrStudentAdvisorName2" runat="server"></asp:Literal></td>
                           <td colspan="5"></td>
                           <td colspan="4">
                               <asp:Literal ID="ltrReceivedStudentAdvisorDate2" runat="server"></asp:Literal></td>
                         </tr>
                   </table>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
