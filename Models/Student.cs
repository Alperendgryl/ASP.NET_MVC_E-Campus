using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Student
    {
        public string sssn { get; set; }
        public bool gradorUgrad { get; set; }
        public string advisorSsn { get; set; }
        public string currCode { get; set; }
        public string sName { get; set; }
        public string studentId { get; set; }
    }

}