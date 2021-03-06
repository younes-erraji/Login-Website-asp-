<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="WebValidation.Profil" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;">Hello <%=Session["username"] %></h1>
        <asp:Button ID="ButtonOUT" runat="server" Text="Sign OUT" style="display: block; margin:auto" OnClick="ButtonOUT_Click" />
    </form>
</body>
</html>