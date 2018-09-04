<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form41.aspx.cs" Inherits="SchoolForms_form41" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 41</title>
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
                <h3>نموذج رقم (41)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : سجل زيارات الفصول</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-07-03)</h5>
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
                    <table style="width: 90%">
                        <tr>
                            <td class="text-center" style="width: 10%; font-size: 15px; font-weight: bold">
                                <asp:Literal ID="ltrWeek" runat="server" Text="الأسبوع"></asp:Literal></td>
                            <td style="font-size: 15px; font-weight: bold">من
                                <asp:Literal ID="ltrWeekFrom" runat="server" Text="&shy; &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; &shy; &shy; / &shy; &shy;&shy; &shy; &shy; &shy;"></asp:Literal>
                                إلى
                                <asp:Literal ID="ltrWeekTo" runat="server" Text="&shy; &shy; &shy; &shy; &shy; /&shy; &shy; &shy; &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; &shy; &shy; 14هـ"></asp:Literal></td>
                        </tr>
                    </table>
                </div>
                <br />
                <div class="row table46">




                    <table style="width: 80%">
                        <thead>
                            <tr>
                                <th style="width:11%; font-size: 15px" class="text-center">اليوم</th>
                                <th style="width:11%; font-size: 15px" class="text-center">الحصة</th>
                                <th style="width:13%; font-size: 15px" class="text-center">1</th>
                                <th style="width:13%; font-size: 15px" class="text-center">2</th>
                                <th style="width:13%; font-size: 15px" class="text-center">3</th>
                                <th style="width:13%; font-size: 15px" class="text-center">4</th>
                                <th style="width:13%; font-size: 15px" class="text-center">5</th>
                                <th style="width:13%; font-size: 15px" class="text-center">6</th>
                            </tr>
                        </thead>

                        <asp:ListView ID="lstVisits" runat="server" OnItemDataBound="lstVisits_ItemDataBound">
                            <ItemTemplate>
                                <tr class="text-center">
                                    <td rowspan="3" style="font-size: 15px; font-weight: bold" class="text-center"><%# MyDate.getDay((DateTime)Eval("Date")) %></td>
                                    <td style="font-size: 15px; font-weight: bold">المادة</td>
                                    <asp:ListView ID="lstSubjects" runat="server">
                                        <ItemTemplate>
                                            <td>
                                                <%#Eval("subjectName") %>
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </tr>

                                <tr class="text-center">
                                    <td style="font-size: 15px; font-weight: bold; width: 12%">الصف</td>
                                    <asp:ListView ID="lstClass" runat="server">
                                        <ItemTemplate>
                                            <td>
                                                <%#Eval("classId") %>
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </tr>
                                <tr class="text-center">
                                    <td style="font-size: 15px; font-weight: bold">اسم المعلم</td>
                                    <asp:ListView ID="lstTeacher" runat="server">
                                        <ItemTemplate>
                                            <td>
                                                <%#Eval("teacherName") %>
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
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
