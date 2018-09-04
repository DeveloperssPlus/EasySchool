<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form18.aspx.cs" Inherits="SchoolForms_form18" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 18</title>
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
                <h3>نموذج رقم (18)</h3>
            </div>
            <div class="container content" align="center">

                <div class="row sub-title">
                    <div class="col-xs-6">
                        <h5>اسم النموذج : تنبيه على تأخر / انصراف</h5>
                    </div>

                    <div class="col-xs-6">
                        <h5>رمز النموذج : (و.م.ع.ن-02-02)</h5>
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
                                <asp:Literal ID="ltrIdentityNumber" runat="server"></asp:Literal></th>
                            <%--<th class="text-center">
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
                           <asp:Literal ID="ltrCivilRegistry10" runat="server"></asp:Literal></th>--%>
                        </tr>
                    </table>
                </div>

                <div class="row table18-3">

                    <table style="width: 80%">

                        <tbody>
                            <tr>

                                <th class="text-center" style="width: 40%">
                                    <h5>الاسم</h5>
                                </th>
                                <th class="text-center" style="width: 10%">
                                    <h5>التخصص</h5>
                                </th>
                                <th class="text-center" style="width: 10%">
                                    <h5>المستوى / المرتبة</h5>
                                </th>
                                <th class="text-center" style="width: 10%">
                                    <h5>رقم الوظيفة</h5>
                                </th>
                                <th class="text-center" style="width: 10%">
                                    <h5>العمل الحالي</h5>
                                </th>

                            </tr>

                            <tr>
                                <td style="width: 10%; background-color: #D2DED2;" class="text-center">
                                    <h5>
                                        <asp:Literal ID="ltrName" runat="server"></asp:Literal></h5>
                                </td>
                                <td style="width: 10%; background-color: #D2DED2;" class="text-center">
                                    <h5>
                                        <asp:Literal ID="ltrSpecialization" runat="server"></asp:Literal></h5>
                                </td>
                                <td style="width: 10%; background-color: #D2DED2;" class="text-center">
                                    <h5>
                                        <asp:Literal ID="ltrGrade" runat="server"></asp:Literal></h5>
                                </td>
                                <td style="width: 10%; background-color: #D2DED2;" class="text-center">
                                    <h5>
                                        <asp:Literal ID="ltrJobNo" runat="server"></asp:Literal></h5>
                                </td>
                                <td style="width: 10%; background-color: #D2DED2;" class="text-center">
                                    <h5>
                                        <asp:Literal ID="ltrCurrentWork" runat="server"></asp:Literal></h5>
                                </td>

                            </tr>

                        </tbody>
                    </table>
                </div>

                <br />



                <div class="row tex">

                    <div class="row" style="text-align: right">
                        <h5>المكرم المعلم /
                            <asp:Literal ID="ltrTeacherName" runat="server" Text="........................................................................................"></asp:Literal>
                            وفقه الله</h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <h5>السلام عليكم ورحمة الله وبركاته   &shy; &shy; &shy;  وبعد :</h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <h5>انه في يوم<asp:Literal ID="ltrDay" runat="server" Text="................................................."></asp:Literal>
                            الموافق 
                            <asp:Literal ID="ltrDate" runat="server" Text="/&shy; &shy; &shy;/ &shy; &shy;&shy;  14 هـ"></asp:Literal>
                            اتضح ما يلي : </h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <asp:PlaceHolder ID="PlaceHolderLateBegin" Visible="false" runat="server">
                            <h5>تأخركم من بداية العمل , وحضوركم الساعة (<asp:Literal ID="ltrTimeArrive" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>)</h5>
                        </asp:PlaceHolder>

                        <asp:PlaceHolder ID="PlaceHolderPermission" Visible="false" runat="server">
                            <h5>عدم تواجدكم أثناء العمل من الساعة (<asp:Literal ID="ltrTimeFrom" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) الى الساعة (<asp:Literal ID="ltrTimeTo" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) </h5>
                        </asp:PlaceHolder>

                        <asp:PlaceHolder ID="PlaceHolderLateEnd" Visible="false" runat="server">
                            <h5>انصرافكم مبكراً قبل نهاية العمل من الساعة (<asp:Literal ID="ltrTimeLeave" runat="server" Text="&shy; &shy; &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal>) </h5>
                        </asp:PlaceHolder>

                        <h5>عليه نأمل توضيح أسباب ذلك مع إرفاق ما يؤيد عذركم ,, ولكم تحياتي </h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <h5>قائد المدرسة
                            <asp:Literal ID="ltrSchoolCommander" runat="server" Text="............................................"></asp:Literal>
                            التوقيع ..................  التاريخ 
                            <asp:Literal ID="ltrCommanderDate" runat="server" Text=" &shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ"></asp:Literal></h5>
                    </div>


                    <div class="row" style="text-align: right">
                        <h5>المكرم / مدير المدرسة
                            <asp:Literal ID="ltrCommanderName" runat="server" Text=".................................................................................."></asp:Literal>
                            وفقه الله</h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <h5>السلام عليكم ورحمة الله وبركاته</h5>
                        <h5>أفيدكم أن أسباب ذلك ما يلي </h5>
                        <h5>....................................................................................................................<br />
                            ....................................................................................................................<br />
                            ....................................................................................................................
                        </h5>
                        <h5>الاسم
                            <asp:Literal ID="ltrTeacherName2" runat="server" Text="......................................................"></asp:Literal>
                            التوقيع ..................  التاريخ
                            <asp:Literal ID="ltrTeacherDate" runat="server" Text="&shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ"></asp:Literal></h5>
                    </div>




                    <div class="row" style="text-align: right">
                        <div class="col-xs-3">
                            <h5>رأي قائد المدرسة</h5>
                        </div>

                        <div class="col-xs-3">
                            <h5>عذره مقبول</h5>
                        </div>

                        <div class="col-xs-4">
                            <h5>عذره غير مقبول ويحسم عليه</h5>
                        </div>

                    </div>


                    <div class="row" style="text-align: right">
                        <h5>قائد المدرسة
                            <asp:Literal ID="ltrSchoolCommander2" runat="server" Text="............................................"></asp:Literal>
                            التوقيع ..................  التاريخ  
                            <asp:Literal ID="ltrCommanderDate2" runat="server" Text="&shy; &shy;  /&shy; &shy; &shy; &shy;/ &shy; &shy;&shy; &shy; 14 هـ "></asp:Literal>
                        </h5>
                    </div>

                    <div class="row" style="text-align: right">
                        <h5>ملاحظة : ترفق بطاقة المساءلة مع أصل القرار في  حال عدم قبول العذر لحفظها في ملفه بالإدارة , أصله لملفه بالمدرسة .</h5>
                    </div>
                </div>
            </div>

        </div>
    </form>

</body>
</html>
