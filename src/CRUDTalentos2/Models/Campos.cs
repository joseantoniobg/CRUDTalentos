using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class Campos
    {
        public Campos()
        {
            CandidatoCampos = new HashSet<CandidatoCampos>();
            FormulariosCamposPerguntas = new HashSet<FormulariosCamposPerguntas>();
        }

        public byte IdCampo { get; set; }
        public string Campo { get; set; }
        public string Classe { get; set; }
        public bool? Obrigatorio { get; set; }

        public virtual ICollection<CandidatoCampos> CandidatoCampos { get; set; }
        public virtual ICollection<FormulariosCamposPerguntas> FormulariosCamposPerguntas { get; set; }
    }
}
