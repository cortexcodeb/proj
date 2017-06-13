using Empresa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Empresa.Controllers
{
    public class FuncionariosController : BaseController
    {
         static public void Adicionar(Funcionario Func)
        {
            if (Func != null)
            {
                contexto.Funcionarios.Add(Func);
                contexto.SaveChanges();
            }
        }

        static public void Excluir(Funcionario Func)
        {
            Func.Ativo = false;
            contexto.Entry(Func).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        static public void Editar(Funcionario Func)
        {
            contexto.Entry(Func).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        static public List<Funcionario> ListarFuncionariosAtivos()
        {
            return contexto.Funcionarios.Where(x => x.Ativo == true).ToList();
        }

        static public List<Funcionario> ListarNãoAtivos()
        {
            return contexto.Funcionarios.Where(x => x.Ativo == false).ToList();
        }

        static public Funcionario BuscarPorNome(string Func)
        {
            return contexto.Funcionarios.FirstOrDefault(x => x.Nome.Equals(Func));
        }
    }
}
}