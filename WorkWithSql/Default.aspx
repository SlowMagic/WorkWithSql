<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WorkWithSql.Default" EnableViewState="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            height: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <table class="auto-style1">
            <tr>
                <td>Имя</td>
                <td>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Фамилия</td>
                <td>
                    <asp:TextBox ID="Surname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Возраст</td>
                <td>
                    <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Адресс</td>
                <td>
                    <asp:TextBox ID="Adress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Записать в базу" Width="116px" OnClick="Button1_Click"  />
                </td>
            </tr>
        </table>
        <br />

        <br />
      <asp:Label ID="ReslutAll" runat="server" />
        <br />

    </div>
    </form>
</body>
</html>
