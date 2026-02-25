using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Issd_TP4
{
    public partial class CRUDTurnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            SqlTurnos.Insert();

            // 2. Limpiar los controles para un nuevo ingreso
            tbfecha.Text = "";
            tbmotivo.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

            // 3. Opcional: Refrescar el GridView para ver el nuevo turno inmediatamente
            GridView1.DataBind();
            */
            
                // 1. Validar y formatear la fecha para evitar el error de SQL
                if (!string.IsNullOrEmpty(tbfecha.Text))
                {
                    // El formato de DateTimeLocal es "yyyy-MM-ddTHH:mm"
                    // Lo convertimos a un formato estándar de SQL
                    DateTime fechaValida = DateTime.Parse(tbfecha.Text);
                    SqlTurnos.InsertParameters["fecha"].DefaultValue = fechaValida.ToString("yyyy-MM-dd HH:mm:ss");
                }

                // 2. Ejecutar la inserción
                SqlTurnos.Insert();

                // 3. Limpiar los controles (IMPORTANTE: usá los IDs exactos de tus controles)
                tbfecha.Text = "";
                tbmotivo.Text = "";
                DropDownList1.SelectedIndex = 0; // Profesional
                DropDownList2.SelectedIndex = 0; // Paciente

                // 4. Refrescar la grilla para ver el cambio
                GridView1.DataBind();

                // Opcional: podrías mostrar un mensaje de éxito
            
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 1. Obtener la fila seleccionada
            GridViewRow fila = GridView1.SelectedRow;

            // 2. Cargar el Motivo (celda 3 según tu SELECT)
            // El índice de Cells depende del orden de tus columnas en el GridView
            tbmotivo.Text = fila.Cells[3].Text;

            // 3. Cargar la Fecha
            // Para el TextBox DateTimeLocal, el formato debe ser yyyy-MM-ddTHH:mm
            DateTime fecha = DateTime.Parse(fila.Cells[2].Text);
            tbfecha.Text = fecha.ToString("yyyy-MM-ddTHH:mm");

            // 4. Seleccionar Profesional y Paciente en los DropDownList
            // Usamos DataKeys para obtener los IDs que no se ven en la grilla
            string idProf = GridView1.SelectedDataKey.Values["idProfesional"].ToString();
            string idPac = GridView1.SelectedDataKey.Values["idPaciente"].ToString();

            DropDownList1.SelectedValue = idProf; // Profesional
            DropDownList2.SelectedValue = idPac;  // Paciente

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedValue != null)
            {
                
                    // --- ARREGLO DE FECHA ---
                    if (!string.IsNullOrEmpty(tbfecha.Text))
                    {
                        // Convertimos el texto del TextBox a un objeto DateTime real
                        DateTime fechaValida = DateTime.Parse(tbfecha.Text);
                        // Lo pasamos al parámetro del SqlDataSource en formato estándar SQL
                        SqlTurnos.UpdateParameters["fecha"].DefaultValue = fechaValida.ToString("yyyy-MM-dd HH:mm:ss");
                    }
                    // ------------------------

                    // Ejecutamos la actualización
                    SqlTurnos.Update();

                    // Limpieza y refresco
                    tbmotivo.Text = "";
                    tbfecha.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    GridView1.DataBind();
                    GridView1.SelectedIndex = -1;

                    
                
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                    // 2. Ejecutamos el DeleteCommand del SqlDataSource
                    SqlTurnos.Delete();

                    // 3. Limpiamos los controles para que no queden los datos del turno borrado
                    tbmotivo.Text = "";
                    tbfecha.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;

                    // 4. Refrescamos la grilla para que el turno desaparezca de la lista
                    GridView1.DataBind();
                    GridView1.SelectedIndex = -1; // Quitamos la selección

                    // Opcional: Mensaje de confirmación
                    // Response.Write("<script>alert('Turno eliminado correctamente');</script>");
                
        }
    }
}