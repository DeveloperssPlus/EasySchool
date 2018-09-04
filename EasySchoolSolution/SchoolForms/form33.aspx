<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form33.aspx.cs" Inherits="SchoolForms_form18" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 33</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        #colspan3 {
            background-color: #EBF0EA;
            color: white;
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
    <div class="container-fluid">

        <div class="row title">
            <h3>نموذج رقم (33)</h3>
        </div>


        <div class="container content" align="center">



            <div class="row sub-title">
                <div class="col-xs-6">
                    <h5>اسم النموذج : التقرير الفصلي للإرشاد الطلابي</h5>
                </div>

                <div class="col-xs-6">
                    <h5>رمز النموذج : (و.ط.ع.ن-04-05)</h5>
                </div>

            </div>


            <div class="row fo7 text-right">

                <div class="row">
                    <div class="col-xs-12">
                        <h5>شهر 
                            <asp:Literal ID="ltrMonth" runat="server" Text=".... / ....."></asp:Literal> هــ</h5>
                    </div>
                </div>



            </div>

            <br/>
           
           
           
            <div class="row table33">
                <table style="width: 80%">



                  <tr>
    <th colspan="8" style="width:80%;font-size:15px">رعاية الطلاب المعيدين</th>

    
  </tr>
      
    <tr>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد الطلاب</th>
    <th colspan="2"    style="background-color:#90AC95;width:50%;font-size:15px"  class="text-center">البرامج المنفذة</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد المستفيدين</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px"h5 class="text-center">مدى الاستجابة</th>
  </tr>
    
    
    
              <tr>       
              <td style="background-color:#D2DED2" rowspan="2"></td>
              <td style="background-color:#D2DED2" colspan="1">1-</td>
             <td style="background-color:#D2DED2" colspan="1">2-</td>
             <td style="background-color:#D2DED2"  rowspan="2"></td>
             <td style="background-color:#D2DED2" rowspan="2"></td>
              </tr>
    
    
    
    <tr> 
    <td style="background-color:#EBF0EA">3-</td>
    <td style="background-color:#EBF0EA">4-</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#90AC95;color:white;font-size:15px">الصعوبات التي حدثت</td>
    <td colspan="3" style="background-color:#90AC95;color:white;font-size:15px">المقترحات</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#D2DED2;color:white"></td>
    <td colspan="3" style="background-color:#D2DED2;color:white"></td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#EBF0EA;color:white"></td>
    <td colspan="3" style="background-color:#EBF0EA;color:white"></td>
    </tr>
    
    
    
    
     <tr>
    <th colspan="8" style="width:80%;font-size:15px">رعاية الطلاب المتأخرين دراسياً</th>

    
  </tr>
      
    <tr>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد الطلاب</th>
    <th colspan="2"    style="background-color:#90AC95;width:50%"  class="text-center">البرامج المنفذة</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد المستفيدين</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">مدى الاستجابة</th>
  </tr>
    
    
    
              <tr>       
              <td style="background-color:#D2DED2" rowspan="2"></td>
              <td style="background-color:#D2DED2" colspan="1">1-</td>
             <td style="background-color:#D2DED2" colspan="1">2-</td>
             <td style="background-color:#D2DED2"  rowspan="2"></td>
             <td style="background-color:#D2DED2" rowspan="2"></td>
              </tr>
    
    
    
    <tr> 
    <td style="background-color:#EBF0EA">3-</td>
    <td style="background-color:#EBF0EA">4-</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#90AC95;color:white;font-size:15px">الصعوبات التي حدثت</td>
    <td colspan="3" style="background-color:#90AC95;color:white;font-size:15px"> المقترحات</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#D2DED2;color:white"></td>
    <td colspan="3" style="background-color:#D2DED2;color:white"></td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#EBF0EA;color:white"></td>
    <td colspan="3" style="background-color:#EBF0EA;color:white"></td>
    </tr>
    
    
    
    
    
   
    
    
    
    
     <tr>
    <th colspan="8" style="width:80%;font-size:15px">رعاية الطلاب المتفوقين</th>

    
  </tr>
      
    <tr>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد الطلاب</th>
    <th colspan="2"    style="background-color:#90AC95;width:50%;font-size:15px"  class="text-center">البرامج المنفذة</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">عدد المستفيدين</th>
    <th   style="background-color:#90AC95;width:10%;font-size:15px" class="text-center">مدى الاستجابة</th>
  </tr>
    
    
    
              <tr>       
              <td style="background-color:#D2DED2" rowspan="2"></td>
              <td style="background-color:#D2DED2" colspan="1">1-</td>
             <td style="background-color:#D2DED2" colspan="1">2-</td>
             <td style="background-color:#D2DED2"  rowspan="2"></td>
             <td style="background-color:#D2DED2" rowspan="2"></td>
              </tr>
    
    
    
    <tr> 
    <td style="background-color:#EBF0EA">3-</td>
    <td style="background-color:#EBF0EA">4-</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#90AC95;color:white;font-size:15px">الصعوبات التي حدثت</td>
    <td colspan="3" style="background-color:#90AC95;color:white;font-size:15px">المقترحات</td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#D2DED2;color:white"></td>
    <td colspan="3" style="background-color:#D2DED2;color:white"></td>
    </tr>
    
    <tr> 
    <td colspan="2" style="background-color:#EBF0EA;color:white"></td>
    <td colspan="3" style="background-color:#EBF0EA;color:white"></td>
    </tr>
    
    

        
  </table>  
  
  </div>     
           
         
          
           
           
       </div>
   </div>


</body>
</html>
