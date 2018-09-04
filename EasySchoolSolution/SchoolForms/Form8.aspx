<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form8.aspx.cs" Inherits="SchoolForms_form8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 8</title>
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
            <h3>نموذج رقم (8)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : جدول المناوبة والإشراف اليومي</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ت.ع.ن-01-02)</h5>
               </div>
               
           </div>
           
           
            <div class="row fo7 text-right">
            
               <div class="row">
                 <div class="col-xs-12">
                   <h5> العام الدراسي <asp:Literal ID="ltrYear" runat="server">.....</asp:Literal> 14 هـ/ الفصل (<asp:Literal ID="ltrsemester" runat="server">...........</asp:Literal>     )</h5>
                 </div>
                </div> 
               
               
           
</div>
           
     <div class="row table8"> 
        <table style="width:80%">
  <tr>
    <th style="width:5%;font-size:15px" class="text-center" rowspan="2">الأسبوع</th>
    <th style="width:5%;font-size:15px"  class="text-center" rowspan="2">اليوم</th>
    <th style="width:5%;font-size:15px"  class="text-center" rowspan="2">التاريخ</th>
    <th style="width:10%;font-size:15px" class="text-center"  colspan="2" >المناوبة*</th>
    <th style="width:15%;font-size:15px"  class="text-center" colspan="3">الإشراف*</th>
    <th style="width:10%;font-size:15px"  class="text-center" colspan="1"></th>  
    </tr>
    
       <tr>
    <th style="font-size:15px"  class="text-center">الاسم**</th>
    <th style="font-size:15px"  class="text-center">التوقيع</th>
    <th style="font-size:15px"  class="text-center">الاسم**</th>
    <th style="font-size:15px"  class="text-center">الاشراف</th>
    <th style="font-size:15px"  class="text-center">التوقيع</th>
    <th style="font-size:15px"  class="text-center">ملحوظات</th>
  </tr>
  
  
 <tr>
  
              <td rowspan="10" style="background-color: #D2DED2;"></td>
              <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الأحد</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr>    


<tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الاثنين</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الثلاثاء</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الأربعاء</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الخميس</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
   <tr>
  
              <td rowspan="10" style="background-color: #D2DED2;"></td>
              <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الأحد</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr>    


<tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الاثنين</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الثلاثاء</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الأربعاء</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
  
  
  
  <tr>
  <td rowspan="2" class="text-center" style="font-size:15px;font-weight:bold;background-color: #D2DED2;">الخميس</td>
              <td rowspan="2" style="background-color: #D2DED2;"></td>           
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
  </tr> 
   
 
  </table>
  
   
          
           </div>
           
           
           <div class="row fo7 text-right">
            
             <div class="row">
                 <div class="col-xs-6">
                 <h5>وكيل الشؤون التعليمية:</h5>
                 </div>
                 
                 <div class="col-xs-6">
                  <h5>قائد المدرسة:</h5>
                 </div>
                 
             </div> 
             
             
             <div class="row">
                 <div class="col-xs-6">
                 <h5>الاسم : <asp:Literal ID="ltrAffairsName" runat="server">...................</asp:Literal></h5>
                 </div>
                 
                 <div class="col-xs-6">
                  <h5>الاسم : <asp:Literal ID="ltrSchoolCommanderName" runat="server">...................</asp:Literal></h5>
                 </div>
                 
             </div>   
             
             
              <div class="row">
                 <div class="col-xs-6">
                 <h5>التوقيع : ...................</h5>
                 </div>
                 
                 <div class="col-xs-6">
                  <h5>التوقيع : ...................</h5>
                 </div>
                 
             </div> 
                 
                 
                 
                 
                 
           
       </div>
   </div>

            </div>
    </form>
</body>
</html>
