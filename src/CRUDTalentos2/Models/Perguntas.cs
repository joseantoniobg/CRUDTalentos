using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class Perguntas
    {
        public Perguntas()
        {
            FormulariosCamposPerguntas = new HashSet<FormulariosCamposPerguntas>();
            Respostas = new HashSet<Respostas>();
        }

        public byte IdPergunta { get; set; }
        public string Pergunta { get; set; }
        public byte? Tipo { get; set; }
        public byte? Exibicao { get; set; }
        public bool? Obrigatorio { get; set; }

        public virtual ICollection<FormulariosCamposPerguntas> FormulariosCamposPerguntas { get; set; }
        public virtual ICollection<Respostas> Respostas { get; set; }
    }
}
