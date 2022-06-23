<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ConnSQL.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 585px;
        }
        .auto-style2 {
            width: 100%;
            height: 399px;
        }
        .auto-style8 {
            width: 126px;
            height: 29px;
        }
        .auto-style9 {
            width: 345px;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
        }
        .auto-style11 {
            width: 126px;
            height: 18px;
        }
        .auto-style12 {
            width: 345px;
            height: 18px;
        }
        .auto-style13 {
            height: 18px;
        }
        .auto-style14 {
            width: 126px;
            height: 15px;
        }
        .auto-style15 {
            width: 345px;
            height: 15px;
        }
        .auto-style16 {
            height: 15px;
        }
        .auto-style17 {
            width: 126px;
            height: 4px;
        }
        .auto-style18 {
            width: 345px;
            height: 4px;
        }
        .auto-style19 {
            height: 4px;
        }
        .auto-style20 {
            width: 126px;
            height: 20px;
        }
        .auto-style21 {
            width: 345px;
            height: 20px;
        }
        .auto-style22 {
            height: 20px;
        }
        .auto-style23 {
            width: 126px;
            height: 13px;
        }
        .auto-style24 {
            width: 345px;
            height: 13px;
        }
        .auto-style25 {
            height: 13px;
        }
    </style>
</head>
<body style="background-color: teal">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style11" style="text-align:right">
                        <asp:Label ID="lServer" runat="server" Text="Server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="tbServer" runat="server" Width="299px" OnTextChanged="tbServer_TextChanged" style="background-color:lightgray"></asp:TextBox>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align:right">
                        <asp:Label ID="lPort" runat="server" Text="Port"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="tbPort" runat="server" Width="299px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="text-align:right">
                        <asp:Label ID="lBase" runat="server" Text="Db Name"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="tbDbName" runat="server" Width="299px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="text-align:right">
                        <asp:Label ID="lUser" runat="server" Text="User"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="tbUser" runat="server" Width="299px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23" style="text-align:right">
                        <asp:Label ID="lPass" runat="server" Text="Pass"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="tbPass" runat="server" Width="299px" style="background-color:lightgray"></asp:TextBox>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="bConnect" runat="server" Text="Connect" OnClick="bConnect_Click" Width="119px" />
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
