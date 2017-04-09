using System;
using System.Collections.Generic;

namespace CRUDTalentos2.Models
{
    public partial class Candidatos
    {
        public Candidatos()
        {
            CandidatoCampos = new HashSet<CandidatoCampos>();
            CandidatosRespostas = new HashSet<CandidatosRespostas>();
        }

        public int IdCandidato { get; set; }
        public string Cpf { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }

        public virtual ICollection<CandidatoCampos> CandidatoCampos { get; set; }
        public virtual ICollection<CandidatosRespostas> CandidatosRespostas { get; set; }
    }
}
