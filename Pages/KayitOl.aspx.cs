using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class KayiıtOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnKayit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string tc = txtTc.Text;
            string pass = txtPass.Text;
            string tekrarPass = txtPassTekrar.Text;
            string adsoyad = txtAdSoyad.Text;
            if (pass.Equals(tekrarPass))
            {

                SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
                SqlCommand komut1 = new SqlCommand("INSERT INTO Musteriler(username,password,adsoyad,tc) VALUES (@username,@password,@adsoyad,@tc)", baglanti);
                komut1.Parameters.AddWithValue("@username", email);
                komut1.Parameters.AddWithValue("@password", pass);
                komut1.Parameters.AddWithValue("@adsoyad", adsoyad);
                komut1.Parameters.AddWithValue("@tc", tc);
                baglanti.Open();
                komut1.ExecuteNonQuery();
                baglanti.Close();
                lblMsg.Text = "Kaydınız oluşturuldu.";
            }
            else
            {
                lblMsg.Text = "Şifreleriniz uyumlu olmalıdır!!!";
            }
        }
        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Musteri/Giris/");
        }
    }
}