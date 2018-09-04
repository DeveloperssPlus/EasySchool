<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form23.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 23</title>
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
    <div class="container-fluid">

       <div class="row title">
            <h3>نموذج رقم (23)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : كشف بأسماء الطلاب المتأخرين صباحاً</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ط.ع.ن-03-01)</h5>
               </div>
               
           </div>
           
           
           <div class="row table-name">
               <h3 class="text-center">كشف بأسماء الطلاب المتأخرين صباحاً</h3>
               </div>
               
               
               <div class="row fo7">
              
                 <div class="col-xs-3">
                   <h4>اليوم :<asp:Literal ID="ltrDay" runat="server">..............</asp:Literal></h4>
               </div>
               
               <div class="col-xs-3">
                   <h4>التاريخ :<asp:Literal ID="ltrDate" runat="server">..............</asp:Literal></h4>
               </div>
              
              
               </div>
           
           
           
           
              
                 <div class="row table23-1">
              
              <table style="width:80%">
  <tr>
    <th class="text-center" style="width:5%;font-size:15px" rowspan="2">م</th>
    <th class="text-center" style="width:25%;font-size:15px" rowspan="2">اسم الطالب</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">الصف والشعبة</th>
    <th class="text-center" style="width:10%;font-size:15px" colspan="2" >مقدار التأخر</th>
    <th class="text-center" style="width:20%;font-size:15px" rowspan="2">أسباب التأخر</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">توقيع الطالب></th>
  </tr>
  <tr>
    <th style="font-size:15px">دقيقة</th>
    <th style="font-size:15px">ساعة</th>
  </tr>
  
              
              <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
               <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
             <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
            <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
              <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
               <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
              <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
               <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
             <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
               <tr>
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
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              
               <tr>
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
               
               
              <div class="row ff text-right">
                  <div class="col-xs-10">
                  <h5 style="color:black">اسم المسئول<asp:Literal ID="ltrNameLeader" runat="server">...................</asp:Literal> </h5>
                  </div>
                  
                  <div class="col-xs-10">
                  <h5 style="color:black">توقيع المسئول.....................</h5>
                  </div>
                  
              
              </div>
               
            
          
           </div>
           
       </div>
 
</body>
</html>
