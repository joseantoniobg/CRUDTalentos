using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class CandidatoCampos
    {
        public int IdCandidatoCampos { get; set; }
        public int IdCandidato { get; set; }
        public byte IdCampo { get; set; }
        public string Resposta { get; set; }

        public virtual Campos IdCampoNavigation { get; set; }
        public virtual Candidatos IdCandidatoNavigation { get; set; }
    }
}
