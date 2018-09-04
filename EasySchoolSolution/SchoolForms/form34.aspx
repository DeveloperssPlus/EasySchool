<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form34.aspx.cs" Inherits="TahaniSchoolForms_form34" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 34</title>
    <link href="lib/lib/bootstrap.css" rel="stylesheet" />
    <link href="lib/lib/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .aa
        {
            background:#658C6F;
            color:#fff;
        }
        .ab
        {
            background:#658C6F;
            color:#fff;
            width:17%;
        }
        .ac
        {
            background:#D2DED2;
            width:17%;
        }
        .ad
        {
            background:#EBF0EA;
        }
    </style>
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
        <div class="container-fluid">
           <div class="row title">
                <h3>نموذج رقم (34)</h3>
           </div>
           <div class="container content" align="center">
               <div class="row sub-title">
                 <div class="col-xs-6">
                       <h5>اسم النموذج : سجل حضور الطلاب لمجالات النشاط</h5>
                   </div> 
                   <div class="col-xs-6">
                       <h5>رمز النموذج : (و.ط.ع.ن-05-01)</h5>
                   </div> 
               </div>
               <div class="row sub-par">
                   <div class="col-xs-6">
                       <h5>العام الدراسي  <asp:Literal ID="ltrYear" runat="server" Text="&shy; &shy; &shy; &shy;"></asp:Literal>  14 هــ / الفصل (<asp:Literal ID="ltrSemester" runat="server" Text="&shy; &shy; &shy; &shy;"></asp:Literal>)</h5>
                   </div>
               </div>
               <div class="row table34">
                   <table>
                       <tr>
                           <th class="aa">اسم المجال</th>
                           <th class="ab">مسؤول النشاط</th>
                           <th style="background:#D2DED2;width:17%">
                               <asp:Literal ID="ltrActivityOfficial" runat="server"></asp:Literal></th>
                           <th class="ab">المقر</th>
                           <th class="ac">
                               <asp:Literal ID="ltrHeadquarters" runat="server"></asp:Literal></th>
                       </tr>
                       <tr>
                           <th class="aa">الأسبوع</th>
                           <th class="ad" colspan="4">من <asp:Literal ID="ltrWeekFrom" runat="server" Text="&shy; &shy; / &shy; &shy; &shy; &shy; &shy; &shy;"></asp:Literal> إلى <asp:Literal ID="ltrWeekTo" runat="server" Text="&shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy; / &shy; &shy; &shy; &shy;"></asp:Literal> 14 هــ</th>
                       </tr>
                   </table>
               </div>
               <div class="row table5">
                   <table>
                       <thead>
                           <tr>
                               <th>م</th>
                               <th>اسم الطالب</th>
                               <th>الصف</th>
                               <th colspan="2">السبت</th>
                               <th colspan="2">الأحد</th>
                               <th colspan="2">الاثنين</th>
                               <th colspan="2">الثلاثاء</th>
                               <th colspan="2">الأربعاء</th>
                               <th>ملحوظات</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td>1</td>
                               <td></td>
                               <td>/</td>
                               <td>ح</td>
                               <td>غ</td>
                               <td>ح</td>
                               <td>غ</td>
                               <td>ح</td>
                               <td>غ</td>
                               <td>ح</td>
                               <td>غ</td>
                               <td>ح</td>
                               <td>غ</td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>2</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>3</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>4</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>5</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>6</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>7</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>8</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>9</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>10</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>11</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>12</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>13</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>14</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>15</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>16</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>17</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                           <tr>
                               <td>18</td>
                               <td></td>
                               <td>/</td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                               <td></td>
                           </tr>
                       </tbody>
                   </table>
               </div>
               <div class="row end">
                   <div class="col-xs-6">
                       <h5>مسؤول النشاط : <asp:Literal ID="ltrActivityOfficialName" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>التوقيع : </h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>رائد النشاط : <asp:Literal ID="ltrRaedActivity" runat="server"></asp:Literal></h5>
                   </div>
                   <div class="col-xs-6">
                       <h5>التوقيع : </h5>
                   </div>
               </div>
            </div>
        </div>
    </form>
</body>
</html>
