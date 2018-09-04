<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OutcomingPreview.aspx.cs" Inherits="OutcomingPreview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>معاينة الصادر</title>

        <script src="../assets/global/arabicNumbers.js"></script>
        <style type="text/css" media="print">
    @page 
    {
        size:  auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }

    html
    {
        /*background-color: #FFFFFF;*/ 
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
    <div id="form1" runat="server">
        <asp:Literal ID="ltrContent" runat="server"></asp:Literal>
    </div>
</body>
</html>
