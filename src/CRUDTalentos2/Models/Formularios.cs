using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class Formularios
    {
        public Formularios()
        {
            FormulariosCamposPerguntas = new HashSet<FormulariosCamposPerguntas>();
        }

        public byte IdFormulario { get; set; }
        public string Nome { get; set; }

        public virtual ICollection<FormulariosCamposPerguntas> FormulariosCamposPerguntas { get; set; }
    }
}
