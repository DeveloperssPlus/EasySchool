<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form37.aspx.cs" Inherits="TahaniSchoolForms_form37" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 37</title>
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
                <h3>نموذج رقم (37)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : سجل استلام عهدة</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.م.ع.ن-06-02)</h5>
                   </div> 
               </div>
               <div class="row sub-par">
                   <div class="col-xs-6">
                       <h5>الاسم / <asp:Literal ID="ltrName" runat="server" Text=".........................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>الوظيفة / <asp:Literal ID="ltrJob" runat="server" Text=".........................................................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-12">
                       <h5>أنا الموقع أدناه استلمت العهدة المجدولة من تاريخه و أتعهد بالمحافظة عليها من الفقدان و التلف.</h5>
                   </div>
               </div>
               <div class="row table25">
                   <table>
                       <thead>
                           <tr>
                               <th>م</th>
                               <th>الصنف</th>
                               <th>العدد</th>
                               <th>تاريخ الاستلام</th>
                               <th>التوقيع</th>
                               <th>تاريخ الإعادة</th>
                               <th>توقيع مستلم العهد المرجعة</th>
                               <th>ملحوظات</th>
                           </tr>
                       </thead>
                       <tbody>
                              <asp:ListView ID="lstObligation" runat="server" OnDataBinding="lstObligation_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>
                                
                                    <td>
                                        <%# Eval("KindName")%>
                                    </td>
                                    <td>
                                        <%# Eval("Count") %>
                                
                                    </td>
                                    <td>
                                         <%# MyDate.getDate( Eval("DateReceive").ToString()) %>
                                
                                    </td>
                                    <td></td>
                                    <td>
                                       <%# Eval("DateReturn") %>
                                    
                                    </td>
                                    <td></td>
                                    <td>
                                        <%# Eval("Comments") %>
                                    </td>
                                
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                       
                       </tbody>
                   </table>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
