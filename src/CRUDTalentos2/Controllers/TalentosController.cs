using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using CRUDTalentos2.ViewModels;
using CRUDTalentos2.Models;
using Microsoft.AspNetCore.Http;
using System.IO;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace CRUDTalentos2.Controllers
{
    public class TalentosController : Controller
    {
        private TalentosContext DB = new TalentosContext();
        // GET: /<controller>/
        public IActionResult Index(int id)
        {
            CandidatoQuestionario dados = new CandidatoQuestionario();

            //dados.perguntas = DB.Perguntas.Join(DB.FormulariosCamposPerguntas,
            //                                    pergunta => pergunta.IdPergunta,
            //                                    formPerguntas => formPerguntas.IdPergunta,
            //                                    (pergunta, formPerguntas) => new { Pergunta = pergunta, FormPerguntas = formPerguntas }).Where(uniao => uniao.FormPerguntas.IdFormulario == 1).OrderBy(uniao => uniao.FormPerguntas.Ordem);

            dados.questionario = DB.FormulariosCamposPerguntas.Where(c => c.IdFormulario == 1).OrderBy(c => c.Ordem).ToList();
            dados.perguntas = DB.Perguntas.Where(p => DB.FormulariosCamposPerguntas.Any(c => c.IdPergunta == p.IdPergunta && c.IdFormulario == 1)).ToList();
            dados.respostas = DB.Respostas.Where(r => DB.Perguntas.Any(p => DB.FormulariosCamposPerguntas.Any(c => c.IdPergunta == p.IdPergunta && c.IdFormulario == 1) && p.IdPergunta == r.IdPergunta)).OrderBy(r => r.IdResposta).ToList();
            dados.campos = DB.Campos.Where(p => DB.FormulariosCamposPerguntas.Any(c => c.IdCampo == p.IdCampo && c.IdFormulario == 1)).OrderBy(c => c.IdCampo).ToList();
         
            if (id == 0)
            {

                dados.camposCandidato = new List<CandidatoCampos>();
                dados.respostasCandidato = new List<CandidatosRespostas>();

                foreach (Respostas r in dados.respostas)
                {
                    CandidatosRespostas cr = new CandidatosRespostas();

                    cr.IdCandidato = 0;
                    cr.IdReposta = r.IdResposta;
                    cr.Checked = false;

                    dados.respostasCandidato.Add(cr);
               
                }

                foreach (Campos c in dados.campos)
                {

                    CandidatoCampos cc = new CandidatoCampos();

                    cc.IdCandidato = 0;
                    cc.IdCampo= c.IdCampo;
                    cc.Resposta = null;

                    dados.camposCandidato.Add(cc);

                }

                dados.candidato = new Candidatos();
            }
            else
            {
                dados.camposCandidato = DB.CandidatoCampos.Where(cc => cc.IdCandidato == id).OrderBy(cc => cc.IdCampo).ToList();
                dados.respostasCandidato = DB.CandidatosRespostas.Where(rc => rc.IdCandidato == id).OrderBy(rc => rc.IdReposta).ToList();
                dados.candidato = DB.Candidatos.Where(c => c.IdCandidato == id).First();

            }

            return View(dados);

        }

        public IActionResult escolhe()
        {
            return View();
        }

        [HttpGet]
        public IActionResult buscaEmail()
        {
            return View(new Candidatos() { Email = "" });
        }

        [HttpPost]
        public IActionResult buscaEmail(Candidatos c)
        {
            try
            {
                c = DB.Candidatos.Where(cand => cand.Email == c.Email).First();
            }
            catch (InvalidOperationException)
            {
                return View(new Candidatos() { Email = "Não encontrado!" });
            }

            if (c != null)
            {
                return RedirectToAction("Index/" + c.IdCandidato);
            }else
            {
                return View();
            }
            
        }

        [HttpPost]
        public IActionResult Create(CandidatoQuestionario cq)
        {

            DB.Candidatos.Add(cq.candidato);

            foreach(CandidatosRespostas cr in cq.respostasCandidato)
            {
                  cr.IdCandidato = cq.candidato.IdCandidato;
                  DB.CandidatosRespostas.Add(cr);            
            }

            foreach (CandidatoCampos cc in cq.camposCandidato)
            {
                cc.IdCandidato = cq.candidato.IdCandidato;

                if (cc.Resposta == null)
                {
                    cc.Resposta = "";
                }

                DB.CandidatoCampos.Add(cc);
            }

            DB.SaveChanges();

            return View(cq.candidato);
        }

        public IActionResult listaCandidatos()
        {
            IList<Candidatos> candidatos = DB.Candidatos.OrderBy(c => c.Nome).ToList();

            return View(candidatos);

        }

        public IActionResult update(CandidatoQuestionario cq)
        {

            DB.Candidatos.Update(cq.candidato);

            DB.CandidatoCampos.RemoveRange(DB.CandidatoCampos.Where(cc => cc.IdCandidato == cq.candidato.IdCandidato));
            DB.CandidatosRespostas.RemoveRange(DB.CandidatosRespostas.Where(cr => cr.IdCandidato == cq.candidato.IdCandidato));

            foreach (CandidatosRespostas cr in cq.respostasCandidato)
            {
                cr.IdCandidato = cq.candidato.IdCandidato;
                DB.CandidatosRespostas.Add(cr);
            }

            foreach (CandidatoCampos cc in cq.camposCandidato)
            {
                cc.IdCandidato = cq.candidato.IdCandidato;

                if (cc.Resposta == null)
                {
                    cc.Resposta = "";
                }

                DB.CandidatoCampos.Add(cc);
            }

            DB.SaveChanges();

            return View("Create", cq.candidato);
        }

        public IActionResult delete(int id)
        {

            DB.CandidatoCampos.RemoveRange(DB.CandidatoCampos.Where(cc => cc.IdCandidato == id));
            DB.CandidatosRespostas.RemoveRange(DB.CandidatosRespostas.Where(cr => cr.IdCandidato == id));

            DB.Candidatos.Remove(DB.Candidatos.Where(c=> c.IdCandidato == id).First());

            DB.SaveChanges();

            return RedirectToAction("listaCandidatos");
        }

    }
}
