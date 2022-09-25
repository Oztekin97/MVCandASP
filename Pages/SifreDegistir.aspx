<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifreDegistir.aspx.cs" Inherits="MVCandASP.Pages.SifreDegistir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>ŞİFRE DEĞİŞTİR</title>
</head>
<body>
    <p>
        <b>
        Güvenliğiniz için kullanıcı adı ve şifre bilgilerinizi tekrar giriniz. Kontrol butonuna tıkladığınızda şifre değiştirme sayfasına 
        yönlendirileceksiniz.</b>
    </p>
    <b>BİLGİ KONTROLÜ</b>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <td colspan="2">Üye Girişi</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtKA" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sifre:</td>
                    <td> <asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGiris" runat="server" Text="Kontrol" OnClick="btnGiris_Click"/>
                        <asp:Label ID="lblHata" runat="server" Text="" ForeColor="Red" Font-Bold="true"/>
                        <asp:Label ID="LblThrow" runat="server" Text="" ForeColor="Yellow" Font-Bold="true"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
