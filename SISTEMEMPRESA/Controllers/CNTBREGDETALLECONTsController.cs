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
    public class CNTBREGDETALLECONTsController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: CNTBREGDETALLECONTs
        public ActionResult Index()
        {
            var cNTBREGDETALLECONT = db.CNTBREGDETALLECONT.Include(c => c.CNTBPLANDECUENTA).Include(c => c.CNTBREGCABECERACONT);
            return View(cNTBREGDETALLECONT.ToList());
        }

        // GET: CNTBREGDETALLECONTs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGDETALLECONT cNTBREGDETALLECONT = db.CNTBREGDETALLECONT.Find(id);
            if (cNTBREGDETALLECONT == null)
            {
                return HttpNotFound();
            }
            return View(cNTBREGDETALLECONT);
        }

        // GET: CNTBREGDETALLECONTs/Create
        public ActionResult Create()
        {
            ViewBag.IdCntbPlanDeCuenta = new SelectList(db.CNTBPLANDECUENTA, "IdCntbPlanDeCuenta", "IdCntbPlanDeCuenta");
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "IdCntbRegCabeceraCont");
            return View();
        }

        // POST: CNTBREGDETALLECONTs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCntbRegDetalleCont,periodo,IdCntbRegCabeceraCont,SecuenciaDetalle,IdCntbPlanDeCuenta,GlosaContable,FechaContable,afectacion,monto,estado,UsuarioSistema")] CNTBREGDETALLECONT cNTBREGDETALLECONT)
        {
            if (ModelState.IsValid)
            {
                db.CNTBREGDETALLECONT.Add(cNTBREGDETALLECONT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCntbPlanDeCuenta = new SelectList(db.CNTBPLANDECUENTA, "IdCntbPlanDeCuenta", "detalle", cNTBREGDETALLECONT.IdCntbPlanDeCuenta);
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote", cNTBREGDETALLECONT.IdCntbRegCabeceraCont);
            return View(cNTBREGDETALLECONT);
        }

        // GET: CNTBREGDETALLECONTs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGDETALLECONT cNTBREGDETALLECONT = db.CNTBREGDETALLECONT.Find(id);
            if (cNTBREGDETALLECONT == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCntbPlanDeCuenta = new SelectList(db.CNTBPLANDECUENTA, "IdCntbPlanDeCuenta", "IdCntbPlanDeCuenta", cNTBREGDETALLECONT.IdCntbPlanDeCuenta);
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "IdCntbRegCabeceraCont", cNTBREGDETALLECONT.IdCntbRegCabeceraCont);
            return View(cNTBREGDETALLECONT);
        }

        // POST: CNTBREGDETALLECONTs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCntbRegDetalleCont,periodo,IdCntbRegCabeceraCont,SecuenciaDetalle,IdCntbPlanDeCuenta,GlosaContable,FechaContable,afectacion,monto,estado,UsuarioSistema")] CNTBREGDETALLECONT cNTBREGDETALLECONT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cNTBREGDETALLECONT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCntbPlanDeCuenta = new SelectList(db.CNTBPLANDECUENTA, "IdCntbPlanDeCuenta", "detalle", cNTBREGDETALLECONT.IdCntbPlanDeCuenta);
            ViewBag.IdCntbRegCabeceraCont = new SelectList(db.CNTBREGCABECERACONT, "IdCntbRegCabeceraCont", "NombreLote", cNTBREGDETALLECONT.IdCntbRegCabeceraCont);
            return View(cNTBREGDETALLECONT);
        }

        // GET: CNTBREGDETALLECONTs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGDETALLECONT cNTBREGDETALLECONT = db.CNTBREGDETALLECONT.Find(id);
            if (cNTBREGDETALLECONT == null)
            {
                return HttpNotFound();
            }
            return View(cNTBREGDETALLECONT);
        }

        // POST: CNTBREGDETALLECONTs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CNTBREGDETALLECONT cNTBREGDETALLECONT = db.CNTBREGDETALLECONT.Find(id);
            db.CNTBREGDETALLECONT.Remove(cNTBREGDETALLECONT);
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
