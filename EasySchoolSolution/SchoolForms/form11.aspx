<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form11.aspx.cs" Inherits="SchoolForms_form11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 11</title>
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
                <h3>نموذج رقم (11)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                   <div class="col-xs-6">
                       <h5>اسم النموذج : سجل مشتريات المدرسة</h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (م.م.ع.ن-01-01)</h5>
                   </div>
               </div>
               <div class="row sub-par">
                   <div class="col-xs-6">
                       <h5>سجل مشتريات المدرسة من بند : <asp:Literal ID="ltrSchoolItem" runat="server" Text=".............................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>خلال العام الدراسي : <asp:Literal ID="ltrYear" runat="server" Text=".............................."></asp:Literal></h5>
                   </div>
               </div>
               <div class="row table3">
                   <table>
                       <thead>
                           <tr>
                               <th colspan="2">إجمالي مبلغ البند <br/> المخصص للمدرسة</th>
                               <th>رقما</th>
                               <th colspan="2">السعر</th>
                               <th>كتابة</th>
                               <th colspan="2"></th>
                           </tr>
                           <tr class="text-center">
                               <td style="padding:5px;">م</td>
                               <td style="width:200px"></td>
                               <td style="padding:5px;">الكمية</td>
                               <td style="padding:5px;">الإفرادي</td>
                               <td style="padding:5px;">الإجمالي</td>
                               <td style="padding:5px;">التاريخ</td>
                               <td style="padding:5px;">رقم الفاتورة</td>
                               <td style="padding:5px;">جهة الفاتورة</td>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td>1</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
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
                               <td>6</td>
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
               <div class="row end" style="margin-right:5px;">
                   <h4>توقيع لجنة الصندوق المدرسي على صرف مبلغ البند</h4>
               </div>
               <div class="row table11"  style="margin-right:5px;">
                   <table>
                       <tr>
                           <th colspan="3"></th>
                           <th class="head">قائد المدرسة ورئيس <br/>
لجنة الصندوق المدرسي</th>
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
                           <td>التوقيع /</td>
                       </tr>
                       <tr>
                           <td>الاسم <asp:Literal ID="ltrUndersecretarySchool" runat="server"></asp:Literal></td>
                           <td>الاسم <asp:Literal ID="ltrStudentAdvisor" runat="server"></asp:Literal></td>
                           <td>الاسم <asp:Literal ID="ltrReadActivity" runat="server"></asp:Literal></td>
                           <td>التاريخ: <asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; / &shy; &shy; / &shy; 143 هــ"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td>التوقيع </td>
                           <td>التوقيع </td>
                           <td>التوقيع </td>
                           <td>الختم الرسمي</td>
                       </tr>
                   </table>
               </div>
            </div>
        </div>
    </form>
    
</body>
</html>
