<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Odalar.aspx.cs" Inherits="MVCandASP.Pages.Odalar" %>

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
                    <td><b>DOLU ODALAR:</b></td>
                    <td> <asp:ListBox ID="lstTek" runat="server" BackColor="SkyBlue" Width="200px"></asp:ListBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="grdMusteriList" runat="server" BackColor="Violet" AutoGenerateColumns="False" Width="900px" DataSourceID="SqlDataSource1" PageSize="10">
                            <Columns>
                                <asp:BoundField DataField="adsoyad" HeaderText="adsoyad"  SortExpression="adsoyad" />
                                <asp:BoundField DataField="tc" HeaderText="tc" SortExpression="tc" />
                                <asp:BoundField DataField="giris" HeaderText="giris" SortExpression="giris" />
                                <asp:BoundField DataField="cikis" HeaderText="cikis" SortExpression="cikis" />
                                <asp:BoundField DataField="borc" HeaderText="borc" SortExpression="borc" />
                                <asp:BoundField DataField="odano" HeaderText="odano" SortExpression="odano" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VeritabaniConnectionString %>" SelectCommand="SELECT [adsoyad], [tc], [giris], [cikis], [borc], [odano] FROM [Musteriler]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
