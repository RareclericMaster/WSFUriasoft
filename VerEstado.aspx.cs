using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSFUriasoft
{
    public partial class VerEstado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool t = false;
            try
            {
                CXBDSQL BD = new CXBDSQL($@"sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");
                string sql = $"SELECT * FROM Aspirante WHERE Numero_Identificacion='{numid.Text}' AND Fecha_Expedicion='{fechaex.Text}'";
                BD.EjecutaSQL(sql);
                while (BD.sql_datareader.Read())
                {
                    Nombre.Text = BD.sql_datareader["Nombre"].ToString();
                    apellido.Text = BD.sql_datareader["Apellido"].ToString();
                    tipoid.Text = BD.sql_datareader["Tipo_identificacion"].ToString();
                    Numero.Text = BD.sql_datareader["Numero_Identificacion"].ToString();
                    sexo.Text ="Sexo: "+ BD.sql_datareader["Sexo"].ToString();
                    Estado.Text = BD.sql_datareader["Estado"].ToString();
                    t = true;
                }
            }
            catch
            {
                Nombre.Text = "No funciono";
                apellido.Text = "No";
            }
            finally
            {
                if (t==false)
                {
                    Nombre.Text = "No funciono";
                    apellido.Text = "No";
                }
            }
        }
    }
}