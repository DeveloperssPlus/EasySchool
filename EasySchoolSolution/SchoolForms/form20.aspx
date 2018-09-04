<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form20.aspx.cs" Inherits="SchoolForms_form20" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 20</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

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
            margin: 10mm 10mm 10mm 10mm; /* margin you want for the content */
        }

        tr.vendorListHeading {
            background-color: #1a4567 !important;
            -webkit-print-color-adjust: exact;
        }

        .vendorListHeading th {
            color: white !important;
        }
    </style>
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
                <h3>نموذج رقم (20)</h3>
            </div>
            <div class="container content" align="center">
                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : مساءلة غياب</h5>
                    </div>
                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-02-04)</h5>
                    </div>

                </div>
                <div class="row table4-1">
                    <table>
                        <tr>
                            <th>المدرسة</th>
                            <th class="text-center">
                                <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></th>
                        </tr>
                    </table>
                </div>
                <div class="row table4-2">
                    <table>
                        <tr>
                            <th>السجل المدني</th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry1" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry2" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry3" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry4" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry5" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry6" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry7" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry8" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry9" runat="server"></asp:Literal></th>
                            <th class="text-center">
                                <asp:Literal ID="ltrCivilRegistry10" runat="server"></asp:Literal></th>
                        </tr>
                    </table>
                </div>
                <div class="row table19">

                    <table style="width: 80%">
                        <tbody>
                            <tr>
                                <th class="text-center" style="width: 40%; font-size: 15px">الاسم</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">التخصص</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">المستوى / المرتبة</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">الدرجة</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">رقم الوظيفة</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">العمل الحالي</th>
                                <th class="text-center" style="width: 10%; font-size: 15px">عدد أيام الغياب</th>
                            </tr>
                            <tr>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrName" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrGrade" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrClass" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrJobNo" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrCurrentWork" runat="server"></asp:Literal></td>
                                <td class="text-center" style="width: 10%; background-color: #D2DED2;">
                                    <asp:Literal ID="ltrNoAbsenceDay" runat="server"></asp:Literal></td>
                            </tr>

                            <tr>
                                <td colspan="7">
                                    <div class="row">
                                    <div class="col-md-12">

                                        <h5>
                                            إنه في يوم
                                            <asp:Literal ID="ltrDayFrom" runat="server"></asp:Literal>

                                            الموافق
                                                <asp:Literal ID="ltrDateFrom" runat="server" Text=""></asp:Literal>

                                            تغيبت عن العمل الى يوم
                                                <asp:Literal ID="ltrDayTo" runat="server" Text=""></asp:Literal>
                                        الموافق
                                                <asp:Literal ID="ltrDateTo" runat="server" Text=""></asp:Literal>

                                        </h5>
                                    </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="row tex">
                    <div class="row" style="text-align: right">
                        <h5>(1) طلب الإفادة</h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>المكرم
                            <asp:Literal ID="ltrTeacherName" runat="server" Text="..............................................................................................."></asp:Literal>
                            وفقه الله</h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>السلام عليكم ورحمة الله وبركاته   &shy; &shy; &shy;  وبعد :</h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>من خلال متابعة سجل العمل تبين غيابكم خلال الفترة الموضحة بعاليه ,آمل الإفادة عن أسباب ذلك 
                  </br>
                   وعليكم تقديم ما  يؤيد عذركم خلال أسبوع من تاريخه , علماً بأنه في حالة عد الالتزام سيتم اتخاذ
                    اللازم حسب التعليمات .</h5>
                    </div>
                    <div class="row" style="text-align: right">


                        <h5>اسم الرئيس المباشر  
                            <asp:Literal ID="ltrCommander" runat="server" Text="........................................"></asp:Literal>
                            التوقيع ..................    التاريخ  
                            <asp:Literal ID="ltrCommanderDate" runat="server" Text="&shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ"></asp:Literal>
                        </h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <div class="row" style="text-align: right">
                            <h5>(2) الإفادة</h5>
                        </div>

                        <h5>المكرم / قائد المدرسة   
                            <asp:Literal ID="ltrCommanderName" runat="server" Text="....................................................................................."></asp:Literal>
                            وفقه الله  </h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>السلام عليكم ورحمة الله وبركاته وبعد :</h5>
                        <h5>أفيدكم أن غيابي كان للأسباب التالية : </h5>
                        <h5>....................................................................................................................<br />
                            ....................................................................................................................<br />
                            ....................................................................................................................
                        </h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h6>و سأقوم بتقديم ما يثبت ذلك  خلال أسبوع من تاريخه</h6>
                        <h6>اسم المعلم
                            <asp:Literal ID="ltrTeacherName2" runat="server" Text="..............................................."></asp:Literal>
                            التوقيع ..................  التاريخ
                            <asp:Literal ID="ltrTeacherDate" runat="server" Text="&shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ"></asp:Literal></h6>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>(3) مدير المدرسة</h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h5>أ- تحتسب له إجازة مرضية بعد التأكيد من نظامية التقرير</h5>
                        <h5>ب- يحتسب غيابه من رصيده للإجازات الإضطرارية لقبول عذره إذا كان رصيده يسمح وإلا يحسم عليه </h5>
                        <h5>ج- يعتمد الحسم لعدم قبول عذره</h5>
                    </div>
                    <div class="row" style="text-align: right">
                        <h6>اسم الرئيس المباشر
                            <asp:Literal ID="ltrCommanderRight" runat="server" Text="..............................................."></asp:Literal>
                            التوقيع ..................  التاريخ
                            <asp:Literal ID="Literal6" runat="server" Text="&shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ"></asp:Literal></h6>
                    </div>
                    <div class="row" style="text-align: right">
                        <h6>1 - تستكمل  الاستمارة من المدير المباشر وإصدار القرار بموجبه.</h6>
                        <h6>2 - إذا سبق إجازة نهاية  الأسبوع غياب  وألحقها غياب تحتسب مدة الغياب كاملة .</h6>
                        <h6>3 - يجب أن يوضح المتغيب أسباب غيابه فور تسلمه الاستمارة ويعيدها لمديره مباشرة</h6>
                        <h6>4 - يعطي المتغيب مدة أسبوع لتقديم ما يؤيد عذره فإذا انقضت المدة الزمنية تستكمل الاستمارة ويتم الحسم</h6>
                    </div>
                    <div class="row" style="text-align: right">
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
