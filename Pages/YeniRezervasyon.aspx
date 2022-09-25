<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniRezervasyon.aspx.cs" Inherits="MVCandASP.Pages.YeniRezervasyon" %>

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
     <abbr class="auto-style4">Tek kişilik odalar:1; Çift kişilik odalar:2; Üç kişilik odalar:3; Dört kişilik odalar:4; Özel odalar:5 rakamı ile başlamaktadır.Seçiminizi lütfen bu kurala uygun yapınız.</abbr><br />
   <abbr class="auto-style4">Tek kişilik odalar:Gecelik 200 TL; Çift kişilik odalar:Gecelik 250 TL; Üç kişilik odalar:Gecelik 300 TL; Dört kişilik odalar:350; Özel odalar:Gecelik 400 TL'dir.</abbr>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REZERVASYON OLUŞTUR</b></td>
                </tr>
                <tr>
                    <td class="auto-style3">TC:</td>
                    <td> <asp:TextBox ID="txtTc" runat="server" Width="168px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">GİRİŞ TARİHİ:</td>
                    <td> <asp:TextBox ID="txtGiris" runat="server" Width="164px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">ÇIKIŞ TARİHİ:</td>
                    <td> <asp:TextBox ID="txtCikis" runat="server" Width="166px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style3">ODALAR:</td>
                    <td> <asp:ListBox ID="lstTek" runat="server" BackColor="White" Width="169px"></asp:ListBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"> <asp:Button ID="btnRezervasyon" runat="server" Text="Rezervasyon Oluştur" BackColor="Salmon" Width="241px" Height="46px" OnClick="btnRezervasyon_Click"></asp:Button></td>
                     <td> <asp:Button ID="btnGeri" runat="server" Text="Geri" BackColor="Olive" Width="180px" Height="42px" ></asp:Button></td>
                </tr>
                <tr>
                    <td class="auto-style3"> <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
