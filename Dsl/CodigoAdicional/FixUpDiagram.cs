using Microsoft.VisualStudio.Modeling;

namespace UPM_IPS.DSPMPVSCDProyectoIPS
{
    partial class FixUpDiagram
    {
        private ModelElement GetParentForAtributo(Atributo atributo)
        {
            return atributo.Clase;
        }
        private ModelElement GetParentForOperacion(Operacion operacion)
        {
            return operacion.Clase;
        }
    }
}