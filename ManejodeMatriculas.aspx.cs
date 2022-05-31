using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSFUriasoft
{
    public partial class ManejodeMatriculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sede.Items.Insert(0, new ListItem("[Selccionar Sede]", "0"));
            Grado.Items.Insert(0, new ListItem("[Selccionar Grado]", "0"));
            Cursos.Items.Insert(0, new ListItem("[Selccionar Curso]", "0"));
            jornada.Items.Add("[Selccionar Jornada]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
            Listestudiantes.Items.Add("[Nombre estudiante]");
        }
    }
}