using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    public enum CompaniaTren
    {
        Renfe,
        Ougio,
        Iryo
    }
    public enum TipoTren
    {
        AVE,
        Avant,
        Alvia,
        Otro
    }
    public class BilleteTren
    {
        [Key]
        public int BilleteTrenID { get; set; }
        public CompaniaTren Compania { get; set; }
        public TipoTren Tipo { get; set; }
        public String EstacionOrigen { get; set; }
        public String EstacionDestino { get; set; }
        public Boolean EsTrenCafetería { get; set; }
        public int NPlazas { get; set; }
        public String Fecha { get; set; }
        public String HoraSalida { get; set; }
        public String HoraLlegada { get; set; }
        public string UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}