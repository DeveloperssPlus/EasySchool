<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form45.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 45</title>
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
            <h3>نموذج رقم (45)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : الخطة الفصلية للتجارب العملية</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-08-03)</h5>
               </div>
               
           </div>
           
           
            <div class="row fo7 text-right">
            
               <div class="row">
                 <div class="col-xs-12">
                 <h5>الفصل الدراسي :<asp:Literal ID="ltrMonth" runat="server"> ................. </asp:Literal> </h5>
                 </div>
               </div> 
                 
                 
               
               </div> 
           
           <br />
           
           
            <div class="row table45"> 
                <table style="width:80%">
                    <thead>
                        <tr>
                        <th class="text-center" style="width:5%;font-size:15px">م</th>
                        <th class="text-center" style="font-size:15px">الفصل</th>
                        <th class="text-center" style="font-size:15px">المادة</th>
                        <th class="text-center" style="font-size:15px">اسم التجربة</th>
                        <th class="text-center" style="font-size:15px">اسم الكتاب ورقم الصفحة</th>
                        <th class="text-center" style="font-size:15px">أسبوع التجربة</th>
                        <th class="text-center" style="font-size:15px">أدوات التجربة</th>
                        <th class="text-center" style="font-size:15px">التوصيات</th>

                    </tr>
                    </thead>
   <asp:ListView ID="lstExperience" runat="server" OnDataBinding="lstExperience_DataBinding" >
                    <ItemTemplate>
                        <tr>
                            <td> <%# getCounter() %></td>

                            <td>
                                
                                <%# Eval("Class") %>
                            </td>
                           
                            <td>
                                <%# Eval("Subject")%>
                            </td>
                            <td>
                                <%# Eval("Name")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# string.Format("{0} - {1}",Eval("BookName"), Eval("BookPage"))   %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Week") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tools") %>'></asp:Label>
                                
                            </td>
                              <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("NameTecher") %>'></asp:Label>
                                
                            </td>
                            
                                    
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
         <tr>
         
         <th style="font-size:15px" colspan="5" class="text-center" >المرشد الطلابي</th>
    <th style="font-size:15px" colspan="3" class="text-center">قائد المدرسة</th>
    
  </tr>
             <tr>
             <td colspan="5">
             <div class="row">
               <div class="col-xs-12">
                   <h5>الاسم / <asp:Literal ID="ltrStudentAdvisor" runat="server" Text="..............."></asp:Literal></h5>
               </div>
               </div>
               <div class="row">
               <div class="col-xs-12">
                   <h5>التوقيع</h5>
               </div>
               </div>
             </td>
             <td colspan="3">
             <div class="row">
               <div class="col-xs-12">
                   <h5>الاسم / <asp:Literal ID="ltrSchoolCommander" runat="server" Text="...................."></asp:Literal></h5>
               </div>
               </div>
               <div class="row">
               <div class="col-xs-12">
                   <h5>التوقيع</h5>
               </div>
               </div></td>
             </tr>
        
  </table>  
  
  </div>              
           
       </div>
   </div>
</body>
</html>
