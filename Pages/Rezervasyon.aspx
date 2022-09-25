<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rezervasyon.aspx.cs" Inherits="MVCandASP.Pages.Rezervasyon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REZERVASYON SORGULA</title>
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
                    <td class="auto-style3">
                        <asp:Button ID="btnRezervasyon" runat="server" Text="Rezervasyon Sorgula" BackColor="Salmon" Width="241px" Height="46px" OnClick="btnRezervasyonSorgula_Click"></asp:Button>

                    </td>
                     <td> <asp:Button ID="btnGeri" runat="server" Text="Rezervasyon Oluştur" BackColor="Olive" Width="180px" Height="42px" OnClick="btnGeri_Click"></asp:Button></td>
                </tr>
                <tr>
                    <td class="auto-style3"> <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

