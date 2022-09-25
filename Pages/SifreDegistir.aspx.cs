using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class SifreDegistir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtKA.Text;
                string pass = txtPass.Text;
                SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
                SqlCommand komut = new SqlCommand("SELECT * FROM Musteriler WHERE username=@email And password=@pass", baglanti);
                komut.Parameters.AddWithValue("@email", email);
                komut.Parameters.AddWithValue("@pass", pass);
                baglanti.Open();
                SqlDataReader list = komut.ExecuteReader();
                if (list.HasRows)
                {
                    while (list.Read())
                    {
                        Session["id"] = list["id"];
                        Session["username"] = list["username"];
                        Session["adSoyad"] = list["adsoyad"];
                        Session["tc"] = list["tc"];
                        Session["password"] = list["password"];
                        Session["giris"] = list["giris"];
                        Session["cikis"] = list["cikis"];
                        Session["borc"] = list["borc"];
                        Session["odano"] = list["odano"];
                        Response.Redirect("GuncelSifre.aspx");
                    }
                }
                else
                {
                    lblHata.Text = "Giriş bilgileriniz hatalıdır.Lütfen bilgilerinizi kontrol ediniz.";
                }
                komut.Dispose();
                list.Close();
            }
            catch (Exception ex)
            {
                LblThrow.Text = ex.Message.ToString();
            }
        }
    }
}