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
    public partial class CargosCadastros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_salvar_Click(object sender, EventArgs e)
        {
            Cargo cargo = new Cargo();
            cargo.Nome = txt_nome.Text;
            cargo.Descricao = txt_descricacao.Text;
            cargo.Ativo = true;
            CargosController.Adicionar(cargo);
            limparCampos();
        }

        protected void limparCampos()
        {
            txt_nome.Text = string.Empty;
            txt_descricacao.Text = string.Empty;
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            limparCampos();
        }
    }
}