using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Instructor
    {
        public string ssn { get; set; }
        public string iName { get; set; }
        public string rankk { get; set; }
        public int baseSalary { get; set; }
        public int extraSalary { get; set; }
        public string dName { get; set; }
    }

}