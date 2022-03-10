using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SISTEMEMPRESA.Controllers
{
    public class AccesoController : Controller
    {
        //Get Acceso
        public ActionResult Login()
        {
            return View();
        }
        //Post
        [HttpPost]
        public ActionResult Login(string UsuarioSistema, string clave)
        {
            try
            {
                using (Models.ConnDbSISTEMAEMPRESA DataBase = new Models.ConnDbSISTEMAEMPRESA())
                {
                    var ObjUsuario = (from TblSEGUSUARIOSISTEMA in DataBase.SEGUSUARIOSISTEMA
                                      where TblSEGUSUARIOSISTEMA.UsuarioSistema == UsuarioSistema.Trim()
                                      && TblSEGUSUARIOSISTEMA.clave == clave.Trim()
                                      select TblSEGUSUARIOSISTEMA).FirstOrDefault();

                    if (ObjUsuario == null)
                    {
                        ViewBag.Error = "Usuario o contraseña invalida";
                        return View();
                    }
                    Session["UsuarioSistema"] = ObjUsuario;
                }
                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message;
                return View();
            }
        }
    }
}