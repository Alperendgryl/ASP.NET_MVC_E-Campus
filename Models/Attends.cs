using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Attends
    {
        public string semester { get; set; }
        public string courseCode { get; set; }

        [DataType(DataType.Date)]
        public DateTime yearr { get; set; }
        public int sectionId { get; set; }
        public string eName { get; set; }
        public string issn { get; set; }
        public string sssn { get; set; }
        public int score { get; set; }
    }

}