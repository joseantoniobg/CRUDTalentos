using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class FormulariosCamposPerguntas
    {
        public int IdFormularioCampoResposta { get; set; }
        public byte IdFormulario { get; set; }
        public byte? IdCampo { get; set; }
        public byte? IdPergunta { get; set; }
        public byte Ordem { get; set; }

        public virtual Campos IdCampoNavigation { get; set; }
        public virtual Formularios IdFormularioNavigation { get; set; }
        public virtual Perguntas IdPerguntaNavigation { get; set; }
    }
}
