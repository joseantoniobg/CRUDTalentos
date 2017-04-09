using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class Respostas
    {
        public Respostas()
        {
            CandidatosRespostas = new HashSet<CandidatosRespostas>();
        }

        public short IdResposta { get; set; }
        public string Resposta { get; set; }
        public byte? IdPergunta { get; set; }

        public virtual ICollection<CandidatosRespostas> CandidatosRespostas { get; set; }
        public virtual Perguntas IdPerguntaNavigation { get; set; }
    }
}
