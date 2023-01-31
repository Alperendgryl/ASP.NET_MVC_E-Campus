using E_Campus.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Campus_MVC.Controllers
{
    public class InstructorController : Controller
    {
        private isikuniEntities1 db = new isikuniEntities1();
        public ActionResult InstructorPage()
        {
            return View();
        }

        public ActionResult AddExam()
        {
            return View();
        }
        public ActionResult AdvisedStudents()
        {
            return View();
        }
        public ActionResult Courses()
        {
            var courses = db.Database.SqlQuery<Course>("SELECT * FROM Course WHERE numHours = '5' OR numHours = '6'").ToList();
            return View(courses);
        }
        public ActionResult DisplayExams()
        {
            var DisplayExams = db.Database.SqlQuery<Exam>("SELECT * FROM Exam WHERE issn = '111111'").ToList();
            return View(DisplayExams);
        }

        public ActionResult FreeHours()
        {
            return View();
        }
        public ActionResult Projects()
        {
            var Projects = db.Database.SqlQuery<Project>("SELECT * FROM Project WHERE contrDName = 'Computer Science Department'").ToList();
            return View(Projects);
        }
        public ActionResult StudentsOfCourses()
        {
            return View();
        }
        public ActionResult SupervisedStudents()
        {
            return View();
        }
        public ActionResult WeeklySchedule()
        {
            return View();
        }
    }
}