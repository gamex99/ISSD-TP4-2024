using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TP4_TP1
{
    public partial class RegistrarVuelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

        }

        protected void dropaerolineas_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            int id_seleccion = dropdown.SelectedIndex ;
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                try
                {
                    connection.Open();

                    string queryString = "INSERT INTO [dbo].[Vuelos]         ([vuelo]         ,[idAerolinea])     VALUES           (@numero           ,@id_aero)";
                    SqlCommand command = new SqlCommand(queryString, connection);

                    command.Parameters.AddWithValue("@numero", tbvuelo.Text);
                    command.Parameters.AddWithValue("id_aero", id_seleccion);


                    command.ExecuteNonQuery();

                    lbresultado.Text = "Registrado Correctamente" + id_seleccion;
                    
                }
                catch (Exception ex)
                {
                    lbresultado.Text = "Error " + ex.Message;

                }
                finally
                {
                    connection.Close();
                }
            }
            }


        }
    }
