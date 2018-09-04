<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form17.aspx.cs" Inherits="SchoolForms_form18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 38</title>
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
                <h3>نموذج رقم (38)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : محضر فقد أو إتلاف مواد</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.م.ع.ن-06-03)</h5>
                   </div> 
               </div>
               <div class="row table34">
                   <table>
                       <tr>
                           <th style="background:#658C6F;color:#fff">اليوم</th>
                           <th style="background:#D2DED2;width:30%"><asp:Literal ID="ltrDay" runat="server" Text=""></asp:Literal></th>
                           <th style="background:#658C6F;color:#fff">التاريخ</th>
                           <th style="background:#D2DED2;width:30%"><asp:Literal ID="ltrDate" runat="server" Text=""></asp:Literal></th>
                       </tr>
                   </table>
               </div>
               <div class="row table25">
                   <table>
                       <thead>
                           <tr>
                               <th>رقم الصنف</th>
                               <th>اسم الصنف ومواصفاته</th>
                               <th>نوعه</th>
                               <th>الوحدة</th>
                               <th>الكمية</th>
                               <th>أسباب الفقد / التلف</th>
                               <th>ملحوظات</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox1" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox2" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox3" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox4" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox5" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox6" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox7" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox8" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox9" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox10" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox11" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox12" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox13" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox14" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox15" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox16" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox17" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox18" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox19" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox20" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox21" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox22" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox23" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox24" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox25" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox26" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox27" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox28" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox29" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox30" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox31" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox32" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox33" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox34" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox35" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox36" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td></td>
                               <td></td>
                               <td>
                                   <asp:CheckBox ID="CheckBox37" runat="server" Text="مستهلك"/>
                                   <asp:CheckBox ID="CheckBox38" runat="server" Text="مستديم" />
                               </td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row end">
                   <div class="col-xs-4">
                       <h5>المساعد الإداري <br/><br/><asp:Literal ID="ltr" runat="server" Text="....................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>وكيل شؤون المدرسة <br/><br/><asp:Literal ID="ltrSchoolAffairs" runat="server" Text="....................."></asp:Literal></h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>قائد المدرسة <br/><br/><asp:Literal ID="ltrSchoolCommander" runat="server" Text="....................."></asp:Literal></h5>
                   </div>
               </div>
            </div>
        </div>
            </form>
</body>
</html>
