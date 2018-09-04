<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form21.aspx.cs" Inherits="SchoolForms_form21" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 21</title>
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
                <h3>نموذج رقم (21)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>النموذج : قرار حسم غياب</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-02-05)</h5>
                    </div>
                </div>
                <div class="row table4-1">
                    <table>
                        <tr>
                            <th>المدرسة</th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></th>
                        </tr>
                    </table>
                </div>
                <div class="row table4-2">
                    <table>
                        <tr>
                            <th>السجل المدني</th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry1" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry2" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry3" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry4" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry5" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry6" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry7" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry8" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry9" runat="server"></asp:Literal></th>
                            <th style="background-color: #D2DED2;" class="text-center">
                                <asp:Literal ID="ltrCivilRegistry10" runat="server"></asp:Literal></th>
                        </tr>
                    </table>
                </div>
                <div class="row table19">
                    <table>
                        <thead>
                            <tr>
                                <th>الاسم</th>
                                <th>التخصص</th>
                                <th>المستوى / المرتبة</th>
                                <th>الدرجة</th>
                                <th>رقم الوظيفة</th>
                                <th>عدد أيام الغياب</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center">
                                    <asp:Literal ID="ltrName" runat="server"></asp:Literal></td>
                                <td class="text-center">
                                    <asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></td>
                                <td class="text-center">
                                    <asp:Literal ID="ltrGrade" runat="server"></asp:Literal></td>
                                <td class="text-center">
                                    <asp:Literal ID="ltrClass" runat="server"></asp:Literal></td>
                                <td class="text-center">
                                    <asp:Literal ID="ltrJobNo" runat="server"></asp:Literal></td>
                                <td class="text-center">
                                    <asp:Literal ID="ltrNoAbsenceDay" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <th>الأيام الواجب حسمها ليحدد التاريخ</th>
                                <td colspan="5" style="background-color: #D2DED2;" class="text-center">
                                    <asp:Literal ID="ltrDates" runat="server"></asp:Literal>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row text">
                    <div class="row">

                        <h5>إن قائد المدرسة
                            <asp:Literal ID="ltrCommanderName" runat="server" Text="................................................................"></asp:Literal></h5>
                    </div>
                    <div class="row">
                        <p>
                            بناء على صلاحياته ، وبناء على المادة (21) من نظام الخدمة المدنية وبناءً على موافقة معالي الوزير على إعطاء بعض<br>
                            الصلاحيات لمديري المدارس بالقرار رقم 1139 / 1 وتاريخ 17 / 3/ 1431 هــ ، 
                       ولبلوغ أيام غيابه عن العمل
                        (<asp:Literal ID="ltrDaysCount" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) يوم ، 
                       <br />
                            وحيث إن عذره غير مقبول ، وبمقتضى النظام .
                        </p>
                    </div>
                    <div class="row">
                        <h5>يقرر ما يلي : </h5>
                    </div>
                    <div class="row">

                        <h5>(1) حسم مدة الغياب الموضحة بعاليه وعددها (<asp:Literal ID="ltrNumberDays" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) يوماً من راتبه .</h5>
                        <h5>(2) على إدارة شؤون الموظفين تنفيذ الأنظمة إجراء الحسم واستبعادها من خدماته وأصل
                            <br>
                            <br>
                            القرار لملفه
بالإدارة مع الأساس لملفه (<asp:Literal ID="ltrFileName" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>). </h5>
                        <h5>والله الموفق ،،،،،،</h5>
                    </div>
                    <br>
                    <div class="row">
                        <h5>الرئيس المباشر</h5>
                        <h5>الختم</h5>
                        <h5>الاسم:
                            <asp:Literal ID="ltrDirectManager" runat="server"></asp:Literal></h5>
                        <h5>التوقيع</h5>
                        <h5>التاريخ :<asp:Literal ID="ltrDate" runat="server" Text="&shy; &shy; / &shy; &shy; / 14 هــ"></asp:Literal></h5>
                        <br>
                        <h5>ملاحظة / لن يتم استلام قرار الحسم بدون المساءلة</h5>
                        <h5>صورة / لشؤون الموظفين لمتابعة تنفيذ الحسم (تنفيذ الأنظمة) </h5>
                        <h5>صورة / لمكتب التعليم</h5>
                        <h5>صورة/ لملفه بالمدرسة</h5>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
