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
    public class CampingesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Campinges
        public ActionResult Index()
        {
            String currentUserId = User.Identity.GetUserId();
            var userProducts = db.Campinges.Where(p => p.UserId == currentUserId).ToList();
            return View(userProducts);
            
        }

        // GET: Campinges/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Camping camping = db.Campinges.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((camping.UserId != currentUserId) || camping == null))
            {
                return HttpNotFound();
            }
            return View(camping);
        }

        // GET: Campinges/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Campinges/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CampingID,Direccion,Nombre,PrecioPorNoche")] Camping camping)
        {
            string currentUserId = User.Identity.GetUserId();
            camping.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.Campinges.Add(camping);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(camping);
        }

        // GET: Campinges/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Camping camping = db.Campinges.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((camping.UserId != currentUserId) || camping == null))
            {
                return HttpNotFound();
            }
            return View(camping);
        }

        // POST: Campinges/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CampingID,Direccion,Nombre,PrecioPorNoche")] Camping camping)
        {
            string currentUserId = User.Identity.GetUserId();
            camping.UserId = currentUserId;
            if (ModelState.IsValid)
            {
                db.Entry(camping).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(camping);
        }

        // GET: Campinges/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Camping camping = db.Campinges.Find(id);
            string currentUserId = User.Identity.GetUserId();
            if (((camping.UserId != currentUserId) || camping == null))
            {
                return HttpNotFound();
            }
            return View(camping);
        }

        // POST: Campinges/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Camping camping = db.Campinges.Find(id);
            db.Campinges.Remove(camping);
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
