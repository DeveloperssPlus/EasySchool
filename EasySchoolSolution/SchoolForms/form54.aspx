<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form54.aspx.cs" Inherits="TahaniSchoolForms_form54" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 54</title>
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
                <h3>نموذج رقم (54)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : محضر فتح مظرف أسئلة</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ت.ع.ن-05-02)</h5>
                   </div> 
               </div>
               <div class="row table54">
                   <table>
                       <thead>
                           <tr>
                               <th>اليوم</th>
                               <th>التاريخ</th>
                               <th>الفترة</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td style="background:#EBF0EA">
                                   <asp:Literal ID="ltrDay" runat="server"></asp:Literal></td>
                               <td style="background:#D2DED2">
                                   <asp:Literal ID="ltrDate" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA">
                                   <asp:Literal ID="ltrPeriod" runat="server"></asp:Literal></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row table54">
                   <table>
                       <thead>
                           <tr>
                               <th>المادة</th>
                               <th>الصف</th>
                               <th>الدور</th>
                               <th>الفصل</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td style="background:#D2DED2">
                                   <asp:Literal ID="ltrSubject" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA">
                                   <asp:Literal ID="ltrClass" runat="server"></asp:Literal></td>
                               <td style="background:#D2DED2">
                                   <asp:Literal ID="ltrRole" runat="server"></asp:Literal></td>
                               <td style="background:#EBF0EA">
                                   <asp:Literal ID="ltrSemester" runat="server"></asp:Literal></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="col-xs-12 text-right" style="padding-right:50px">
                   
                   <h5>تم فتح مظرف الأسئلة عند الساعة ( <asp:Literal ID="ltrTime" runat="server" Text="&shy; &shy; &shy; &shy;"></asp:Literal> ) ووجود: <br/>
                   ............................................................................................................................................ <br/>
                   ............................................................................................................................................ <br/>
                   ............................................................................................................................................ <br/>
                   وتم تحرير محضر بذلك.
                   </h5>
               </div>
               <div class="col-xs-12 text-right" style="padding-right:50px">
                   <h5>أعضاء اللجنة:</h5>
               </div>
               <div class="row table25">
                   <table>
                       <thead>
                           <tr>
                               <th>م</th>
                               <th>أعضاء اللجنة</th>
                               <th>الصفة</th>
                               <th>التوقيع</th>
                           </tr>
                       </thead>
                       <tbody class="text-center">
                           <tr>
                               <td></td>
                               <td></td>
                               <td>رئيس</td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>عضو</td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>عضو</td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>عضو</td>
                               <td></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row">
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>قائد المدرسة <asp:Literal ID="ltrSchoolCommander" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12 text-right" style="padding-right:50px">
                       <h5>التوقيع : </h5>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
