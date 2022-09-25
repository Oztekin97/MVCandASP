using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class Odalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-VKU0E66J;Initial Catalog=Veritabani;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("SELECT odano FROM Musteriler", baglanti);
            SqlDataReader dr = komut1.ExecuteReader();
            while (dr.Read())
            {
                lstTek.Items.Add((string)dr["odano"]);
            }
            baglanti.Close();
        }
    }
}