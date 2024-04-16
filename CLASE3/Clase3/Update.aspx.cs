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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            conexion.Open();
            string consultUser = $"select id, username, password from usuarios where id = {DropDownList1.SelectedValue}";
            SqlCommand comando = new SqlCommand(consultUser, conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if(registro.Read())
            {
                TextBox1.Text = registro["username"].ToString();
                TextBox2.Text = registro["password"].ToString();
            }
            conexion.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "" && TextBox2.Text != "")
            {
                string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                string id = DropDownList1.SelectedValue.ToString();
                string modifyUser = $"update Usuarios set username ='{TextBox1.Text}', password = '{TextBox2.Text}' where id = {id}";
                SqlCommand comando = new SqlCommand(modifyUser, conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                DropDownList1.DataBind();//para que se actualice SQLDataSource
            }
        }
    }
}