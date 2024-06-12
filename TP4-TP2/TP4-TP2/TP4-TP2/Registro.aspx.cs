using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_TP2
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["contrasena"];
            string valorLabel = cookie != null ? cookie.Value : "Sin valor";
            lbcookie.Text = valorLabel;
            if (this.Session["usuario"] != null)
            {
                lbsession.Text = Session["usuario"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // HttpCookie cookie1 = new HttpCookie("nombreCookie", "valorCookie");
            if (tbcontrasena.Text != string.Empty)
            {
                HttpCookie cookie2 = new HttpCookie("contrasena", tbcontrasena.Text);
                DateTime exp = DateTime.Now.AddSeconds(300000);
                //cookie2.Expires = exp;
                Response.Cookies.Add(cookie2);
            }
            //Response.Cookies.Add(cookie1);

            this.Session["usuario"] = tbusername.Text;
            Response.Redirect(Request.RawUrl);
        }
    }
}