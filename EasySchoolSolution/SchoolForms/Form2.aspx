<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form2.aspx.cs" Inherits="SchoolForms_Form2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 2</title>
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
            <h3>نموذج رقم (2)</h3>
       </div>
       
       <div class="container content text-center">
       
       <div class="container con" align="center">
           <div class="row sub-title">
               <div class="col-xs-6   text-center">
                   <h5>اسم النموذج : استمارة البيانات الشخصية للطالب</h5>

               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ط.ع.ن-01-02)</h5>
               </div>
           </div>
           
           
           <div class="row table-name">
           
               <div class="col-xs-6">
               <h3>البيانات الشخصية</h3>
               </div>
           </div>
          
          
            
          
           <div class="row table21" >
               <table style="width:80%">
               
                 <tbody >
                <tr class="text-center">
               <th style="font-size:15px" class="text-center">المرحلة الدراسية</th>
               <th style="font-size:15px" class="text-center">الصف الدراسي</th>
               <th style="font-size:15px" class="text-center">الفصل</th>
               <th  colspan="1" style="font-size:15px" class="text-center">الجنسية</th>
               <th  colspan="3" style="font-size:15px" class="text-center">رقم السجل المدني/الاقامة</th>
               </tr>
               
               
               <tr class="text-center">
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td colspan="1" style="background-color:#EBF0EA;"></td>
              <td colspan="3" style="background-color:#EBF0EA;"></td>
              </tr>
    
              
              
              <tr class="text-center"> 
               <th colspan="2" style="font-size:15px" class="text-center">رقم الطالب: خاص بالمدرسة</th>
               <th  colspan="2" rowspan="2" style="font-size:15px" class="text-center">تاريخ الهوية </th>
               <th style="font-size:15px" class="text-center">يوم</th>
               <th style="font-size:15px" class="text-center">شهر</th>
               <th style="font-size:15px" class="text-center">سنة</th>
               
               </tr>
              <tr class="text-center">

              <td colspan="2" style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              </tr>
              <tr class="text-center">
               <th  colspan="2" style="font-size:15px" class="text-center">الاسم رباعيا</th>
               <th colspan="2" style="font-size:15px" class="text-center">الاسم الأول</th>
               <th style="font-size:15px" class="text-center">اسم الأب</th>
               <th style="font-size:15px" class="text-center">اسم الجد</th>
               <th style="font-size:15px" class="text-center">العائلة (اللقب)</th>
               </tr>
               
               
               <tr class="text-center">
              <th colspan="2"></th>
              <td colspan="2" style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              
              </tr>
              <tr class="text-center">
               <th  colspan="2" ></th>
               <th colspan="2" style="font-size:15px" class="text-center">GFATHER</th>
               <th style="font-size:15px" class="text-center">FATHER</th>
               <th style="font-size:15px" class="text-center">FNAME</th>
               <th style="font-size:15px" class="text-center">FAMILY</th>
               </tr>
               
               
               <tr class="text-center">
              <th colspan="2"></th>
              <td colspan="2" style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              
              </tr>
              
              
              <tr class="a text-center">
               <th  colspan="1" style="font-size:15px" class="text-center">رقم جواز السفر</th>
               <th  colspan="2"></th>
               <th class="text-center">تاريخ الميلاد</th>
               <th style="color:black;font-size:15px" class="text-center"> /&shy;&shy; &shy; &shy;&shy;/ </th>
               <th style="font-size:15px" class="text-center">مكان الولادة / الدولة</th>
               <th></th>
               </tr>
              
              
              <tr class="aa text-center">
               <th  colspan="1" style="font-size:15px" class="text-center">مكان الميلاد/ المدينة</th>
               <th  colspan="2"></th>
               <th style="font-size:15px" class="text-center">فئة الدم</th>
               <th></th>
               <th style="font-size:15px" class="text-center">ملكية السكن</th>
               <th></th>
               </tr>
                 </tbody>
               </table>
               
               </div>
               
               <div class="row table-name">
           
               <div class="col-xs-6">
               <h3>بيانات الاتصال</h3>
                     </div>
                     
                </div>
           
           
            
           
            <div class="row table21">
           <table style="width:80%">
               
                 <tbody>
                
                <tr class="a text-center">
               <th style="width:10%;font-size:15px" class="text-center">المنطقة الادارية</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">المدينة</th>
              <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">الحي</th>
                <th style="width:10%;font-size:15px"></th>
               </tr>
               
               
               
               <tr class="aa">
               <th style="width:10%;font-size:15px" class="text-center">الشارع الرئيسي</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">الشارع الفرعي</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">رقم المنزل</th>
               <th style="width:10%;font-size:15px"></th>
               </tr>
               
               
               <tr class="a text-center">
               <th style="width:10%;font-size:15px" class="text-center">البريد الالكتروني</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">الرمز البريدي</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">صندوق البريد</th>
               <th style="width:10%;font-size:15px"></th>
               </tr>
               
               
               <tr class="aa text-center">
               <th style="width:10%;font-size:15px" class="text-center">الفاكس</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">العنوان في الاجازة</th>
               <th   colspan="3" style="width:10%;font-size:15px"></th>
               
               </tr>
               
              
               
               <tr class="text-center">
               <th  colspan="2" rowspan="6" style="width:10%;font-size:15px" class="text-center">بيانات ولي أمر الطالب</th>
               <th  style="width:10%;font-size:15px" class="text-center">اسم ولي الأمر</th>
               <th style="width:10%;font-size:15px" class="text-center">الجنسية</th>
               <th style="width:10%;font-size:15px" class="text-center">صلة القرابة</th>
               <th style="width:10%;font-size:15px" class="text-center">نوع الهوية</th>
               
               </tr>
               
               
               <tr>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              </tr>
               
             
             
             <tr class="text-center">
               <th  style="width:10%;font-size:15px" class="text-center">تاريخها</th>
               <th colspan="2" style="width:10%;font-size:15px" class="text-center">مصدرها</th>
               <th style="width:10%;font-size:15px" class="text-center">نهايتها</th>
               </tr>
               
             <tr class="text-center">
              <td style="text-align:center;background-color:#EBF0EA;"> /&shy;&shy; &shy; &shy;&shy;/ </td>
              <td colspan="2" style="background-color:#EBF0EA;"></td>
              <td style="text-align:center;background-color:#EBF0EA;"> /&shy;&shy; &shy; &shy;&shy;/ </td>
              </tr>  
              
               
                <tr class="text-center">
               <th  style="width:10%;font-size:15px" class="text-center">رقم هاتف المنزل</th>
               <th colspan="2" style="width:10%;font-size:15px" class="text-center">رقم الهاتف الجوال</th>
               <th style="width:10%;font-size:15px" class="text-center">رقم هاتف العمل</th>
               </tr>
               
             <tr>
              <td style="background-color:#EBF0EA;"></td>
              <td colspan="2" style="background-color:#EBF0EA;"></td>
              <td style="background-color:#EBF0EA;"></td>
              </tr>  
              
               
               
               <tr class="a text-center">
               <th style="width:10%;font-size:15px" class="text-center">اسم قريب للطالب 1</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">الهاتف</th>
              <th style="width:10%;"></th>
               <th style="width:10%;font-size:15px" class="text-center">العنوان</th>
                <th style="width:10%;font-size:15px"></th>
               </tr>
               
               
               
              <tr class="aa text-center">
               <th style="width:10%;font-size:15px" class="text-center">اسم قريب للطالب 2</th>
               <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">الهاتف</th>
              <th style="width:10%;font-size:15px"></th>
               <th style="width:10%;font-size:15px" class="text-center">العنوان</th>
                <th style="width:10%;font-size:15px"></th>
               </tr>
               
                 </tbody>
                 </table>
           
             </div>             
               
            
            <div class="row foot text-right">
            
               <div class="row">
               <div class="col-xs-6">
                   <h5>اسم الطالب :<asp:Literal ID="ltrStuName" runat="server">...............</asp:Literal></h5>

               </div>
               <div class="col-xs-6">
                   <h5>التوقيع على صحة البيانات ...............</h5>
                   
               </div>
               </div>
               
               
               <div class="row">
               
               <div class="col-xs-6">
                   <h5>اسم ولي الأمر :<asp:Literal ID="ltrFathName" runat="server">...............</asp:Literal></h5>
                   
               </div>
               
               <div class="col-xs-6">
                   <h5>التوقيع على صحة البيانات ...............</h5>
                   
               </div>
               
               </div>
               
           </div>
          
           
          
         
       </div>
   </div>
        </div>
    </form>
</body>
</html>
