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
    public class SEGROLOPERACIONsController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGROLOPERACIONs
        public ActionResult Index()
        {
            var sEGROLOPERACION = db.SEGROLOPERACION.Include(s => s.SEGMODULO).Include(s => s.SEGOPERACION).Include(s => s.SEGROL);
            return View(sEGROLOPERACION.ToList());
        }

        // GET: SEGROLOPERACIONs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROLOPERACION sEGROLOPERACION = db.SEGROLOPERACION.Find(id);
            if (sEGROLOPERACION == null)
            {
                return HttpNotFound();
            }
            return View(sEGROLOPERACION);
        }

        // GET: SEGROLOPERACIONs/Create
        public ActionResult Create()
        {
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle");
            ViewBag.IdSegOperacion = new SelectList(db.SEGOPERACION, "IdSegOperacion", "detalle");
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle");
            return View();
        }

        // POST: SEGROLOPERACIONs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegRolOperacion,IdSegModulo,IdSegRol,IdSegOperacion,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGROLOPERACION sEGROLOPERACION)
        {
            if (ModelState.IsValid)
            {
                db.SEGROLOPERACION.Add(sEGROLOPERACION);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGROLOPERACION.IdSegModulo);
            ViewBag.IdSegOperacion = new SelectList(db.SEGOPERACION, "IdSegOperacion", "detalle", sEGROLOPERACION.IdSegOperacion);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGROLOPERACION.IdSegRol);
            return View(sEGROLOPERACION);
        }

        // GET: SEGROLOPERACIONs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROLOPERACION sEGROLOPERACION = db.SEGROLOPERACION.Find(id);
            if (sEGROLOPERACION == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGROLOPERACION.IdSegModulo);
            ViewBag.IdSegOperacion = new SelectList(db.SEGOPERACION, "IdSegOperacion", "detalle", sEGROLOPERACION.IdSegOperacion);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGROLOPERACION.IdSegRol);
            return View(sEGROLOPERACION);
        }

        // POST: SEGROLOPERACIONs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegRolOperacion,IdSegModulo,IdSegRol,IdSegOperacion,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGROLOPERACION sEGROLOPERACION)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGROLOPERACION).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdSegModulo = new SelectList(db.SEGMODULO, "IdSegModulo", "detalle", sEGROLOPERACION.IdSegModulo);
            ViewBag.IdSegOperacion = new SelectList(db.SEGOPERACION, "IdSegOperacion", "detalle", sEGROLOPERACION.IdSegOperacion);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGROLOPERACION.IdSegRol);
            return View(sEGROLOPERACION);
        }

        // GET: SEGROLOPERACIONs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROLOPERACION sEGROLOPERACION = db.SEGROLOPERACION.Find(id);
            if (sEGROLOPERACION == null)
            {
                return HttpNotFound();
            }
            return View(sEGROLOPERACION);
        }

        // POST: SEGROLOPERACIONs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGROLOPERACION sEGROLOPERACION = db.SEGROLOPERACION.Find(id);
            db.SEGROLOPERACION.Remove(sEGROLOPERACION);
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
