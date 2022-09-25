<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuncelSifre.aspx.cs" Inherits="MVCandASP.Pages.GuncelSifre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Güncel Şİfre Değiştirme</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <td colspan="2">Müşteri Bilgileri</td>
                </tr>
                 <tr>
                    <td>ID:</td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Kullanıcı Adı:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ad Soyad:</td>
                    <td> <asp:TextBox ID="txtAdSoyad" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td>TC:</td>
                    <td> <asp:TextBox ID="txtTc" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td>Sifre:</td>
                    <td> <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Giriş:</td>
                    <td> <asp:TextBox ID="txtGiris" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td>Çıkış:</td>
                    <td> <asp:TextBox ID="txtCikis" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Borç:</td>
                    <td> <asp:TextBox ID="txtBorc" runat="server" ReadOnly="True"  BackColor="GrayText"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Oda:</td>
                    <td> <asp:TextBox ID="txtOda" runat="server" ReadOnly="True" BackColor="GrayText"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td>
                        <asp:Button ID="btnSifre" runat="server" Text="Şifre değiştir" OnClick="btnSifre_Click"/>
                    </td>
                </tr>
                    <tr>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" Text=" "/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
