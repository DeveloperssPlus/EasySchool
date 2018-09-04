<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ttest.aspx.cs" Inherits="ttest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" OnDataBinding="ListView1_DataBinding"></asp:ListView>

        <asp:GridView ID="GridView1" runat="server" OnDataBinding="ListView1_DataBinding"> </asp:GridView>
   </div>





    </form>

</body>
</html>
