<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form16.aspx.cs" Inherits="SchoolForms_form16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 16</title>
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
                <h3>نموذج رقم (16)</h3>
            </div>


            <div class="container content" align="center">



                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : سجل توديع المعاملات</h5>
                    </div>

                    <div class="col-xs-6">
                        <h5>رمز النموذج : (م.م.ع.ن-02-04)</h5>
                    </div>

                </div>


                <div class="row fo7 text-right">

                    <div class="row">
                        <div class="col-xs-12">
                            <h5>سجل توزيع المعاملات للعام الدراسي  
                                <asp:Literal ID="ltrYear" runat="server">......</asp:Literal>
                                14هـ</h5>
                        </div>
                    </div>

                </div>


                <div class="row table16">
                    <table style="width: 80%">


                        <tr>
                            <th class="text-center" style="font-size: 15px">رقم المعاملة</th>
                            <th class="text-center" style="font-size: 15px">تاريخ المعاملة</th>
                            <th class="text-center" style="font-size: 15px">النوع</th>
                            <th class="text-center" style="font-size: 15px">المرفقات</th>
                            <th class="text-center" style="font-size: 15px">الموضوع</th>
                            <th class="text-center" style="font-size: 15px">الجهة المرسل إليها</th>
                            <th class="text-center" style="font-size: 15px">اسم المستلم</th>
                            <th class="text-center" style="font-size: 15px">اليوم</th>
                            <th class="text-center" style="font-size: 15px">تاريخ الاستلام</th>
                            <th class="text-center" style="font-size: 15px">توقيع المستلم</th>
                        </tr>
                        <asp:ListView ID="LstOutcoming" runat="server" OnDataBinding="LstOutcoming_DataBinding">
                            <ItemTemplate>
                                <tr>

                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                                    <td>
                                        <%# Eval("Number") %>
                                    </td>
                                    <td>
                                        <%#MyDate.getDate(Eval("Date").ToString()) %>
                                    </td>
                                    <td>
                                        <%#ConstantManager.getConstant((int)Eval("Type")) %>
                                    </td>
                                    <td>
                                        <%# ConstantManager.getConstant((int)Eval("Attachment"))%>
                                    </td>
                                    <td>
                                        <%# Eval("Subject")%>
                                    </td>
                                    <td>
                                        <%#ConstantManager.getConstant((int) Eval("SourceTo")) %>
                                    </td>
                                    <td>
                                        <%# Eval("ReceivedName") %>
                                    </td>
                                    <td>
                                        <%#MyDate.getDay((DateTime)Eval("ReceivedDate")) %>
                                    </td>
                                    <td>
                                        <%#MyDate.getDate(Eval("ReceivedDate").ToString()) %>
                                    </td>
                                    <td></td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>

                    </table>


                    <div class="row fo7 text-right">
                        <h5>* أبدا برقم جديد , وصفحة جديدة مع كل بداية عام هجري</h5>
                    </div>



                </div>

            </div>
        </div>

    </form>
</body>
</html>
