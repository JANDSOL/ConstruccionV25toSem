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
    }
}
