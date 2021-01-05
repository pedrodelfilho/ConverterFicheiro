using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using DAL;

namespace TorinoWebUI
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = new UsuarioDAL().AutenticarUsuario(Login1.UserName, Cripto.GetMD5Hash(Login1.Password));

            Label1.Text = Convert.ToString(Request.IsAuthenticated);

            if (Request.IsAuthenticated)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}