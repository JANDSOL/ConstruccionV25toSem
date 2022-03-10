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
    public class SEGDEPARTAMENTOesController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGDEPARTAMENTOes
        public ActionResult Index()
        {
            return View(db.SEGDEPARTAMENTO.ToList());
        }

        // GET: SEGDEPARTAMENTOes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGDEPARTAMENTO sEGDEPARTAMENTO = db.SEGDEPARTAMENTO.Find(id);
            if (sEGDEPARTAMENTO == null)
            {
                return HttpNotFound();
            }
            return View(sEGDEPARTAMENTO);
        }

        // GET: SEGDEPARTAMENTOes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SEGDEPARTAMENTOes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegDepartamento,nombre,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGDEPARTAMENTO sEGDEPARTAMENTO)
        {
            if (ModelState.IsValid)
            {
                db.SEGDEPARTAMENTO.Add(sEGDEPARTAMENTO);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sEGDEPARTAMENTO);
        }

        // GET: SEGDEPARTAMENTOes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGDEPARTAMENTO sEGDEPARTAMENTO = db.SEGDEPARTAMENTO.Find(id);
            if (sEGDEPARTAMENTO == null)
            {
                return HttpNotFound();
            }
            return View(sEGDEPARTAMENTO);
        }

        // POST: SEGDEPARTAMENTOes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegDepartamento,nombre,estado,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGDEPARTAMENTO sEGDEPARTAMENTO)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGDEPARTAMENTO).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sEGDEPARTAMENTO);
        }

        // GET: SEGDEPARTAMENTOes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGDEPARTAMENTO sEGDEPARTAMENTO = db.SEGDEPARTAMENTO.Find(id);
            if (sEGDEPARTAMENTO == null)
            {
                return HttpNotFound();
            }
            return View(sEGDEPARTAMENTO);
        }

        // POST: SEGDEPARTAMENTOes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGDEPARTAMENTO sEGDEPARTAMENTO = db.SEGDEPARTAMENTO.Find(id);
            db.SEGDEPARTAMENTO.Remove(sEGDEPARTAMENTO);
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
