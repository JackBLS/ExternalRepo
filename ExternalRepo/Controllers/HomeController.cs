using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ExternalRepo.Controllers
{
    public class HomeController : Controller
    {
<<<<<<< HEAD
        //hello test1
=======
        //hello test1234
>>>>>>> 6f72d6d93e3c1b49b9696f59f77a3804cfd24455
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
