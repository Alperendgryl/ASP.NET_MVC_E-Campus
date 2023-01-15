using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Course
    {
        public int ects { get; set; }
        public string courseName { get; set; }
        public string courseCode { get; set; }
        public int numHours { get; set; }
        public string preReqCourseCode { get; set; }
    }
}