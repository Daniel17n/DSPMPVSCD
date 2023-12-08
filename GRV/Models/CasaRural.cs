using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    public class CasaRural
    {
        [Key]
        public int CasaRuralID { get; set; }
        public String Direccion { get; set; }
        public String Nombre { get; set; }
        public double PrecioPorNoche { get; set; }
        public String UserID { get; set; }
        public virtual ApplicationUser User { get; set; }

    }
}