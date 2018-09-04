<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form3.aspx.cs" Inherits="SchoolForms_form3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 3</title>
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
            <h3>نموذج رقم (3)</h3>
       </div>
       <div class="container content" align="center">
       
           <div class="row sub-title">
           
               <div class="col-xs-6">
                   <h5>اسم النموذج : كشف بأسماء الطلاب في المجموعة</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ط.ع.ن-01-03)</h5>
               </div>
               
           </div>
           
           <div class="row sub-par">
               <div class="col-xs-6">
                   <h5>اسم المدرسة : </h5>
                   <asp:Literal ID="ltrSchoolName" runat="server">..............................</asp:Literal>
               </div>
               <div class="col-xs-6">
                   <h5>العام الدراسي :</h5>
                   <asp:Literal ID="ltrSchoolYear" runat="server">..............................</asp:Literal>
               </div>
           </div>
           
           <div class="row table3">
               <table>
                   <thead>
                       <tr>
                           <th>عدد</th>
                           <th colspan="10">رقم الطالب</th>
                           <th>اسم الطالب</th>
                       </tr>
                   </thead>
                    <tbody>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                       <tr>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                           <td>  </td>
                       </tr>
                   </tbody>
               </table>
           </div>
           
           <div class="row end">
               <div class="col-xs-4">
                   <h5>المرشد الأكاديمي</h5>
                   <asp:Literal ID="ltrAcademicAdvisor" runat="server" Text="................"></asp:Literal>
               </div>
               
               <div class="col-xs-4">
                   <h5>وكيل شؤون الطلاب</h5>
                   <asp:Literal ID="ltrStudentAffairs" runat="server" Text="................"></asp:Literal>
               </div>
               
               <div class="col-xs-4">
                   <h5>قائد المدرسة</h5>
                   <asp:Literal ID="ltrSchoolCommander" runat="server" Text="................"></asp:Literal>
               </div>
           </div>
           
       </div>
   </div>
   
    </form>
</body>
</html>
