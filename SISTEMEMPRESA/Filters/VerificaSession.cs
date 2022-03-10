using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SISTEMEMPRESA.Controllers;
using SISTEMEMPRESA.Models;

namespace SISTEMEMPRESA.Filters
{
    public class VerificaSession : ActionFilterAttribute
    {
        private SEGUSUARIOSISTEMA ObjUser;
        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            try
            {
                base.OnActionExecuted(filterContext);
                ObjUser = (SEGUSUARIOSISTEMA)HttpContext.Current.Session["UsuarioSistema"];
                if (ObjUser == null)
                {
                    if (filterContext.Controller is AccesoController == false)
                    {
                        filterContext.HttpContext.Response.Redirect("/Acceso/Login");
                    }
                }
            }
            catch (Exception)
            {
                filterContext.Result = new RedirectResult("/Acceso/Login");
            }
        }
    }
}