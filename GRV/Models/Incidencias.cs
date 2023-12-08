using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace GRV.Models
{
    public enum TipoRecurso
    {
        Avion,
        Tren,
        AlquilerCoche,
        Hotel,
        Camping,
        CasaRural
    }

    public class Incidencias
    {

        [Key]
        public int IncidenciasID { get; set; }
        public String Descripcion { get; set; }
        public String Nombre { get; set; }
        public int EscalaDeGravedad { get; set; }
    }
}