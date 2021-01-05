using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using Models;

namespace TorinoWebUI
{
    public partial class frmAdicionarUser : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            Usuario objUsuario = new Usuario();
            objUsuario.DsLogin = txtDsLogin.Text;
            objUsuario.DsSenha = Cripto.GetMD5Hash(txtDsSenha.Text);

            UsuarioDAL uDAL = new UsuarioDAL();
            uDAL.InserirUsuario(objUsuario);

            lblMensagem.Text = "Usuário inserido com sucesso.";

        }
    }
}