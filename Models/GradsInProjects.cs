using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class GradsInProjects
    {
        public string PrjleadSsn { get; set; }
        public string prName { get; set; }
        public string gradsssn { get; set; }
        public int workingHours { get; set; }
    }

}