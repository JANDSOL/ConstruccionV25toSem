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
    public class SEGUSUARIOSISTEMAsController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: SEGUSUARIOSISTEMAs
        public ActionResult Index()
        {
            var sEGUSUARIOSISTEMA = db.SEGUSUARIOSISTEMA.Include(s => s.SEGDEPARTAMENTO).Include(s => s.SEGROL);
            return View(sEGUSUARIOSISTEMA.ToList());
        }

        // GET: SEGUSUARIOSISTEMAs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA = db.SEGUSUARIOSISTEMA.Find(id);
            if (sEGUSUARIOSISTEMA == null)
            {
                return HttpNotFound();
            }
            return View(sEGUSUARIOSISTEMA);
        }

        // GET: SEGUSUARIOSISTEMAs/Create
        public ActionResult Create()
        {
            ViewBag.IdSegDepartamento = new SelectList(db.SEGDEPARTAMENTO, "IdSegDepartamento", "nombre");
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle");
            return View();
        }

        // POST: SEGUSUARIOSISTEMAs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSegUsuarioSistema,IdSegDepartamento,IdSegRol,nombre,apellido,UsuarioSistema,clave,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA)
        {
            if (ModelState.IsValid)
            {
                db.SEGUSUARIOSISTEMA.Add(sEGUSUARIOSISTEMA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdSegDepartamento = new SelectList(db.SEGDEPARTAMENTO, "IdSegDepartamento", "nombre", sEGUSUARIOSISTEMA.IdSegDepartamento);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGUSUARIOSISTEMA.IdSegRol);
            return View(sEGUSUARIOSISTEMA);
        }

        // GET: SEGUSUARIOSISTEMAs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA = db.SEGUSUARIOSISTEMA.Find(id);
            if (sEGUSUARIOSISTEMA == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdSegDepartamento = new SelectList(db.SEGDEPARTAMENTO, "IdSegDepartamento", "nombre", sEGUSUARIOSISTEMA.IdSegDepartamento);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGUSUARIOSISTEMA.IdSegRol);
            return View(sEGUSUARIOSISTEMA);
        }

        // POST: SEGUSUARIOSISTEMAs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSegUsuarioSistema,IdSegDepartamento,IdSegRol,nombre,apellido,UsuarioSistema,clave,UsuarioIngreso,FechaIngreso,UsuarioModificacion,FechaModificacion")] SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sEGUSUARIOSISTEMA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdSegDepartamento = new SelectList(db.SEGDEPARTAMENTO, "IdSegDepartamento", "nombre", sEGUSUARIOSISTEMA.IdSegDepartamento);
            ViewBag.IdSegRol = new SelectList(db.SEGROL, "IdSegRol", "detalle", sEGUSUARIOSISTEMA.IdSegRol);
            return View(sEGUSUARIOSISTEMA);
        }

        // GET: SEGUSUARIOSISTEMAs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA = db.SEGUSUARIOSISTEMA.Find(id);
            if (sEGUSUARIOSISTEMA == null)
            {
                return HttpNotFound();
            }
            return View(sEGUSUARIOSISTEMA);
        }

        // POST: SEGUSUARIOSISTEMAs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SEGUSUARIOSISTEMA sEGUSUARIOSISTEMA = db.SEGUSUARIOSISTEMA.Find(id);
            db.SEGUSUARIOSISTEMA.Remove(sEGUSUARIOSISTEMA);
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
