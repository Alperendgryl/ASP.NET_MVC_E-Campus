using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Project
    {
        public string leadSsn { get; set; }
        public string prName { get; set; }
        public int budget { get; set; }
        [DataType(DataType.Date)]
        public DateTime startDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime endDate { get; set; }
        public string subject { get; set; }
        public string contrDName { get; set; }
    }

}