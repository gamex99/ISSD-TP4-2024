using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Claims;

namespace WebApplication1
{
    public partial class Alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;


            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                try
                {
                    connection.Open();

                    string queryString = "INSERT INTO [dbo].[UsuariosClase4] ([nombre], [clave], [email]) VALUES (@nombre, @clave, @email)";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@nombre", TextBox1.Text);
                    command.Parameters.AddWithValue("@clave", TextBox2.Text);
                    command.Parameters.AddWithValue("@email", TextBox3.Text);

                    command.ExecuteNonQuery();

                    Console.WriteLine("Usuario insertado correctamente.");
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al insertar usuario: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
            Label4.Text = "Cargado Correctamente";

        }

    }
}