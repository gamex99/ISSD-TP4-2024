using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase3
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "" && TextBox2.Text != "")
            {
                string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                string addUser = "INSERT INTO [dbo].[Usuarios] (username, password) VALUES (@username, @password)";
                SqlCommand comando = new SqlCommand (addUser, conexion);
                comando.Parameters.AddWithValue("@username", TextBox1.Text.ToString()); // Implement proper sanitization
                comando.Parameters.AddWithValue("@password", TextBox2.Text.ToString()); // Implement proper sanitization
                comando.ExecuteNonQuery();
                conexion.Close();
            }
        }
    }
}