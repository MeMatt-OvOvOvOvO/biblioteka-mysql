<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="ConnSQL.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 95px;
            height: 52px;
        }
        .auto-style6 {
            height: 52px;
        }
        .auto-style8 {
            width: 95px;
            height: 50px;
        }
        .auto-style9 {
            height: 50px;
        }
        .auto-style10 {
            width: 95px;
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
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Add new book"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Author:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbAuthor" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Title:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbTitle" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Release date:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbDate" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="ISBN:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbISBN" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Format:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbFormat" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" Text="Pages:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbPages" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server" Text="Description:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbDesc" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="bAdd" runat="server" Text="Add" Width="120px" OnClick="bAdd_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="lInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
