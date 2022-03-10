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
    public class CNTBREGCABECERACONTController : Controller
    {
        private ConnDbSISTEMAEMPRESA db = new ConnDbSISTEMAEMPRESA();

        // GET: CNTBREGCABECERACONT
        public ActionResult Index()
        {
            return View(db.CNTBREGCABECERACONT.ToList());
        }

        // GET: CNTBREGCABECERACONT/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGCABECERACONT cNTBREGCABECERACONT = db.CNTBREGCABECERACONT.Find(id);
            if (cNTBREGCABECERACONT == null)
            {
                return HttpNotFound();
            }
            return View(cNTBREGCABECERACONT);
        }

        // GET: CNTBREGCABECERACONT/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CNTBREGCABECERACONT/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCntbRegCabeceraCont,periodo,NombreLote,TotalDebe,TotalHaber,EstadoContable,observacion,estado,UsuarioSistema")] CNTBREGCABECERACONT cNTBREGCABECERACONT)
        {
            if (ModelState.IsValid)
            {
                db.CNTBREGCABECERACONT.Add(cNTBREGCABECERACONT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cNTBREGCABECERACONT);
        }

        // GET: CNTBREGCABECERACONT/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGCABECERACONT cNTBREGCABECERACONT = db.CNTBREGCABECERACONT.Find(id);
            if (cNTBREGCABECERACONT == null)
            {
                return HttpNotFound();
            }
            return View(cNTBREGCABECERACONT);
        }

        // POST: CNTBREGCABECERACONT/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCntbRegCabeceraCont,periodo,NombreLote,TotalDebe,TotalHaber,EstadoContable,observacion,estado,UsuarioSistema")] CNTBREGCABECERACONT cNTBREGCABECERACONT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cNTBREGCABECERACONT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cNTBREGCABECERACONT);
        }

        // GET: CNTBREGCABECERACONT/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CNTBREGCABECERACONT cNTBREGCABECERACONT = db.CNTBREGCABECERACONT.Find(id);
            if (cNTBREGCABECERACONT == null)
            {
                return HttpNotFound();
            }
            return View(cNTBREGCABECERACONT);
        }

        // POST: CNTBREGCABECERACONT/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CNTBREGCABECERACONT cNTBREGCABECERACONT = db.CNTBREGCABECERACONT.Find(id);
            db.CNTBREGCABECERACONT.Remove(cNTBREGCABECERACONT);
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
