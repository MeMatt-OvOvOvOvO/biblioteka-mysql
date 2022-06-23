<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ConnSQL.Register" %>

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
            width: 82px;
            height: 55px;
        }
        .auto-style4 {
            height: 55px;
        }
        .auto-style6 {
            width: 82px;
            height: 45px;
        }
        .auto-style7 {
            height: 45px;
        }
        .auto-style8 {
            width: 82px;
            height: 52px;
        }
        .auto-style9 {
            height: 52px;
        }
        .auto-style10 {
            width: 82px;
            height: 51px;
        }
        .auto-style11 {
            height: 51px;
        }
    </style>
</head>
<body style="background-color:teal">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Login:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="tbLogin" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="tbPassword" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="E-mail:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="tbEmail" type="email" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="bSave" runat="server" Text="Save" Width="120px" OnClick="bSave_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:Button ID="bBack" runat="server" OnClick="bBack_Click" Text="Back" Width="120px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="lInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
