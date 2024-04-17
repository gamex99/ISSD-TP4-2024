using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Nombre;
            string Clave;
            string Email;
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                try
                {
                    connection.Open();

                    string queryString = "SELECT [nombre], [clave], [email] FROM [dbo].[UsuariosClase4] WHERE [nombre] = @nombre";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@nombre", TextBox3.Text);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        Nombre = reader.GetString(0);
                        Clave = reader.GetString(1);
                        Email = reader.GetString(2);
                        TextBox1.Text = Clave;
                        TextBox2.Text = Email;
                        Label4.Text = "Cargado Correctamente";
                    }
                    else
                    {
                        Label4.Text = "No se encuentra Nombre";
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al obtener usuario: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                try
                {
                    connection.Open();

                    string queryString = "UPDATE [dbo].[UsuariosClase4] SET  [clave] = @claveNueva, [email] = @emailNuevo WHERE [nombre] = @nombre";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@nombre", TextBox3.Text);
                    command.Parameters.AddWithValue("@claveNueva", TextBox1.Text);
                    command.Parameters.AddWithValue("@emailNuevo", TextBox2.Text);

                    command.ExecuteNonQuery();

                    Label5.Text = "Modificado Correctamente el Nombre" + TextBox3.Text;
                }
                catch (Exception ex)
                {
                    Label5.Text = "No se modifico el Nombre" + TextBox3.Text;
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}