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
    }
}
