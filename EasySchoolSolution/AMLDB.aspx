<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AMLDB.aspx.cs" Inherits="AMLDB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Unnamed_Click"/>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
