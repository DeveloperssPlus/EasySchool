<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form36.aspx.cs" Inherits="SchoolForms_form36" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 36</title>
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
                <h3>نموذج رقم (36)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : كشف بموجودات المستودع العام للمدرسة</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-06-01)</h5>
                    </div>
                </div>
                <div class="row table25">
                    <table>
                        <thead>
                            <tr>
                                <th rowspan="2">م</th>
                                <th rowspan="2">رقم الصنف</th>
                                <th rowspan="2">أوصافه</th>
                                <th colspan="2">الحالة</th>
                                <th rowspan="2">الكمية</th>
                                <th colspan="2">نوعه</th>
                                <th rowspan="2">التاريخ</th>
                                <th rowspan="2">ملحوظات</th>
                            </tr>
                            <tr>
                                <th>سليم</th>
                                <th>تالف</th>
                                <th>مستهلك</th>
                                <th>مستديم</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="lstRepositays" OnItemDataBound="lstRepositays_ItemDataBound" runat="server" OnDataBinding="lstRepositays_DataBinding">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#getCounter()%></td>
                                        <td>
                                            <asp:HiddenField ID="ProId" runat="server" Value='<%# Eval("Id") %>' />
                                            <%# Eval("KindId") %>
                                        </td>

                                        </td>
                            <td>
                                <%# Eval("Description")%>
                            </td>
                                        <td>
                                            <asp:Label ID="lblcheck" runat="server"></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="lblClose"  runat="server"></asp:Label>

                                        </td>

                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>

                                        </td>
                                        <td></td>
                                        <td>
                                            <%# Eval("Perminant")%>
                                        </td>

                                        <td>
                                            <%# MyDate.getDate( Eval("Date").ToString()) %>
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
                <div class="row end">
                    <div class="col-xs-6">
                        <h5>المسؤول عن المستودع</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>وكيل شؤون المدرسة</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>الاسم /
                            <asp:Literal ID="ltrResponsibleWareHouse" runat="server"></asp:Literal></h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>الاسم /
                            <asp:Literal ID="ltrUndersecretarySchoolAffairs" runat="server"></asp:Literal></h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>التوقيع / </h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>التوقيع / </h5>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
