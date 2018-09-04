<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form23.aspx.cs" Inherits="infractions_نماذج_form23" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 23</title>
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
        <div class="container content" align="center">
               <div class="row sub-title">
                   <div class="col-xs-4">
                         <h4 style="font-weight:bold;">المملكة العربية السعودية</h4>
                         <h4 style="font-weight:bold;">وزارة التعليم (280)</h4>
                         <h4 style="font-weight:bold;">الإدارة العامة للتوجيه والإرشاد</h4>
                   </div>
                   <div class="col-xs-3">
                       <img src="image/logo.png" alt="logo">
                   </div>
                    <div class="col-xs-5">
                       <h5 style="font-weight:bold;">منطقة / محافظة : <asp:Literal ID="ltrGovernorate" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">المدرســـــــــــــة : <asp:Literal ID="ltrSchoolName" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">اليــــــــــــــــــوم : <asp:Literal ID="ltrDay" runat="server"></asp:Literal></h5>
                        <h5 style="font-weight:bold;">التــــــــــــــــاريخ : <asp:Literal ID="ltrDate" runat="server"></asp:Literal></h5>
                   </div>
               </div>
                    <br/>
               <div class="col-xs-12">
                       <h3 style="color:#009e9a;font-weight:900;">محضر إتلاف</h3>
                   <br/>
             </div>
               
        <div class="row">
            <div class="col-xs-12" style="text-align:right">
                       <h4>إنه في يوم: <asp:Literal ID="ltrAssigmentDay" runat="server" Text="......................."></asp:Literal> وتاريخ <asp:Literal ID="ltrAssigmentDate" runat="server" Text="&shy; &shy; / &shy; &shy;  / &shy; &shy;  14 هــ"></asp:Literal> ، وفي الساعة : <asp:Literal ID="ltrAssigmentHour" runat="server" Text="......................."></asp:Literal></h4>
                       <h4>أُتلفت المواد الممنوعة الآتية والتي ضبطت مع الطالب/ة <asp:Literal ID="ltrStudentName" runat="server" Text="............................................................."></asp:Literal></h4>
                       <h4>في الصف <asp:Literal ID="ltrClass" runat="server" Text="..................."></asp:Literal> في يوم <asp:Literal ID="ltrStudentDay" runat="server" Text="..................."></asp:Literal> وتاريخ <asp:Literal ID="ltrStudentDate" runat="server" Text="&shy; &shy;  /&shy; &shy;  / &shy; &shy; 14 هــ"></asp:Literal> وهي مخالفة من الدرجة <asp:Literal ID="ltrLevel" runat="server" Text=".................."></asp:Literal></h4>
                       <h4>وحسب التفصيل الآتي :-</h4>
             </div>
        </div>
               
         <div class="table1">
         <table>
             <thead>
               <tr>
                 <th>م</th>
                 <th>وصف المادة الممنوعة</th>
                 <th>الكمية / العدد</th>
                 <th>النوع</th>
                 <th>ملاحظات</th>
               </tr>
             </thead>
            <tbody>
              <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
               <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
              <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
              <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
              <tr>
                   <th></th>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td></td>
              </tr>
            </tbody>
         </table>
      </div>
               
        <div class="row">
            <div class="col-xs-12" style="text-align:right;color:#984806">
                       <h4>وتمشــــيا مـــع الإجراءات المطلوبـــة فـــي القواعد صودرت المواد وأتلفت مـــن لجنة التوجيــــه والإرشـــاد</h4>
                      <h4>بالمحضر رقم <asp:Literal ID="ltrSubjectNumber" runat="server" Text=".................."></asp:Literal> وتاريخ <asp:Literal ID="ltrSubjectDate" runat="server" Text="...................."></asp:Literal></h4>
             </div>
        </div>
               
           <div class="table2">
         <table>
             <thead>
               <tr>
                 <th>م</th>
                 <th>اسم العضو المشارك</th>
                 <th>الوظيفة</th>
                 <th>العمل المسند إليه</th>
                 <th>التوقيع</th>
               </tr>
             </thead>
            <tbody>
              <tr>
                   <th>1</th>
                   <td></td>
                   <th>قائد/ة المدرسة</th>
                   <td>رئيس/ة</td>
                   <td></td>
              </tr>
               <tr>
                   <th>2</th>
                   <td></td>
                   <th>وكيل المدرسة لشؤون الطلاب</th>
                   <td>نائب الرئيس</td>
                   <td></td>
              </tr>
              <tr>
                   <th>3</th>
                   <td></td>
                   <th>وكيل المدرسة للشؤون التعليمية</th>
                   <td>عضو</td>
                   <td></td>
              </tr>
              <tr>
                   <th>4</th>
                   <td></td>
                   <th>المرشد الطلابي</th>
                   <td>عضو ومقرر</td>
                   <td></td>
              </tr>
              <tr>
                   <th>5</th>
                   <td></td>
                   <th>معلم متميز</th>
                   <td>عضو</td>
                   <td></td>
              </tr>
             <tr>
                   <th>6</th>
                   <td></td>
                   <th>معلم متميز</th>
                   <td>عضو</td>
                   <td></td>
              </tr>
            <tr>
                   <th>7</th>
                   <td></td>
                   <th>معلم متميز</th>
                   <td>عضو</td>
                   <td></td>
              </tr>
            </tbody>
         </table>
      </div>
               
        <div class="row">
                <div class="col-xs-8">
                    <br/><br/>
                    <h4><b>الختم</b></h4>
                </div>
                 <div class="col-xs-4"  style="text-align:right" >
                     <h4><b>قائد/ة المدرسة/</b></h4>
                     <h4><b>الاسم:</b> <asp:Literal ID="ltrSchoolLeader" runat="server" Text="................................"></asp:Literal></h4>
                     <h4><b>التوقيع:</b> ..............................</h4>
                </div>
           </div>

        </div>
    </form>
</body>
</html>
