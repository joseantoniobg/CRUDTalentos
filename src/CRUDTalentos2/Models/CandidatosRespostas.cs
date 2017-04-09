using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class CandidatosRespostas
    {
        public int IdCandidatoResposta { get; set; }
        public int IdCandidato { get; set; }
        public short? IdReposta { get; set; }
        public bool Checked { get; set; }

        public virtual Candidatos IdCandidatoNavigation { get; set; }
        public virtual Respostas IdRepostaNavigation { get; set; }
    }
}
