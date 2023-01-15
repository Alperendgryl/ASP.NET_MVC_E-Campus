using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Sectionn
    {
        public int quota { get; set; }
        public string semester { get; set; }
        public string courseCode { get; set; }
        public int yearr { get; set; }
        public int sectionId { get; set; }
        public string issn { get; set; }
    }

}