<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpEmail.aspx.cs" Inherits="SamasatiYoga.Main.SignUpEmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Email:
    <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
    <br />
&nbsp;<br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Button" />
    <br />
    </form>
</body>
</html>


