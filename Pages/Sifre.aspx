<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sifre.aspx.cs" Inherits="MVCandASP.Pages.Sifre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>ŞİFRE GÜNCELLE</td>
                </tr>
                <tr>
                    <td>TC:</td>
                    <td> <asp:TextBox ID="txtTc" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Eski Sifre:</td>
                    <td> <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Tekrar Eski Sifre:</td>
                    <td> <asp:TextBox ID="txtTekrarSifre" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Yeni Sifre:</td>
                    <td> <asp:TextBox ID="txtYeni" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td> <asp:Button ID="btnDuzenle" runat="server" Text="Güncelle" OnClick="btnDuzenle_Click"></asp:Button></td>
                </tr>
                 <tr>
                    <td> <asp:Button ID="btnGeri" runat="server" Text="Geri" OnClick="btnGeri_Click"></asp:Button></td>
                </tr>
                <tr>
                    <td> <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
