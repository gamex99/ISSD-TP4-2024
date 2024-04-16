using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase3
{
    public partial class Read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            conexion.Open();
            string consultUsers = $"select id, username, password from usuarios";
            SqlCommand comando = new SqlCommand(consultUsers, conexion);
            //SqlDataReader register = comando.ExecuteReader();
            //while(register.Read())
            //{
            //    Label1.Text += register["id"].ToString() + register["username"].ToString() + register["password"].ToString() + "-";
            //}
            SqlDataAdapter sda = new SqlDataAdapter(comando);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Label1.Text += dr[0].ToString() + "-";
                Label1.Text += dr[1].ToString() + "-";
                Label1.Text += dr[2].ToString() + "-";
            }
            conexion.Close();
        }
    }
}