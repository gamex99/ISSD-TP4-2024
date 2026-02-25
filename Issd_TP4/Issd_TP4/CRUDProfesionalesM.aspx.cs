using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Issd_TP4
{
    public partial class CRUDProfesionalesM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert(object sender, CommandEventArgs e)
        {
            // 1. Le decimos al SqlDataSource que ejecute el comando INSERT que configuraste
            // 'ctl08' es el ID que tenías en tu código, cámbialo si le pusiste otro nombre (ej. dsProfesionales)
            dsProfesionales.Insert();

            // 2. Opcional: Limpiar los campos después de guardar
            tbnombre.Text = "";
            tbespecialidad.Text = "";

            // 3. Opcional: Refrescar la grilla para ver el nuevo dato
            dsProfesionales.DataBind();
        }
    }
}