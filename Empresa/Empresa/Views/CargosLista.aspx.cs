using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Empresa.Controllers;
using Empresa.Models;
namespace Empresa.Views
{
    public partial class CargosLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Cargo> lista = CargosController.ListarCargos();
            grv_lista.DataSource = lista.OrderBy(c => c.Nome);
            grv_lista.DataBind();
        }
    }
}