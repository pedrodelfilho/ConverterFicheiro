using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using Models;

namespace DAL
{
    public class UsuarioDAL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["BDSistemaFullConnectionString"].ConnectionString;

        public bool AutenticarUsuario(string usuario, string senha)
        {
            bool autenticado = false;
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            string sql = "SELECT COUNT(*) FROM Usuarios WHERE DsLogin = @login AND DsSenha = @senha";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@login", usuario);
            cmd.Parameters.AddWithValue("@senha", senha);

            autenticado = Convert.ToInt32(cmd.ExecuteScalar()) == 1;

            conn.Close();

            return autenticado;
        }

        public void InserirUsuario(Usuario objUsuario)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            string sql = "INSERT INTO Usuarios VALUES (@login, @senha)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@login", objUsuario.DsLogin);
            cmd.Parameters.AddWithValue("@senha", objUsuario.DsSenha);

            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
