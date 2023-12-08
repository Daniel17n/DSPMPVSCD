using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GRV.Models;
using Microsoft.AspNet.Identity;

namespace GRV.Controllers
{
    [Authorize]
    public class CasaRuralesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: CasaRurales
        public ActionResult Index()
        {
            String currentUserId = User.Identity.GetUserId();
            var userProducts = db.CasaRurals.Where(p => p.UserID == currentUserId).ToList();
            return View(userProducts);
        }

        // GET: CasaRurales/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CasaRural casaRural = db.CasaRurals.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((casaRural.UserID != currentUserId) || casaRural == null))
            {
                return HttpNotFound();
            }
            return View(casaRural);
        }

        // GET: CasaRurales/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CasaRurales/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CasaRuralID,Direccion,Nombre,PrecioPorNoche")] CasaRural casaRural)
        {
            string currentUserId = User.Identity.GetUserId();
            casaRural.UserID = currentUserId;
            if (ModelState.IsValid)
            {
                db.CasaRurals.Add(casaRural);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(casaRural);
        }

        // GET: CasaRurales/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CasaRural casaRural = db.CasaRurals.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if ((casaRural.UserID != currentUserId) || (casaRural == null))
            {
                return HttpNotFound();
            }
            return View(casaRural);
        }

        // POST: CasaRurales/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CasaRuralID,Direccion,Nombre,PrecioPorNoche")] CasaRural casaRural)
        {
            string currentUserId = User.Identity.GetUserId();
            casaRural.UserID = currentUserId;
            if (ModelState.IsValid)
            {
                db.Entry(casaRural).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(casaRural);
        }

        // GET: CasaRurales/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CasaRural casaRural = db.CasaRurals.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if ((casaRural.UserID != currentUserId) || (casaRural == null))
            {
                return HttpNotFound();
            }
            return View(casaRural);
        }

        // POST: CasaRurales/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CasaRural casaRural = db.CasaRurals.Find(id);
            db.CasaRurals.Remove(casaRural);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
