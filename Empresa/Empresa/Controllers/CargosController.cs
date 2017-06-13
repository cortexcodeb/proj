using Empresa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Empresa.Controllers
{
    public class CargosController : BaseController
    {
        static public void Adicionar(Cargo Cargo)
        {
            if (Cargo != null)
            {
                contexto.Cargos.Add(Cargo);
                contexto.SaveChanges();
            }
        }

        static public void Excluir(Cargo Cargo)
        {
            Cargo.Ativo = false;
            contexto.Entry(Cargo).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        static public void Editar(Cargo Cargo)
        {
            contexto.Entry(Cargo).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        static public List<Cargo> ListarCargos()
        {
            return contexto.Cargos.OrderBy(x => x.Nome).ToList();
        }

        static public Cargo BuscarPorNome(string Cargo)
        {
            return contexto.Cargos.FirstOrDefault(x => x.Nome.Equals(Cargo.Nome));
        }
    }
}