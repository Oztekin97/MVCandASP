using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class Sifre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            string tc = txtTc.Text;
            string sifre = txtSifre.Text;
            string tekrarSifre = txtTekrarSifre.Text;
            string yeniSifre = txtYeni.Text;
            if (sifre.Equals(tekrarSifre))
            {
                SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
                SqlCommand komut = new SqlCommand("UPDATE Musteriler SET password=@sifre WHERE tc=@tc", baglanti);
                komut.Parameters.AddWithValue("@sifre", yeniSifre);
                komut.Parameters.AddWithValue("@tc", tc);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                lblMsg.Text = "Bilgileriniz başarılı bir şekilde güncellendi.";
            }
            else
            {
                lblMsg.Text = "BİLGİLERİNİZİ YANLIŞ GİRDİNİZ";
            }
        }
        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifreDegistir.aspx");
        }
    }
}