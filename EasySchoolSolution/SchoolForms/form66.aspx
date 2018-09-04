<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form66.aspx.cs" Inherits="TahaniSchoolForms_form66" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 66</title>
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
                <h3>نموذج رقم (66)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : نموذج التدقيق الداخلي </h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-06-03)</h5>
                   </div> 
               </div>
               <div class="row table54">
                   <table>
                       <thead>
                           <tr>
                               <th style="padding:3px">اليوم</th>
                               <th style="padding:3px">التاريخ</th>
                               <th style="padding:3px">العملية</th>
                               <th style="padding:3px">اسم المدقق</th>
                               <th style="padding:3px">اسم المدقق عليه</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrDay" runat="server"></asp:Literal></td>
                               <td style="background:#D2DED2;padding:15px">
                                   <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrOperation" runat="server"></asp:Literal></td>
                               <td style="background:#D2DED2;padding:15px">
                                   <asp:Literal ID="ltrTideName" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:15px">
                                   <asp:Literal ID="ltrCheckerName" runat="server"></asp:Literal></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row table66">
                   <table>
                       <tr>
                           <th style="width:30%">السؤال</th>
                           <th>الإجابة</th>
                       </tr>
                       <tr>
                           <td rowspan="2"></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                       </tr>
                       <tr>
                           <td>
                             الحالة : 
                               <asp:CheckBox ID="CheckBox1" runat="server" Text="مطابق" />
                               <asp:CheckBox ID="CheckBox2" runat="server" Text="غير مطابق"/>
                           </td>
                           <td></td>
                       </tr>
                       <tr>
                           <td rowspan="2"></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                       </tr>
                       <tr>
                           <td>
                             الحالة : 
                               <asp:CheckBox ID="CheckBox3" runat="server" Text="مطابق" />
                               <asp:CheckBox ID="CheckBox4" runat="server" Text="غير مطابق"/>
                           </td>
                           <td></td>
                       </tr>
                       <tr>
                           <td rowspan="2"></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                       </tr>
                       <tr>
                           <td>
                             الحالة : 
                               <asp:CheckBox ID="CheckBox5" runat="server" Text="مطابق" />
                               <asp:CheckBox ID="CheckBox6" runat="server" Text="غير مطابق"/>
                           </td>
                           <td></td>
                       </tr>
                       <tr>
                           <td rowspan="2"></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                       </tr>
                       <tr>
                           <td>
                             الحالة : 
                               <asp:CheckBox ID="CheckBox7" runat="server" Text="مطابق" />
                               <asp:CheckBox ID="CheckBox8" runat="server" Text="غير مطابق"/>
                           </td>
                           <td></td>
                       </tr>
                       <tr>
                           <th>نتيجة التدقيق النهائية</th>
                           <th>الإجراءات المتخذة</th>
                       </tr>
                       <tr>
                           <td>
                               <asp:CheckBox ID="CheckBox9" runat="server" Text="مطابق" />
                               <asp:CheckBox ID="CheckBox10" runat="server" Text="غير مطابق"/>
                           </td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row table54">
                   <table>
                       <thead>
                           <tr>
                               <th>اسم المدقق</th>
                               <th>التوقيع</th>
                               <th>اسم المدقق عليه</th>
                               <th>التوقيع</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td style="background:#EBF0EA;padding:30px">
                                   <asp:Literal ID="ltrTideNameSure" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:30px"></td>
                               <td style="background:#EBF0EA;padding:30px">
                                   <asp:Literal ID="ltrCheckerNameSure" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA;padding:30px"></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
