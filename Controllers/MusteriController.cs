using MVCandASP.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MVCandASP.Controllers
{
    public class MusteriController : Controller
    {
        VeritabaniEntities vt = new VeritabaniEntities();
        public ActionResult Giris()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Giris(Musteriler musteriler)
        {
            var mus = vt.Musteriler.FirstOrDefault(m => m.username == musteriler.username && m.password == musteriler.password);
            if (mus != null)
            {
                FormsAuthentication.SetAuthCookie(mus.adsoyad, false);
                return RedirectToAction("Index", "Musteri");
            }
            else
            {
                ViewBag.Mesaj = "Geçersiz kullanıcı adı veya şifre girildi.Tekrar deneyiniz!!!";
                return View();
            }
        }
        [Authorize]
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Cikis()
        {
            FormsAuthentication.SignOut();
            return View("Giris");
        }
    }
}