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
    public class CNTBSALDOCONTABLEController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: CNTBSALDOCONTABLE
        public ActionResult Index()
        {
            var cNTBSALDOCONTABLE = db.CNTBSALDOCONTABLE.Include(c => c.CNTBREGDETALLECONT);
            return View(cNTBSALDOCONTABLE.ToList());
        }

        // GET: CNTBSALDOCONTABLE/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBSALDOCONTABLE cNTBSALDOCONTABLE = db.CNTBSALDOCONTABLE.Find(id);
            if (cNTBSALDOCONTABLE == null)
            {
                return HttpNotFound();
            }
            return View(cNTBSALDOCONTABLE);
        }

        // GET: CNTBSALDOCONTABLE/Create
        public ActionResult Create()
        {
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable");
            return View();
        }

        // POST: CNTBSALDOCONTABLE/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCntbSaldoContable,IdCntbRegDetalleCont,periodo,NumeroLote,CuentaContable,SaldoContableDebe,SaldoContableHaber,estado")] CNTBSALDOCONTABLE cNTBSALDOCONTABLE)
        {
            if (ModelState.IsValid)
            {
                db.CNTBSALDOCONTABLE.Add(cNTBSALDOCONTABLE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", cNTBSALDOCONTABLE.IdCntbRegDetalleCont);
            return View(cNTBSALDOCONTABLE);
        }

        // GET: CNTBSALDOCONTABLE/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBSALDOCONTABLE cNTBSALDOCONTABLE = db.CNTBSALDOCONTABLE.Find(id);
            if (cNTBSALDOCONTABLE == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", cNTBSALDOCONTABLE.IdCntbRegDetalleCont);
            return View(cNTBSALDOCONTABLE);
        }

        // POST: CNTBSALDOCONTABLE/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCntbSaldoContable,IdCntbRegDetalleCont,periodo,NumeroLote,CuentaContable,SaldoContableDebe,SaldoContableHaber,estado")] CNTBSALDOCONTABLE cNTBSALDOCONTABLE)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cNTBSALDOCONTABLE).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCntbRegDetalleCont = new SelectList(db.CNTBREGDETALLECONT, "IdCntbRegDetalleCont", "GlosaContable", cNTBSALDOCONTABLE.IdCntbRegDetalleCont);
            return View(cNTBSALDOCONTABLE);
        }

        // GET: CNTBSALDOCONTABLE/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBSALDOCONTABLE cNTBSALDOCONTABLE = db.CNTBSALDOCONTABLE.Find(id);
            if (cNTBSALDOCONTABLE == null)
            {
                return HttpNotFound();
            }
            return View(cNTBSALDOCONTABLE);
        }

        // POST: CNTBSALDOCONTABLE/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CNTBSALDOCONTABLE cNTBSALDOCONTABLE = db.CNTBSALDOCONTABLE.Find(id);
            db.CNTBSALDOCONTABLE.Remove(cNTBSALDOCONTABLE);
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
