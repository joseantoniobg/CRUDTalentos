using CRUDTalentos2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CRUDTalentos2.ViewModels
{
    public class CandidatoQuestionario
    {
        public Candidatos candidato { get; set; }
        public IList<FormulariosCamposPerguntas> questionario { get; set; }
        public IList<Perguntas> perguntas { get; set; }
        public IList<Respostas> respostas { get; set; }
        public IList<Campos> campos { get; set; }
        public IList<CandidatoCampos> camposCandidato { get; set; }
        public IList<CandidatosRespostas> respostasCandidato { get; set; }
    }
 }

