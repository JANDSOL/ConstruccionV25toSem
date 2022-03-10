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
    public class AUDCNTBCABCController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: AUDCNTBCABC
        public ActionResult Index()
        {
            var aUDCNTBCABC = db.AUDCNTBCABC.Include(a => a.CNTBREGCABECERACONT);
            return View(aUDCNTBCABC.ToList());
        }

        // GET: AUDCNTBCABC/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBCABC aUDCNTBCABC = db.AUDCNTBCABC.Find(id);
            if (aUDCNTBCABC == null)
            {
                return HttpNotFound();
            }
            return View(aUDCNTBCABC);
        }

        // GET: AUDCNTBCABC/Create
        public ActionResult Create()
        {
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote");
            return View();
        }

        // POST: AUDCNTBCABC/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdAudCntbCabC,IdCntbRegCabeceraCont,UsuarioIngreso,FechaIngreso,AudUsuarioModificacion,AudFechaModificacion,AudNombreServidor,AudFecha,AudAccion")] AUDCNTBCABC aUDCNTBCABC)
        {
            if (ModelState.IsValid)
            {
                db.AUDCNTBCABC.Add(aUDCNTBCABC);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote", aUDCNTBCABC.IdCntbRegCabeceraCont);
            return View(aUDCNTBCABC);
        }

        // GET: AUDCNTBCABC/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBCABC aUDCNTBCABC = db.AUDCNTBCABC.Find(id);
            if (aUDCNTBCABC == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote", aUDCNTBCABC.IdCntbRegCabeceraCont);
            return View(aUDCNTBCABC);
        }

        // POST: AUDCNTBCABC/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdAudCntbCabC,IdCntbRegCabeceraCont,UsuarioIngreso,FechaIngreso,AudUsuarioModificacion,AudFechaModificacion,AudNombreServidor,AudFecha,AudAccion")] AUDCNTBCABC aUDCNTBCABC)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aUDCNTBCABC).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote", aUDCNTBCABC.IdCntbRegCabeceraCont);
            return View(aUDCNTBCABC);
        }

        // GET: AUDCNTBCABC/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AUDCNTBCABC aUDCNTBCABC = db.AUDCNTBCABC.Find(id);
            if (aUDCNTBCABC == null)
            {
                return HttpNotFound();
            }
            return View(aUDCNTBCABC);
        }

        // POST: AUDCNTBCABC/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AUDCNTBCABC aUDCNTBCABC = db.AUDCNTBCABC.Find(id);
            db.AUDCNTBCABC.Remove(aUDCNTBCABC);
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
