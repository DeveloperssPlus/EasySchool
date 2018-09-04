<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form14.aspx.cs" Inherits="SchoolForms_form14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 14</title>
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
            <h3>نموذج رقم (14)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : بيان اطلاع الموظفين على التعاميم</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (م.م.ع.ن-02-02)</h5>
               </div>
               
           </div>
           
           
            <div class="row fo7 text-right">
            
               <div class="row">
                 <div class="col-xs-12">
                   <h5>بيان اطلاع الموظفين على التعاميم للعام الدراسي  <asp:Literal ID="ltrYear" runat="server">....</asp:Literal> 14هـ/ الفصل ( <asp:Literal ID="ltrSemester" runat="server">.....</asp:Literal> )</h5>
                 </div>
                </div> 
               
               
               <div class="row">
                  <div class="col-xs-12">
                  <h5>الأخوة منسوبي المدرسة /<asp:Literal ID="ltrSchoolName" runat="server">..............</asp:Literal></h5>
                  </div>
             </div>
             
             
             <div class="row">
                  <div class="col-xs-6">
                  <h5>آمل الاطلاع على التعميم المرفق رقم<asp:Literal ID="ltrAttachedNo" runat="server">........</asp:Literal> </h5>
                  </div>
                  
                  <div class="col-xs-6">
                        <h5>و تاريخ<asp:Literal ID="ltrDate" runat="server">...../..../.... </asp:Literal>  14 هـ الصادر من /<asp:Literal ID="ltrIssuedFrom" runat="server">........</asp:Literal></h5>
              
                  </div>
            </div>
            
            
            <div class="row">
                  <div class="col-xs-12">
                  <h5>بخصوص /<asp:Literal ID="ltrAbout" runat="server">........................................</asp:Literal> </h5>
                  </div>
            </div>      
         
       
</div>




 <div class="row table14"> 
        <table style="width:80%">
        
        
  <tr>
    <th class="text-center" style="width:5%;font-size:15px">م</th>
    <th class="text-center" style="font-size:15px">اسم الموظف</th>
    <th class="text-center" style="font-size:15px">التوقيع</th>
    <th class="text-center" style="width:5%;font-size:15px">م</th>
    <th class="text-center" style="font-size:15px">اسم الموظف</th>
    <th class="text-center" style="font-size:15px">التوقيع</th>
  </tr>
  
    <asp:ListView ID="LstEmployee" runat="server" OnDataBinding="LstEmployee_DataBinding">
          
                <ItemTemplate>
                    <tr>
                           <td>
                                        <%# getCounter() %>
                                    </td>
                        <td>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("EmployeeName") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IsSeenn") %>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
           </asp:ListView>
  </table>
            
               
           <div class="row fo7 text-right">
             <div class="col-xs-12">
                 <h5>التوقيع بالعلم , والله يحفظكم,,,</h5>
                 </div>
             </div>
                 
           
          
           </div>
           
       </div>
   </div>


 

    </form>
</body>
</html>
