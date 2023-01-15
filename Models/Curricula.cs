using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace E_Campus_MVC.Models
{
    public class Curricula
    {
        public string currCode { get; set; }
        public bool gradOrUGrad { get; set; }
        public string dName { get; set; }
    }
}