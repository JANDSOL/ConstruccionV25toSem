using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SISTEMEMPRESA.Models;

namespace SISTEMEMPRESA.Controllers
{
    public class SEGOPERACIONsController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGOPERACIONs
        public ActionResult Index()
        {
            var sEGOPERACION = db.SEGOPERACION.Include(s => s.SEGMODULO);
            return View(sEGOPERACION.ToList());
        }

        // GET: SEGOPERACIONs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGOPERACION sEGOPERACION = db.SEGOPERACION.Find(id);
            if (sEGOPERACION == null)
            {
                return HttpNotFound();
            }
            return View(sEGOPERACION);
        }

        // GET: SEGOPERACIONs/Create
        public ActionResult Create()
        {
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle");
            return View();
        }

        // POST: SEGOPERACIONs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegOperacion,IdSegModulo,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGOPERACION sEGOPERACION)
        {
            if (ModelState.IsValid)
            {
                db.SEGOPERACION.Add(sEGOPERACION);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGOPERACION.IdSegModulo);
            return View(sEGOPERACION);
        }

        // GET: SEGOPERACIONs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGOPERACION sEGOPERACION = db.SEGOPERACION.Find(id);
            if (sEGOPERACION == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGOPERACION.IdSegModulo);
            return View(sEGOPERACION);
        }

        // POST: SEGOPERACIONs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegOperacion,IdSegModulo,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGOPERACION sEGOPERACION)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGOPERACION).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGOPERACION.IdSegModulo);
            return View(sEGOPERACION);
        }

        // GET: SEGOPERACIONs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGOPERACION sEGOPERACION = db.SEGOPERACION.Find(id);
            if (sEGOPERACION == null)
            {
                return HttpNotFound();
            }
            return View(sEGOPERACION);
        }

        // POST: SEGOPERACIONs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGOPERACION sEGOPERACION = db.SEGOPERACION.Find(id);
            db.SEGOPERACION.Remove(sEGOPERACION);
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
