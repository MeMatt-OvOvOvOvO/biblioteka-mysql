<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="ConnSQL.EditBook" %>

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
            width: 133px;
        }
        .auto-style3 {
            width: 133px;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            width: 133px;
            height: 41px;
        }
        .auto-style6 {
            height: 41px;
        }
    </style>
</head>
<body style="background-color:teal">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Edit book"></asp:Label>
                    </td>
                </tr>
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
                        <asp:Label ID="Label2" runat="server" Text="Title:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbTitle" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Release date:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbDate" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="ISBN:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbISBN" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Format:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbFormat" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Pages:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbPages" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Description:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbDesc" runat="server" Width="300px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="bSave" runat="server" OnClick="bSave_Click" Text="Save" Width="78px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Label ID="lInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
