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
    public class CNTBPLANDECUENTAController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: CNTBPLANDECUENTA
        public ActionResult Index()
        {
            return View(db.CNTBPLANDECUENTA.ToList());
        }

        // GET: CNTBPLANDECUENTA/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBPLANDECUENTA cNTBPLANDECUENTA = db.CNTBPLANDECUENTA.Find(id);
            if (cNTBPLANDECUENTA == null)
            {
                return HttpNotFound();
            }
            return View(cNTBPLANDECUENTA);
        }

        // GET: CNTBPLANDECUENTA/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CNTBPLANDECUENTA/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCntbPlanDeCuenta,periodo,detalle,naturaleza,estado")] CNTBPLANDECUENTA cNTBPLANDECUENTA)
        {
            if (ModelState.IsValid)
            {
                db.CNTBPLANDECUENTA.Add(cNTBPLANDECUENTA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cNTBPLANDECUENTA);
        }

        // GET: CNTBPLANDECUENTA/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBPLANDECUENTA cNTBPLANDECUENTA = db.CNTBPLANDECUENTA.Find(id);
            if (cNTBPLANDECUENTA == null)
            {
                return HttpNotFound();
            }
            return View(cNTBPLANDECUENTA);
        }

        // POST: CNTBPLANDECUENTA/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCntbPlanDeCuenta,periodo,detalle,naturaleza,estado")] CNTBPLANDECUENTA cNTBPLANDECUENTA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cNTBPLANDECUENTA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cNTBPLANDECUENTA);
        }

        // GET: CNTBPLANDECUENTA/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBPLANDECUENTA cNTBPLANDECUENTA = db.CNTBPLANDECUENTA.Find(id);
            if (cNTBPLANDECUENTA == null)
            {
                return HttpNotFound();
            }
            return View(cNTBPLANDECUENTA);
        }

        // POST: CNTBPLANDECUENTA/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CNTBPLANDECUENTA cNTBPLANDECUENTA = db.CNTBPLANDECUENTA.Find(id);
            db.CNTBPLANDECUENTA.Remove(cNTBPLANDECUENTA);
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
