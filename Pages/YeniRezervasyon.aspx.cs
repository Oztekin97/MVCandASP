using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class YeniRezervasyon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("SELECT DISTINCT o.odano FROM Odalar o,Musteriler m WHERE o.odano!=m.odano AND durum=0", baglanti);
            SqlDataReader dr = komut1.ExecuteReader();
            while (dr.Read())
            {
                lstTek.Items.Add((string)dr["odano"]);
            }
            baglanti.Close();
        }
        protected void btnRezervasyon_Click(object sender, EventArgs e)
        {
            string tc = txtTc.Text;
            string giris = txtGiris.Text;
            string cikis = txtCikis.Text;
            string oda = lstTek.SelectedValue.ToString();
            /*  string gg = txtGiris.Text.Substring(-1,2);
              string cc = txtGiris.Text.Substring(-1, 2);
              int g = Convert.ToInt32(gg.ToString());
              int c = Convert.ToInt32(cc.ToString());
              int borc =c-g;*/
            SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
            SqlCommand komut1 = new SqlCommand("UPDATE Musteriler SET giris=@giris, cikis=@cikis, odano=@oda WHERE tc=@tc", baglanti);
            komut1.Parameters.AddWithValue("@giris", giris);
            komut1.Parameters.AddWithValue("@cikis", cikis);
            komut1.Parameters.AddWithValue("@oda", oda);
            komut1.Parameters.AddWithValue("@tc", tc);
            SqlCommand komut2 = new SqlCommand("UPDATE Odalar SET durum=1 WHERE odano=@odam", baglanti);
            komut2.Parameters.AddWithValue("odam", oda);
            baglanti.Open();
            komut1.ExecuteNonQuery();
            komut2.ExecuteNonQuery();
            baglanti.Close();
            lblMsg.Text = "Rezervasyonunuz oluşturuldu.";
        }
    }
}