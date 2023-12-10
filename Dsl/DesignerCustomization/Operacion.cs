using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UPM_IPS.DSPMPVSCDProyectoIPS
{
    public partial class Operacion
    {
        public string GetNombreYParametrosValue()
        {
            return string.Format("{0}({1})", this.Nombre, this.ConjuntoDatos);
        }

        public void SetNombreYParametrosValue(string newValue)
        {

        }
    }
}
