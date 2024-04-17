using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Baja : System.Web.UI.Page
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

                    string queryString = "DELETE FROM [dbo].[UsuariosClase4] WHERE nombre = @nombre";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@nombre", TextBox1.Text);

                    command.ExecuteNonQuery();
                    Label2.Text = "Baja Correctamente";
                    
                }
                catch (Exception ex)
                {
                    Label2.Text = "No se encontro Usuario";
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}