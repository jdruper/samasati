using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SamasatiYoga.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to Samasati Yoga";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
