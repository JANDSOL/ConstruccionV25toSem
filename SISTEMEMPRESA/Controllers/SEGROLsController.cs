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
    public class SEGROLsController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGROLs
        public ActionResult Index()
        {
            return View(db.SEGROL.ToList());
        }

        // GET: SEGROLs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROL sEGROL = db.SEGROL.Find(id);
            if (sEGROL == null)
            {
                return HttpNotFound();
            }
            return View(sEGROL);
        }

        // GET: SEGROLs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SEGROLs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegRol,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGROL sEGROL)
        {
            if (ModelState.IsValid)
            {
                db.SEGROL.Add(sEGROL);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sEGROL);
        }

        // GET: SEGROLs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROL sEGROL = db.SEGROL.Find(id);
            if (sEGROL == null)
            {
                return HttpNotFound();
            }
            return View(sEGROL);
        }

        // POST: SEGROLs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegRol,detalle,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGROL sEGROL)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGROL).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sEGROL);
        }

        // GET: SEGROLs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGROL sEGROL = db.SEGROL.Find(id);
            if (sEGROL == null)
            {
                return HttpNotFound();
            }
            return View(sEGROL);
        }

        // POST: SEGROLs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGROL sEGROL = db.SEGROL.Find(id);
            db.SEGROL.Remove(sEGROL);
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
