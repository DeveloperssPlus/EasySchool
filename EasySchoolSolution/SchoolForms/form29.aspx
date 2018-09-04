<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form29.aspx.cs" Inherits="SchoolForms_form29" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 29</title>
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
                <h3>نموذج رقم (29)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : كشف بالحالات المرضية للطلاب</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.ط.ع.ن-04-01)</h5>
                    </div>
                </div>
                <div class="row table108">
                    <table style="width: 80%">           <asp:ListView ID="lstPatients" runat="server" OnDataBinding="lstPatients_DataBinding">
                            <ItemTemplate>
                        <tr>
                            <th class="text-center" style="width: 1%; font-size: 15px" rowspan="2">م</th>
                            <th class="text-center" style="width: 5%; font-size: 15px" rowspan="2">اسم الطالب</th>
                            <th class="text-center" style="width: 10%; font-size: 15px" rowspan="2">الصف</th>
                            <th class="text-center" style="width: 10%; font-size: 15px" colspan="3">هاتف ولي الأمر</th>
                        </tr>
                        <tr>
                            <th style="font-size: 15px" class="text-center">المنزل</th>
                            <th style="font-size: 15px" class="text-center">العمل</th>
                            <th style="font-size: 15px" class="text-center">الجوال</th>
                        </tr>
             
                                <tr>

                                    <td style="vertical-align: middle; background-color: #658C6F; color: white; font-size: 15px" rowspan="6" class="text-center">

                                        <%# getCounter() %>


                                    </td>

                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("class")%>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblHomeTel" runat="server" Text='<%# Eval("HomeTel") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblWorkTel" runat="server" Text='<%# Eval("WorkTel") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                    </td>
                                    <%--      <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Action") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Recommendations") %>'></asp:Label>
                            </td>--%>
                                </tr>


                                <tr>
                                    <th class="text-center" style="background-color: #90AC95; font-size: 15px" colspan="5">وصــف الحــالة المرضــية</th>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="5" style="width: 75%">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center" style="background-color: #90AC95; font-size: 15px" colspan="2">الاجراءات المطلوبة عند وقوع الحالة</th>
                                    <th class="text-center" style="background-color: #90AC95; font-size: 15px" colspan="3">التوصيــات</th>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2">
                                        <h5>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Action") %>'></asp:Label>
                                        </h5>
                                    </td>



                                    <td colspan="3" class="text-center">
                                        <h5>

                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Recommendations") %>'></asp:Label>
                                        </h5>
                                    </td>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2">
                                        <h5></h5>
                                    </td>
                                    <td colspan="3">
                                        <h5></h5>
                                    </td>
                                </tr>


                            </ItemTemplate>
                        </asp:ListView>

                    </table>
                    <br />
                </div>
            </div>
        </div>
    </form>

</body>
</html>
