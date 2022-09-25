using MVCandASP.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MVCandASP.Controllers
{
    public class PersonelController : Controller
    {
        VeritabaniEntities vt = new VeritabaniEntities();
        public ActionResult Giris()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Giris(Personeller personeller)
        {
            var pers = vt.Personeller.FirstOrDefault(p => p.username == personeller.username && p.password == personeller.password);
            if (pers != null)
            {
                FormsAuthentication.SetAuthCookie(pers.username, false);
                return RedirectToAction("Index", "Personel");
            }
            else
            {
                ViewBag.Mesaj = "Geçersiz kullanıcı adı veya şifre girildi.Tekrar deneyiniz!!!";
                return View();
            }
        }
        [Authorize]
        public ActionResult Index(string p)
        {
            var liste = from d in vt.Musteriler select d;
            if (!string.IsNullOrEmpty(p))
            {
                liste = liste.Where(m => m.adsoyad.Contains(p));
            }
            return View(liste.ToList());
        }
        [HttpGet]
        public ActionResult Ekle()
        {
            var gor = vt.Musteriler.ToList();
            return View(gor);
        }
        [HttpPost]
        public ActionResult Ekle(Musteriler musteriler)
        {
            vt.Musteriler.Add(musteriler);
            vt.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var musteri = vt.Musteriler.Find(id);
            vt.Musteriler.Remove(musteri);
            vt.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Guncelle(int id)
        {
            var musteri = vt.Musteriler.Find(id);
            return View("Guncelle", musteri);
        }
        [HttpPost]
        public ActionResult Guncelle(Musteriler musteriler)
        {
            var guncel = vt.Musteriler.Find(musteriler.id);
            guncel.adsoyad = musteriler.adsoyad;
            guncel.tc = musteriler.tc;
            guncel.giris = musteriler.giris;
            guncel.cikis = musteriler.cikis;
            guncel.borc = musteriler.borc;
            guncel.odano = musteriler.odano;
            vt.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Cikis()
        {
            FormsAuthentication.SignOut();
            return View("Giris");
        }
    }
}