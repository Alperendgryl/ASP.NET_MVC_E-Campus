using E_Campus.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Campus_MVC.Controllers
{
    public class StudentController : Controller
    {
        private isikuniEntities1 db = new isikuniEntities1();
        public ActionResult StudentPage()
        {
            return View();
        }

        public ActionResult Courses()
        {
            var courses = db.Database.SqlQuery<Course>("SELECT * FROM Course WHERE numHours = '5' OR numHours = '7'").ToList();
           
            return View(courses);
        }

        public ActionResult ExamGrades()
        {
            var ExamGrades = db.Database.SqlQuery<Exam>("SELECT * FROM Exam WHERE sectionId = '3' OR sectionId = '1' ").ToList();

            return View(ExamGrades);
        }

        public ActionResult GradeReport()
        {
            return View();
        }

        public ActionResult ListOfProjects()
        {
            var ListOfProjects = db.Database.SqlQuery<Project>("SELECT * FROM Project WHERE contrDName = 'Computer Science Department' ").ToList();

            return View(ListOfProjects);
        }

        public ActionResult SupervisorList()
        {
            return View();
        }

        public ActionResult WeeklySchedule()
        {
            return View();
        }
    }
}