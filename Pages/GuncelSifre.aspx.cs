using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MVCandASP.Pages
{
    public partial class GuncelSifre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                txtId.Text = Session["id"].ToString();
                txtAdSoyad.Text = Session["adSoyad"].ToString();
                txtEmail.Text = Session["username"].ToString();
                txtSifre.Text = Session["password"].ToString();
                txtGiris.Text = Session["giris"].ToString();
                txtCikis.Text = Session["cikis"].ToString();
                txtBorc.Text = Session["borc"].ToString();
                txtOda.Text = Session["odano"].ToString();
                txtTc.Text = Session["tc"].ToString();
            }
            else
            {
                Response.Redirect("SifreDegistir.aspx?msg='Oturum olmadan giriş denemesi'");
            }
        }
        protected void btnSifre_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sifre.aspx");
        }
    }
}