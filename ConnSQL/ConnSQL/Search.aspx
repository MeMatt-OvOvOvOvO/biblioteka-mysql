<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ConnSQL.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
    </style>
</head>
<body style="background-color:teal">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lAuthor" runat="server" Text="Author:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbAuthor" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Title:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbTitle" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Release date:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbDate" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="ISBN:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbISBN" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Format:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbFormat" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Pages:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbPages" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Description:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbDesc" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>




                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bSearch" runat="server" Text="Search" Width="160px" OnClick="bSearch_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
