using E_Campus.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Campus_MVC.Controllers
{
    public class HomeController : Controller
    {
        private isikuniEntities1 db = new isikuniEntities1();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string name, string ssn)
        {
            var instructor = db.Instructor.Where(i => i.iName == name && i.ssn == ssn).FirstOrDefault();
            var student = db.student.Where(s => s.sName == name && s.sssn == ssn).FirstOrDefault();

            if (instructor != null)
            {
                return RedirectToAction("InstructorPage", "Instructor");
            }
            else if (student != null)
            {
                return RedirectToAction("StudentPage", "Student");
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
    }
}