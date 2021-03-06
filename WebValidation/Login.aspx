<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebValidation.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="Bienvenue" />
    <title></title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Log In</h2>
            <label>Username</label>
            <input type="text" placeholder="Enter Username" runat="server" id="username" required="required" autofocus="autofocus" />
            <label>Password</label>
            <input type="password" placeholder="Enter Password" runat="server" id="password" required="required" />
            <asp:Button ID="BtnLogin" runat="server" Text="Log In" OnClick="BtnLogin_Click" />
            <asp:Label ID="erreur" runat="server" CssClass="erreur" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>