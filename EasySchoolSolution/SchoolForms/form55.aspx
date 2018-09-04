
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form55.aspx.cs" Inherits="TahaniSchoolForms_form55" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نموذج 55</title>
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
        <div class="container-fluid">
       <div class="row title">
            <h3>نموذج رقم (55)</h3>
       </div>
       <div class="container content form31" align="center">
           <div class="row sub-title">
               <div class="col-xs-6">
                   <h5>اسم النموذج : محضر مخالفة الأنظمة والتعليمات</h5>
               </div>
               <div class="col-xs-6">
                   <h5>رمز النموذج : (و.ت.ع.ن-05-03)</h5>
               </div>
           </div>
           <div class="row sub-par">
               <div class="row">
                   <div class="col-xs-4">
                       <h5>العام الدراسي</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>الفصل الدراسي</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>المادة</h5>
                   </div>
               </div>
                 <div class="row">
                   <div class="col-xs-4">
                       
                       <h5><asp:Literal ID="ltrYear" runat="server" Text="ـــــــــــ / ـــــــــــــــ "></asp:Literal> هـــ</h5>
                   </div>
                   <div class="col-xs-4">
                       <asp:CheckBox ID="CheckBox1" runat="server" Text="الأول" />
                       <asp:CheckBox ID="CheckBox2" runat="server" Text="الثاني" />
                   </div>
                   <div class="col-xs-4">
                       <h5>(<asp:Literal ID="ltrSubject" runat="server" Text=".............."></asp:Literal>)</h5>
                   </div>
               </div>
           </div>
               <br>
                <div class="row sub-par">
               <div class="row">
                   <div class="col-xs-4">
                       <h5 style="padding-right:10px;">اليوم</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5 style="padding-right:10px;">التاريخ</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5 style="padding-right:10px;">الفترة</h5>
                   </div>
               </div>
                 <div class="row">
                   <div class="col-xs-4">
                       (<asp:Literal ID="ltrDay" runat="server" Text=".............."></asp:Literal>)
                   </div>
                   <div class="col-xs-4">
                       
                     <h5><asp:Literal ID="ltrDate" runat="server" Text="ـــــــــ / ـــــــــــ / ــــــــــــــــــــ"></asp:Literal> هـــ</h5>
                   </div>
                   <div class="col-xs-4">
                       <h5>(<asp:Literal ID="ltrPeriod" runat="server" Text=".............."></asp:Literal>)</h5>
                   </div>
               </div>
           </div>
               <br>
               <br>
            <div class="row table55" >
               <table style="width:80%">
               
                 <tbody>  
               <tr>
              <td style="background:#D2DED2"><h5>اسم الطالب</h5><br/><h6>
                  <asp:Literal ID="ltrStudentName" runat="server" Text=".................................."></asp:Literal></h6></td>
              <td style="background:#EBF0EA"><h5>رقم الجلوس </h5><br/><h6>
                  <asp:Literal ID="ltrSittingNo" runat="server" Text=".................................."></asp:Literal></h6></td>
              <td style="background:#D2DED2"><h5>الصف / الفصل </h5><br/><h6>
                  <asp:Literal ID="ltrClass" runat="server" Text="............................."></asp:Literal></h6></td>
              <td style="background:#EBF0EA"><h5>التوقيع </h5><br/><h6>..................................</h6></td>
              </tr>
                     
                   </tbody>
                </table>
                </div>
                    <br/>
                    <br/>
               <div class="row">
                   <div class="col-xs-3">
                      <h4 style="color: #658C6F">تكرار المخالفة : </h4>
                   </div>
                   <div class="col-xs-3">
                       <h5>المرة الأولى</h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>المرة الثانية</h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>المرة الثالثة</h5>
                   </div>
              </div>
            <div class="row">
                   <div class="col-xs-3">
                      <h4 style="color: #658C6F">وصف المخالفة</h4>
                   </div>
                   <div class="col-xs-3">
                       <h5></h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>فردي</h5>
                   </div>
                   <div class="col-xs-3">
                       <h5>جماعي</h5>
                   </div>
               </div>
                         
                   
                   <div class="row" style="margin-right:10px"><h5>
                       ...................................................................................................................................................................................<br/>
                       ...................................................................................................................................................................................<br/>
                       ...................................................................................................................................................................................<br/>
                   </h5></div>
                   <br/>
                   <br/>
                   <div class="row" style="margin-right:5px">
                       <div class="row">
                           <div class="col-xs-2">
                               <h4 style="color: #658C6F;margin-right:12px">المصادقة</h4>
                           </div>
                       </div>
                       <div class="row" style="margin-right:5px">
                           <div class="col-xs-4">
                               <h5>الاسم: <asp:Literal ID="ltrName1" runat="server" Text="......................."></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الصفة: <asp:Literal ID="ltrAdjective1" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التوقيع: ........................</h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الاسم: <asp:Literal ID="ltrName2" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الصفة: <asp:Literal ID="ltrAdjective2" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التوقيع: ........................</h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الاسم: <asp:Literal ID="ltrName3" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>الصفة: <asp:Literal ID="ltrAdjective3" runat="server" Text="........................"></asp:Literal></h5>
                           </div>
                           <div class="col-xs-4">
                               <h5>التوقيع: ........................</h5>
                           </div>
                       </div>
                   </div>
        </div>
    </div>
    </form>
</body>
</html>
