<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="MVCandASP.Pages.KayiıtOl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>REZERVASYON OLUSTUR</title>
        <style type="text/css">
        .auto-style2 {
            width: 523px;
        }
        .auto-style3 {
            width: 1500px;
        }
        .auto-style4{
            background-color:beige;
            text-align:left;
            color:burlywood;
        }
    </style>
</head>
<body>
     <abbr class="auto-style4">Sistem için kullanıcı adınız email adresiniz olmalıdır.</abbr><br />
   <abbr class="auto-style4">Şifre maksimum 50 haneli olacaktır.</abbr>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KAYIT OLMA SAYFASI</b></td>
                </tr>
                 <tr>
                    <td class="auto-style3">EMail:</td>
                    <td> <asp:TextBox ID="txtEmail" runat="server" Width="168px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">TC:</td>
                    <td> <asp:TextBox ID="txtTc" runat="server" Width="168px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">Ad Soyad:</td>
                    <td> <asp:TextBox ID="txtAdSoyad" runat="server" Width="164px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">Şifre:</td>
                    <td> <asp:TextBox ID="txtPass" runat="server" Width="166px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">Tekrar Şifre:</td>
                    <td> <asp:TextBox ID="txtPassTekrar" runat="server" BackColor="White" Width="169px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"> <asp:Button ID="btnRezervasyon" runat="server" Text="Kayıt Ol" BackColor="Salmon" Width="241px" Height="46px" OnClick="btnKayit_Click"></asp:Button></td>
                     <td> <asp:Button ID="btnGeri" runat="server" Text="Geri" BackColor="Olive" Width="180px" Height="42px" OnClick="btnGeri_Click" ></asp:Button></td>
                </tr>
                <tr>
                    <td class="auto-style3"> <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

