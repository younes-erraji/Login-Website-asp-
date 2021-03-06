<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebValidation.index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Validation</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Inscription</h1>
        <table style="width: 100%;">
            <tr>
                <td>Username</td>
                <td><asp:TextBox ID="TextUsername" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="This Field Cannot become empty" ControlToValidate="TextUsername" /></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidatorUsername" runat="server" ErrorMessage="Not Strong Enaugh" ControlToValidate="TextUsername" ValidationExpression="^[a-zA-Z]{3,15}$" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="This Field Cannot become empty" ControlToValidate="TextPassword" /></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server" ErrorMessage="Not Strong Enaugh" ControlToValidate="TextPassword" ValidationExpression="^[a-zA-Z0-9]{3,19}$" /></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="TextConfirmation" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" runat="server" ErrorMessage="This Field Cannot become empty" ControlToValidate="TextConfirmation" /></td>
                <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="ERROR" ControlToCompare="TextConfirmation" ControlToValidate="TextPassword"></asp:CompareValidator></td>
            </tr>
            <tr style="text-align:center">
                <td colspan="2" class="auto-style1"><asp:Button ID="ButtonOK" runat="server" Text="Confirm" Width="200px" OnClick="ButtonOK_Click" /></td>
                <td colspan="2" class="auto-style1"><asp:Button ID="ButtonVer" runat="server" Text="Verifier" Width="200px" OnClick="ButtonVer_Click" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="ERROR" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>