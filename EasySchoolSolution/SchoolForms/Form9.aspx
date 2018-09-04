<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form9.aspx.cs" Inherits="SchoolForms_form9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 9</title>
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
            <h3>نموذج رقم (9)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : تقرير المناوبة اليومي</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ت.ع.ن-01-03)</h5>
               </div>
               
           </div>
           
           
            <div class="row fo7 text-right">
            
               <div class="row">
                 <div class="col-xs-12">
                   <h5> العام الدراسي <asp:Literal ID="ltrYear" runat="server">.....</asp:Literal> 14 هـ/ الفصل (      <asp:Literal ID="ltrsemester" runat="server">...........</asp:Literal>)</h5>
                 </div>
                </div> 
               
               
               <div class="row">
                  <div class="col-xs-5">
                  <h5>اليوم<asp:Literal ID="ltrToday" runat="server">...........</asp:Literal></h5>
                  
                  </div>
                   
                 <div class="col-xs-5">
                  <h5>التاريخ<asp:Literal ID="ltrDate" runat="server">..../..../....</asp:Literal>14هـ</h5>
                </div>
                
             </div>
          
</div>
           
              
             <div class="row table9-1">
              
              <table style="width:80%">
  <tr>
    <th class="text-center" style="width:5%;font-size:15px">م</th>
    <th class="text-center" style="font-size:15px">اسم الموظف المناوب*</th>
    <th class="text-center"style="font-size:15px">التوقيع</th>
    <th class="text-center" style="font-size:15px">ملحوظــات</th>
  </tr>
  
  
              
              <tr>
              
              <td  class="text-center">1</td>
              <td></td>
              <td></td>
              <td></td>
             
              </tr>
              
               
              <tr>
              
              <td  class="text-center">2</td>
              <td></td>
              <td></td>
              <td></td>
             
              </tr>
              
</table>
                 
             </div>
             
             
            <br/>
            
            
            <div class="row fo7 text-right">
                 <h5>أسماء الطلاب المتأخرين</h5>
                        
           </div>
           
              
              <div class="row table9-1">
              
              <table style="width:80%">
  <tr>
    <th class="text-center" style="width:5%"><h5>م</h5></th>
    <th class="text-center"><h5>الاسم</h5></th>
    <th class="text-center"><h5>الفصل</h5></th>
    <th class="text-center"><h5>الزمن</h5></th>
    <th class="text-center"><h5>الاجراء المتخذ</h5></th>
    <th class="text-center"><h5>ملحوظات</h5></th>
  </tr>
  
  
              
              <tr>
              
              <td  class="text-center">1</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              <tr>
              
              <td  class="text-center">2</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              <tr>
             
             
              <td  class="text-center">3</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
            <tr>
              
              <td  class="text-center">4</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
             <tr>
              
              <td  class="text-center">5</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr> 
</table>
                 
             </div>
             
             
             <br/>
            
            
            <div class="row fo7 text-right">
                 <h5>أسماء الطلاب المخالفين</h5>
                        
           </div>
           
              
              <div class="row table9-1">
              
              <table style="width:80%">
  <tr>
    <th  class="text-center" style="width:5%"><h5>م</h5></th>
    <th class="text-center"><h5>الاسم</h5></th>
    <th class="text-center"><h5>الفصل</h5></th>
    <th class="text-center"><h5>الزمن</h5></th>
    <th class="text-center"><h5>الاجراء المتخذ</h5></th>
    <th class="text-center"><h5>ملحوظات</h5></th>
  </tr>
  
  
              
              <tr>
              
              <td  class="text-center">1</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              <tr>
              
              <td  class="text-center">2</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
              <tr>
             
             
              <td  class="text-center">3</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
            <tr>
              
              <td  class="text-center">4</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr>
             <tr>
              
              <td  class="text-center">5</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
             <td></td>
              </tr> 
</table>
                 
             </div>
             
             
             
             <div class="row fo7 text-right">
                 <h5>* يتم تسليم هذا التقرير إلى وكيل الشؤون التعليمية في اليوم التالي للمناوبة .</h5>
             </div>
                 
                 
              
             
               
           
           
           
           
           
          
           </div>
           
       </div>
 

    </form>
</body>
</html>
