using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_TP1
{
    public partial class RegistrarAerolinea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultado.Text = "";
        }

        protected void registrar_Click(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                try
                {
                    connection.Open();

                    string queryString = "INSERT INTO [dbo].[Aerolineas] ([nombre]) VALUES (@nombre)";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@nombre", tbnombre.Text);
                    

                    command.ExecuteNonQuery();

                    resultado.Text = "Registrado Correctamente";
                }
                catch (Exception ex)
                {
                        resultado.Text = "Error " + ex.Message;
                    
                }
                finally
                {
                    connection.Close();
                }
            }
           
        }
    }
}