using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Empresa.Models;
using Empresa.Controllers;
namespace Empresa.Views
{
    public partial class FuncionariosLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Funcionario> listar = FuncionariosController.ListarFuncionariosAtivos();
            grv_lista.DataSource = listar.OrderBy(c=> c.Id);
            grv_lista.DataBind();
        }
    }
}