using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPM_IPS.DSPMPVSCDProyectoIPS
{
    public partial class Atributo
    {
        public string GetNombreYTipoValue() 
        {
            return string.Format("{0} : {1}", this.Nombre, this.TipoDato);
        }

        public void SetNombreYTipoValue(string newValue) 
        { 
        
        }
    }
}
