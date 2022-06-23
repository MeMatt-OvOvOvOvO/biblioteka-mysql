<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllBooks.aspx.cs" Inherits="ConnSQL.AllBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 162px;
        }
        .auto-style2 {
            width: 66px;
        }
        .auto-style3 {
            width: 66px;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            width: 66px;
            height: 46px;
        }
        .auto-style6 {
            height: 46px;
        }
    </style>
</head>
<body style="background-color: gray">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="bSearch" runat="server" Text="Search" Width="120px" OnClick="bSearch_Click" />
                    <asp:Button ID="bAdd" runat="server" OnClick="bAdd_Click" Text="Add" Width="120px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:GridView runat="server" ID="gridvieww" OnRowCommand="gridvieww_RowCommand" AutoGenerateColumns="true" HeaderStyle-BackColor="Teal" BackColor="LightGray"
                            BorderWidth="1" BorderColor="Black">
                         <Columns>
                            <asp:ButtonField CommandName="editBook" Text="Edit" />
                            <asp:ButtonField CommandName="deleteBook" Text="Delete" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
