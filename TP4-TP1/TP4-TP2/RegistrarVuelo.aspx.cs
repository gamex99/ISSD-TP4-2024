using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_TP2
{
    public partial class RegistrarVuelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty)
            {
                SqlDataSource2.Insert();
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = "idAerolinea = " + DropDownList2.SelectedValue;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = string.Empty;
            SqlDataSource2.FilterParameters.Clear();
        }
    }
}