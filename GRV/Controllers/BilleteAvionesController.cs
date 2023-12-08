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
    public class BilleteAvionesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: BilleteAviones
        public ActionResult Index()
        {
            string currentUserId = User.Identity.GetUserId();
            var userProducts = db.BilleteAvions.Where(p => p.UserId == currentUserId).ToList();
            return View(userProducts);
        }

        // GET: BilleteAviones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteAvion billeteAvion = db.BilleteAvions.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((billeteAvion.UserId != currentUserId)|| billeteAvion == null))    
            {
                return HttpNotFound();
            }
            return View(billeteAvion);
        }

        // GET: BilleteAviones/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BilleteAviones/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BilleteAvionID,ComaniaAerea,AeropuertoOrigen,AeropuertoDestino,EsLowCost,NPlazas,Fecha,HoraSalida,HoraLlegada")] BilleteAvion billeteAvion)
        {
            string currentUserId = User.Identity.GetUserId();
            billeteAvion.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.BilleteAvions.Add(billeteAvion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(billeteAvion);
        }

        // GET: BilleteAviones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteAvion billeteAvion = db.BilleteAvions.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if ((billeteAvion.UserId != currentUserId) || (billeteAvion == null))
                if (billeteAvion == null)
            {
                return HttpNotFound();
            }
            return View(billeteAvion);
        }

        // POST: BilleteAviones/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BilleteAvionID,ComaniaAerea,AeropuertoOrigen,AeropuertoDestino,EsLowCost,NPlazas,Fecha,HoraSalida,HoraLlegada")] BilleteAvion billeteAvion)
        {
            string currentUserId = User.Identity.GetUserId();
            billeteAvion.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.Entry(billeteAvion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(billeteAvion);
        }

        // GET: BilleteAviones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BilleteAvion billeteAvion = db.BilleteAvions.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if ((billeteAvion.UserId != currentUserId) || (billeteAvion == null))
            {
                return HttpNotFound();
            }
            return View(billeteAvion);
        }

        // POST: BilleteAviones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BilleteAvion billeteAvion = db.BilleteAvions.Find(id);
            db.BilleteAvions.Remove(billeteAvion);
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
