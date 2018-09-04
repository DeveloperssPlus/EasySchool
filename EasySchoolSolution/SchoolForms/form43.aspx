<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form43.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <h3>نموذج رقم (43)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : سجل جرد المختبر والمواد الكيميائية</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.م.ع.ن-08-01)</h5>
               </div>
           </div>
           <div class="row item">
               <h5>اولاً: جرد المختبر</h5>
           </div>
           <div class="row table43-1">
               <table>
                   <thead>
                       <tr>
                           <th>م</th>
                           <th>رقم الصنف</th>
                           <th>اسم الصنف</th>
                           <th>الوحدة</th>
                           <th>الكمية</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                   <asp:ListView ID="lstLaboratory" runat="server" OnDataBinding="lstLaboratory_DataBinding">
                    <ItemTemplate>
                        <tr>
                            <td> <%# getCounter() %></td>
                            <td>
<%--                                <asp:HiddenField ID="ProId" runat="server" Value='<%# Eval("KindId") %>' />--%>
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("KindName")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
                                
                            </td>
                            <td>
                                <asp:Label ID="lblPerm" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                
                            </td>
                              
                            
                            <td>
                                <%# Eval("Comment") %>
                            </td>
                               
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
                   </tbody>
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
                           <td>الاسم / <asp:Literal ID="ltrLaboratoryMinutes1" runat="server"></asp:Literal></td>
                           <td>الاسم / <asp:Literal ID="ltrUndersecretarySchoolAffairs1" runat="server"></asp:Literal></td>
                       </tr>
                       <tr>
                           <td>التوقيع</td>
                           <td>التوقيع</td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="row item">
               <h5>ثانياً: بيان بعهدة خزانة المواد الكيميائية رقم الخزانة (<asp:Literal ID="ltrTreasuryNo" runat="server"></asp:Literal>)</h5>
           </div>
           <div class="row table43-1">
               <table>
                   <thead>
                       <tr>
                           <th>م</th>
                           <th>رقم الصنف</th>
                           <th>اسم الصنف</th>
                           <th>الوحدة</th>
                           <th>الكمية</th>
                           <th>ملحوظات</th>
                       </tr>
                   </thead>
                   <tbody>
                       <asp:ListView ID="lstCupboard" runat="server"  OnDataBinding="lstCupboard_DataBinding" >
                    <ItemTemplate>
                        <tr>
                            <td> <%# getCounter() %></td>
                            <td>
                                
                                <%# Eval("KindId") %>
                            </td>
                           
                            <td>
                                <%# Eval("KindName")%>
                            </td>
                            <td>
                                <%# Eval("Unit")%>
                            </td>
                            <td>
                                <asp:Label ID="lblDamg" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                
                            </td>
                                <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Comments") %>'></asp:Label>
                                
                            </td>
                            
                                    
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
                   </tbody>
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
