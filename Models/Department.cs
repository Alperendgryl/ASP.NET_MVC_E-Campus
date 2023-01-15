using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Department
    {
        public string dName { get; set; }
        public int budget { get; set; }
        public string headSSn { get; set; }
        public string buildingName { get; set; }
    }
}