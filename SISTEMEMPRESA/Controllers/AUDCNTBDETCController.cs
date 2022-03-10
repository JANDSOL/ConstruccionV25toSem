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
    public class AUDCNTBDETCController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: AUDCNTBDETC
        public ActionResult Index()
        {
            var aUDCNTBDETC = db.AUDCNTBDETC.Include(a => a.CNTBREGDETALLECONT);
            return View(aUDCNTBDETC.ToList());
        }

        // GET: AUDCNTBDETC/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBDETC aUDCNTBDETC = db.AUDCNTBDETC.Find(id);
            if (aUDCNTBDETC == null)
            {
                return HttpNotFound();
            }
            return View(aUDCNTBDETC);
        }

        // GET: AUDCNTBDETC/Create
        public ActionResult Create()
        {
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable");
            return View();
        }

        // POST: AUDCNTBDETC/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdAudCntbDetC,IdCntbRegDetalleCont,UsuarioIngreso,FechaIngreso,AudUsuarioModificacion,AudFechaModificacion,AudNombreServidor,AudFecha,AudAccion")] AUDCNTBDETC aUDCNTBDETC)
        {
            if (ModelState.IsValid)
            {
                db.AUDCNTBDETC.Add(aUDCNTBDETC);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", aUDCNTBDETC.IdCntbRegDetalleCont);
            return View(aUDCNTBDETC);
        }

        // GET: AUDCNTBDETC/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBDETC aUDCNTBDETC = db.AUDCNTBDETC.Find(id);
            if (aUDCNTBDETC == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", aUDCNTBDETC.IdCntbRegDetalleCont);
            return View(aUDCNTBDETC);
        }

        // POST: AUDCNTBDETC/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdAudCntbDetC,IdCntbRegDetalleCont,UsuarioIngreso,FechaIngreso,AudUsuarioModificacion,AudFechaModificacion,AudNombreServidor,AudFecha,AudAccion")] AUDCNTBDETC aUDCNTBDETC)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aUDCNTBDETC).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", aUDCNTBDETC.IdCntbRegDetalleCont);
            return View(aUDCNTBDETC);
        }

        // GET: AUDCNTBDETC/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBDETC aUDCNTBDETC = db.AUDCNTBDETC.Find(id);
            if (aUDCNTBDETC == null)
            {
                return HttpNotFound();
            }
            return View(aUDCNTBDETC);
        }

        // POST: AUDCNTBDETC/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AUDCNTBDETC aUDCNTBDETC = db.AUDCNTBDETC.Find(id);
            db.AUDCNTBDETC.Remove(aUDCNTBDETC);
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
