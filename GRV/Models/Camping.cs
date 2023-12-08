using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    public class Camping
    {
        [Key]
        public int CampingID { get; set; }
        public String Direccion { get; set; }
        public String Nombre { get; set; }
        public double PrecioPorNoche { get; set; }
        public string UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}