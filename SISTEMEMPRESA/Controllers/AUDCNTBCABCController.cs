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
    }
}
