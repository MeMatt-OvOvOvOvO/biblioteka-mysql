<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ConnSQL.page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 99px;
            height: 58px;
        }
        .auto-style7 {
            width: 99px;
            height: 60px;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style9 {
            width: 99px;
            height: 64px;
        }
        .auto-style10 {
            height: 64px;
        }
        .auto-style11 {
            height: 64px;
        }
    </style>
</head>
<body style="background-color:teal">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Mail:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbMail" type="email" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="tbPass" runat="server" Width="300px" style="background-color:lightgray" type="password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="bLogin" runat="server" Text="Login" Width="120px" OnClick="bLogin_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="bRegister" runat="server" OnClick="bRegister_Click" Text="Register" Width="120px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="lInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
