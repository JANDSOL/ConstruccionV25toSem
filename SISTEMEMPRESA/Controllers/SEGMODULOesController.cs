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
    public class SEGMODULOesController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGMODULOes
        public ActionResult Index()
        {
            return View(db.SEGMODULO.ToList());
        }

        // GET: SEGMODULOes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGMODULO sEGMODULO = db.SEGMODULO.Find(id);
            if (sEGMODULO == null)
            {
                return HttpNotFound();
            }
            return View(sEGMODULO);
        }

        // GET: SEGMODULOes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SEGMODULOes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegModulo,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGMODULO sEGMODULO)
        {
            if (ModelState.IsValid)
            {
                db.SEGMODULO.Add(sEGMODULO);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sEGMODULO);
        }

        // GET: SEGMODULOes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGMODULO sEGMODULO = db.SEGMODULO.Find(id);
            if (sEGMODULO == null)
            {
                return HttpNotFound();
            }
            return View(sEGMODULO);
        }

        // POST: SEGMODULOes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegModulo,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGMODULO sEGMODULO)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGMODULO).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sEGMODULO);
        }

        // GET: SEGMODULOes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGMODULO sEGMODULO = db.SEGMODULO.Find(id);
            if (sEGMODULO == null)
            {
                return HttpNotFound();
            }
            return View(sEGMODULO);
        }

        // POST: SEGMODULOes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGMODULO sEGMODULO = db.SEGMODULO.Find(id);
            db.SEGMODULO.Remove(sEGMODULO);
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
