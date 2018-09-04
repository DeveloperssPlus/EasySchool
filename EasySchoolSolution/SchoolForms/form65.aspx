<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form65.aspx.cs" Inherits="TahaniSchoolForms_form65" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 65</title>
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
                <h3>نموذج رقم (65)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : إشعار موعد التدقيق الداخلي </h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-06-02)</h5>
                   </div> 
               </div>
               <div class="row table54">
                   <table>
                       <thead>
                           <tr>
                               <th style="padding:3px">اليوم</th>
                               <th style="padding:3px">التاريخ</th>
                               <th style="padding:3px">تدقيق داخلي رقم ( <asp:Literal ID="ltrAuditNo" runat="server" Text="&shy; &shy; &shy;"></asp:Literal> )</th>
                               <th style="padding:3px">تاريخ التدقيق حسب<br/>الخطة</th>
                               <th style="padding:3px">التاريخ الفعلي للتدقيق</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td style="background:#D2DED2;padding:15px">
                                   <asp:Literal ID="ltrDay" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrAuditName" runat="server"></asp:Literal></td>
                               <td style="background:#D2DED2;padding:15px">
                                   <asp:Literal ID="ltrAuditDatePlan" runat="server"></asp:Literal>
                               </td>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrEffectiveDate" runat="server"></asp:Literal></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row table5">
                   <table>
                       <tr>
                           <th>من</th>
                           <th>رئيس فريق التدقيق الداخلي</th>
                       </tr>
                       <tr>
                           <th>إلى</th>
                           <td>
                               <asp:Literal ID="ltrConsignee" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <th>اسم العملية</th>
                           <td>
                               <asp:Literal ID="ltrOperationName" runat="server"></asp:Literal></td>
                       </tr>
                   </table>
               </div>
               <div class="row table5">
                   <table>
                       <tr>
                           <th>تاريخ الزيارة</th>
                           <td style="width:200px">
                               <asp:Literal ID="ltrVisitDate" runat="server"></asp:Literal></td>
                           <th>الوقت</th>
                           <td style="width:200px">
                               <asp:Literal ID="ltrTime" runat="server"></asp:Literal></td>
                           <th>اسم المراجع</th>
                           <td style="width:200px">
                               <asp:Literal ID="ltrAuditor" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <th colspan="6" style="text-align:right">مكان التدقيق</th>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6" style="border-bottom:dotted"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <th colspan="6" style="text-align:right">الوثائق والأدوات المطلوبة للتدقيق</th>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                       <tr>
                           <td colspan="6"></td>
                       </tr>
                   </table>
               </div>
               <div class="row" style="margin-right:10px">
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>رئيس فريق التدقيق الداخلي : <asp:Literal ID="ltrHeadInternalAuditTeam" runat="server" Text="..................................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>التوقيع: ....................................................................</h5>
                   </div>
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>الأصل المدقق عليه .</h5>
                   </div>
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>صورة المدقق .</h5>
                   </div>
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>صورة لملف التدقيق الداخلي .</h5>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
