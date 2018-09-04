<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form42.aspx.cs" Inherits="SchoolForms_form42" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 42</title>
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
                <h3>نموذج رقم (42)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : سجل التردد اليومي</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-07-04)</h5>
                    </div>
                </div>
                <div class="row fo7 text-right">
                    <div class="row">
                        <div class="col-xs-12">

                            <h5>للعام الدراسي
                                <asp:Literal ID="ltrYear" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; 14هـ"></asp:Literal>
                                /
                                <asp:Literal ID="ltrSemester" runat="server" Text="&shy; &shy; &shy;  الفصل (    )"></asp:Literal>
                            </h5>

                        </div>
                    </div>
                </div>
                <br />
                <div class="row table46">
                    <table style="width: 80%">
                        <thead>
                            <tr>
                                <th class="text-center" style="width: 3%; font-size: 15px">م</th>
                                <th class="text-center" style="font-size: 15px">اليوم والتاريخ</th>
                                <th class="text-center" style="font-size: 15px">اسم الطالب</th>
                                <th class="text-center" style="font-size: 15px">الصف</th>
                                <th class="text-center" style="font-size: 15px">وقت الزيارة</th>
                                <th class="text-center" style="font-size: 15px">الغرض من الزيارة</th>
                                <th class="text-center" style="font-size: 15px">المواد والأجهزة المستخدمة</th>
                                <th class="text-center" style="font-size: 15px">توقع الطالب</th>
                            </tr>
                        </thead>
                        <asp:ListView ID="lstLibraryVisits" runat="server" OnDataBinding="lstLibraryVisits_DataBinding">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# getCounter() %>
                                    </td>
                                    <td>
                                        <%# MyDate.getDay((DateTime)Eval("Date"))+"<br/> "+ MyDate.getDate(Eval("Date").ToString()) %>
                                    </td>
                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td></td>
                                    <td>
                                        <%# Eval("Time") %>
                                    </td>

                                    <td>
                                        <%# Eval("Reason") %>
                                    </td>
                                    <td>
                                        <%# Eval("MaterialsUsed") %>
                                    </td>
                                    <td></td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </table>
                </div>
                          <div class="row fo7 text-right">
                    <div class="row">

                        <div class="col-xs-6">
                            <h5>أمين مركز مصادر التعلم :
                           <asp:Literal ID="ltrSecretaryResourceCenter" runat="server" Text="................."></asp:Literal></h5>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-xs-6">
                            <h5>التوقيع : .........................................</h5>
                        </div>
                    </div>
                </div>
                </div>
            </div>
    </form>

</body>
</html>
