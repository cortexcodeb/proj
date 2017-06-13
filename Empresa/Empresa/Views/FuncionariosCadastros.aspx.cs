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
    public partial class FuncionariosCadastros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_salvar_Click(object sender, EventArgs e)
        {
            Funcionario func = new Funcionario();
            func.Nome = txt_nome.Text;
            func.Telefone = txt_telefone.Text;
            func.Cargo= CargosController.BuscarPorNome(txt_cargo.Text);
            func.Ativo = true;
            FuncionariosController.Adicionar(func);
            limparCampos();
        }

        protected void limparCampos()
        {
            txt_cargo.Text = string.Empty;
            txt_nome.Text = string.Empty;
            txt_telefone.Text = string.Empty;
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            limparCampos();
        }
    }
}