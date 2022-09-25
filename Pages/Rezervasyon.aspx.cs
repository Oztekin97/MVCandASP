using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class Rezervasyon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRezervasyonSorgula_Click(object sender, EventArgs e)
        {
            string tc = txtTc.Text;
            SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM Musteriler WHERE tc=@tc AND odano!=null", baglanti);
            komut.Parameters.AddWithValue("@tc", tc);
            if (tc != null)
            {
               lblMsg.Text = "Rezervasyonunuz zaten var."; 
            }
            else
            {
                lblMsg.Text = "Rezervasyonunuz bulunamadı.";
            }
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("YeniRezervasyon.aspx");
        }
    }
}