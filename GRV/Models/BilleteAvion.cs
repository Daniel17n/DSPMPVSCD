using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    public class BilleteAvion
    {
        [Key]
        public int BilleteAvionID { get; set; }
        public String ComaniaAerea { get; set; }
        public String AeropuertoOrigen { get; set; }
        public String AeropuertoDestino { get; set; }
        public Boolean EsLowCost { get; set; }
        public int NPlazas { get; set; }
        public String Fecha { get; set; }
        public String HoraSalida { get; set; }
        public String HoraLlegada { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
}
}