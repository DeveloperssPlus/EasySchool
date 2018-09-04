<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form64.aspx.cs" Inherits="TahaniSchoolForms_form64" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 64</title>
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
                <h3>نموذج رقم (64)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : خطة التدقيق الداخلي النصف سنوية </h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-06-01)</h5>
                   </div> 
               </div>
               <div class="row table5" style="margin-right:10px">
                   <table>
                       <tr>
                           <th colspan="2">العام الدراسي</th>
                           <th colspan="4">الفصل الدراسي</th>
                           <th colspan="8">بداية التدقيق</th>
                           <th colspan="9">نهاية التدقيق</th>
                       </tr>
                       <tr>
                           
                           <td colspan="2"> <asp:Literal ID="ltrYear" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;"></asp:Literal>  هــ</td>
                           <td colspan="4">
                               <asp:RadioButton ID="RadioButton1" runat="server" Text="الأول" /><br />
                               <asp:RadioButton ID="RadioButton2" runat="server" Text="الثاني" />
                           </td>
                           <td colspan="8"> <asp:Literal ID="ltrBeginningAudit" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;"></asp:Literal>  هــ</td>
                           <td colspan="9"> <asp:Literal ID="ltrEndAudit" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;"></asp:Literal>  هــ</td>
                       </tr>
                       <tr>
                           <th rowspan="2">اسم<br/> المدقق</th>
                           <th rowspan="2">الأشخاص <br/>المعنيين<br/> بالتدقيق</th>
                           <th colspan="4">التاريخ</th>
                           <th colspan="17">العمليات</th>
                       </tr>
                       <tr>
                           <td style="transform:rotate(-90deg);height:70px">الشهر</td>
                           <td style="transform:rotate(-90deg)">الأسبوع</td>
                           <td style="transform:rotate(-90deg)">اليوم</td>
                           <td style="transform:rotate(-90deg)">الزمن</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>1</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>2</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>3</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>4</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>
                   </table>
               </div>
               <div class="row" style="text-align:right;margin-right:15px">
                   <div class="col-xs-12">
                       <h5>رئيس فريق التدقيق الداخلي : <asp:Literal ID="ltrHeadInternalAuditTeam" runat="server" Text="..................................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>التوقيع : .........................................................................................</h5>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
