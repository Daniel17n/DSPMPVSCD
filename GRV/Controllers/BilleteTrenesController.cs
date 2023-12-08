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
    public class BilleteTrenesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: BilleteTrenes
        public ActionResult Index()
        {
            String currentUserId = User.Identity.GetUserId();
            var userProducts = db.BilleteTrens.Where(p => p.UserId == currentUserId).ToList();
            return View(userProducts);
   
        }

        // GET: BilleteTrenes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteTren billeteTren = db.BilleteTrens.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((billeteTren.UserId != currentUserId) || billeteTren == null))
            {
                return HttpNotFound();
            }
            return View(billeteTren);
        }

        // GET: BilleteTrenes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BilleteTrenes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BilleteTrenID,Compania,Tipo,EstacionOrigen,EstacionDestino,EsTrenCafetería,NPlazas,Fecha,HoraSalida,HoraLlegada")] BilleteTren billeteTren)
        {
            string currentUserId = User.Identity.GetUserId();
            billeteTren.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.BilleteTrens.Add(billeteTren);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(billeteTren);
        }

        // GET: BilleteTrenes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteTren billeteTren = db.BilleteTrens.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((billeteTren.UserId != currentUserId) || billeteTren == null))
            {
                return HttpNotFound();
            }
            return View(billeteTren);
        }

        // POST: BilleteTrenes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BilleteTrenID,Compania,Tipo,EstacionOrigen,EstacionDestino,EsTrenCafetería,NPlazas,Fecha,HoraSalida,HoraLlegada")] BilleteTren billeteTren)
        {
            string currentUserId = User.Identity.GetUserId();
            billeteTren.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.Entry(billeteTren).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(billeteTren);
        }

        // GET: BilleteTrenes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteTren billeteTren = db.BilleteTrens.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((billeteTren.UserId != currentUserId) || billeteTren == null))
            {
                return HttpNotFound();
            }
            return View(billeteTren);
        }

        // POST: BilleteTrenes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BilleteTren billeteTren = db.BilleteTrens.Find(id);
            db.BilleteTrens.Remove(billeteTren);
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
