<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form47.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 47</title>
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
            <h3>نموذج رقم (47)</h3>
       </div>
       
       
       <div class="container content" align="center">
       
       
       
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : جرد المعامل</h5>
               </div>
               
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-08-05)</h5>
               </div>
               
           </div>
            
           
           <br />
 
            <div class="row table43-1"> 
        <table style="width:80%">
        
<thead>
  <tr>
    <th class="text-center" style="width:5%;font-size:15px">م</th>
    <th class="text-center" style="font-size:15px">رقم الصنف</th>
    <th class="text-center" style="font-size:15px">اسم الصنف</th>
    <th class="text-center" style="font-size:15px">الوحدة</th>
    <th class="text-center" style="font-size:15px">المقيد بالعهدة</th>
    <th class="text-center" style="font-size:15px">صالح</th>
    <th class="text-center" style="font-size:15px">غير صالح</th>
    <th class="text-center" style="font-size:15px">الزيادة</th>

    
  </tr>
    </thead>
      
    
      <asp:ListView ID="lstlaboratoriesInventory" runat="server" OnDataBinding="lstlaboratoriesInventory_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td><%# getCounter() %></td>
                                    <td>
<%--                                        <asp:HiddenField ID="Labid" runat="server" Value='<%# Eval("Id")%>' />--%>

                                        <%# Eval("KindId") %>
                                    </td>

                                    <td>
                                        <%# Eval("KindName")%>
                                    </td>
                                    <td>
                                        <%# Eval("Unit")%>
                                    </td>
                                    <td>
                                        <%# Eval("ObligatedCount")   %>
                                
                                    </td>
                                    <td>
                                        <%# Eval("ValidCount") %>
                                
                                    </td>
                                        <td>
                                        <%# Eval("NotValidCount") %>
                                
                                    </td>

                                    <td>
                                        <%# Eval("increase") %>
                                
                                    </td>

                                   

                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
  </table>  
  
  </div>

            <div class="row table43-2">
               <table>
                   <thead>
                       <tr>
                           <th>محضر المختبر</th>
                           <th>وكيل الشؤون المدرسية</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td>الاسم / <asp:Literal ID="ltrLaboratoryMinutes2" runat="server" Text=".................."></asp:Literal></td>
                           <td>الاسم /<asp:Literal ID="ltrUndersecretarySchoolAffairs2" runat="server" Text="...................."></asp:Literal></td>
                       </tr>
                       <tr>
                           <td>التوقيع</td>
                           <td>التوقيع</td>
                       </tr>
                   </tbody>
               </table>
           </div>
        
       </div>
   </div>
</body>
</html>
