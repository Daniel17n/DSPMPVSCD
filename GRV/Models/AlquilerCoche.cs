using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    
    public class AlquilerCoche
    {
        public string[] enumValues = Enum.GetNames(SillaNinios.No.GetType());
        [Key]
        public int AlquilerCocheID { get; set; }
        public String ComaniaAlquiler { get; set; }
        public String DireccionRecogida { get; set; }
        public String TipoCoche { get; set; }
        public int NPlazas { get; set; }
        public int NCoches { get; set; }
        public Boolean OfreceSeguro { get; set; }
        public SillaNinios SillaNinio { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }

        public string ConvertEnumToString(SillaNinios value)
        {
            return value.ToString().Replace("_", " ");
        }
    }
}