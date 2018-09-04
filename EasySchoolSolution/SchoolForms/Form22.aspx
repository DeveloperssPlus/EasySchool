<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form22.aspx.cs" Inherits="SchoolForms_form22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 22</title>
     <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
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
            <h3>نموذج رقم (22)</h3>
       </div>
       <div class="container content" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : سجل استئذان الموظفين</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-02-06)</h5>
               </div>
           </div>
           <div class="row table4-1">
               <table>
                   <tr>
                       <th>المدرسة</th>
                       <th>
                           <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></th>
                   </tr>
               </table>
           </div>
           <div class="row table4-2">
               <table>
                   <tr>
                       <th>السجل المدني</th>
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
            <br/>
              
            
              <div class="row table22-3">  
               
               <table style="width:80%">
               
                 <tbody>
                <tr>
               
               <th class="text-center" style="width:10%;font-size:15px">الاسم</th>
               <th class="text-center" style="width:10%;font-size:15px">التخصص</th>
               <th class="text-center" style="width:15%;font-size:15px">المستوى / المرتبة</th>
               <th class="text-center" style="width:10%;font-size:15px">الدرجة</th>
               <th class="text-center" style="width:10%;font-size:15px">رقم الوظيفة</th>
               <th class="text-center" style="width:10%;font-size:15px">العمل الحالي</th>
               <th class="text-center" style="width:10%;font-size:15px">عدد أيام الغياب</th>
               </tr>
               
               <tr>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               <td style="width:10%"></td>
               </tr>
               
               
               </tbody>
               </table>
            </div> 
              
           <br />
              
             
              
              <div class="row table22-4">
              
              <table style="width:80%">
  <tr>
    <th  class="text-center" style="width:5%;font-size:15px" rowspan="2">م</th>
    <th class="text-center" style="width:5%;font-size:15px" rowspan="2">اليوم</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">التاريخ</th>
    <th class="text-center" style="width:10%;font-size:15px" colspan="2">زمن الخروج</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">التوقيع</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">مبررات الخروج</th>
    <th class="text-center" style="width:10%;font-size:15px" colspan="2">زمن العودة</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">التوقيع</th>
    <th class="text-center" style="width:10%;font-size:15px" rowspan="2">ملحوظات*</th>
  </tr>
  <tr>
    <th class="text-center" style="font-size:15px">دقيقة</th>
    <th class="text-center" style="font-size:15px">ساعة</th>
    <th class="text-center" style="font-size:15px">دقيقة</th>
    <th class="text-center" style="font-size:15px">ساعة</th>
  </tr>
  
              <tr>
              <td></td>
              <td></td>
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td  class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
              <td class="text-center">/</td>
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
               
               
              <div class="row foot text-right">
              <div class="col-xs-12">
              <h5>* في مدارس البنات يتم كتابة اسم المحرم وصلة القرابة ورقم الهوية .
              </h5>
              </div>
              </div>
               
               
               
               
               
               
                 
               
               
               
               
               
               
          
           </div>
           
       </div>

              
    
    <script src="lib/lib/jquery-1.11.1.min.js"></script>
    <script src="lib/lib/bootstrap.js"></script>
</body>
</html>
