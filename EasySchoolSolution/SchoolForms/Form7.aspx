<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form7.aspx.cs" Inherits="SchoolForms_form7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 7</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="../assets/global/arabicNumbers.js"></script>
    <style type="text/css" media="print">
        @page {
            size: auto; /* auto is the initial value */
            margin: 0mm; /* this affects the margin in the printer settings */
        }

        html {
            background-color: #FFFFFF;
            margin: 0px; /* this affects the margin on the html before sending to printer */
        }

        body {
            /*border: solid 1px blue ;*/
            margin: 10mm 15mm 10mm 15mm; /* margin you want for the content */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container-fluid">

            <div class="row title">
                <h3>نموذج رقم (7)</h3>
            </div>


            <div class="container content" align="center">



                <div class="row sub-title">
                    <div style="float:right;">
                        <h5>اسم النموذج : سجل توزيع حصص الانتظار</h5>
                    </div>
                    <div style="float:left;">

                        <h5>رمز النموذج : (و.ت.ع.ن-01-01)</h5>
                    </div>

                </div>


                <div class="row fo7 text-right">

                    <div class="row">
                        <div class="col-xs-9">
                            <h5>العام الدراسي
                                <asp:Literal ID="ltrSchoolYear" runat="server">.....</asp:Literal>
                                 /  (    
                                <asp:Literal ID="ltrSchoolSemester" runat="server">.....</asp:Literal>
                                )</h5>
                        </div>
                    </div>


                </div>


                       <asp:ListView ID="LstClass" runat="server" OnDataBinding="LstClass_DataBinding" OnItemDataBound="LstClass_ItemDataBound">
                    <ItemTemplate>


                <div class="row fo7 text-right">


                    <div class="row">
                        <div class="col-xs-7">
                            <h5>زملائي المعلمين / نظراً لغياب الزميل :
                                 <%#Eval("absEmpName") %></h5>

                        </div>

                        <div class="col-xs-4">
                            <h5>لهذا اليوم</h5>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col-xs-12">
                            <h5>الموافق  
                                   <%# MyDate.getHijriDate((DateTime)Eval("Date")) %>
                                 آمل تسديد مكانه حسب الجدول الموضح والتوقيع بالعلم ,, ولكم جزيل الشكر</h5>
                        </div>
                    </div>

                </div>


                <div class="row table7">

                    <table style="width: 80%">
                        <tr>
                            <th class="text-center" style="font-size: 15px">الحصة</th>
                            <th class="text-center" style="font-size: 15px">الفصل</th>
                            <th class="text-center" style="font-size: 15px">المادة </th>
                            <th class="text-center" style="font-size: 15px">اسم المعلم المنتظر</th>
                            <th class="text-center" style="font-size: 15px">ما تم تنفيذه في حصة الانتظار </th>
                            <th class="text-center" style="font-size: 15px">التوقيع</th>
                            <th class="text-center" style="font-size: 15px">ملحوظات</th>
                        </tr>


                                  <asp:ListView ID="lstEmpClass" runat="server">
                            <ItemTemplate>

                        <tr>

                            <td class="text-center">      <%# getCounter() %></td>
                            <td class="text-center">          <%#Eval("ClassRoom") %></td>
                            <td><%#Eval("Subject") %></td>
                            <td> <%#Eval("Name") %></td>
                            <td>  <%#Eval("Do") %></td>
                            <td></td>
                            <td>  <%#Eval("Comment") %></td>
                        </tr>
                     </ItemTemplate>
                        </asp:ListView>
                    </table>

                </div>


                        </ItemTemplate>
                           </asp:ListView>
                <div class="row fo7 text-right">

                    <div class="row">
                        <div class="col-xs-7">
                            <h5>وكيل الشؤون التعليمية :<asp:Literal ID="ltrAffairsSignature" runat="server">...........</asp:Literal></h5>
                        </div>

                        <div class="col-xs-5">
                            <h5>التوقيع: ..........</h5>
                        </div>

                    </div>

                </div>











            </div>

        </div>




    </form>
</body>
</html>
