using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSFUriasoft
{
    public partial class Admisiones : System.Web.UI.Page
    {
        
        //CXBDSQL BD = new CXBDSQL($@"tcp:sqlsoft.database.windows.net,1433", "BD1_Centro_Capacitacion", "AdminJohan", "qwerty@12");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uslog"] == null)
            {
                Response.Redirect("Ingresar.aspx");
            }
            else if (Session["Uslog"].ToString() != "Psicoorientador")
            {
                Response.Redirect("Ingresar.aspx");
            }
            Panel1.Visible = false;
            if (!IsPostBack)
            {
                llenarsede();
            }
            
        }

        protected void Sede_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Sedeid = Convert.ToInt32(Sede.SelectedValue);
            Grado.DataSource = consultar("SELECT * FROM Grado WHERE IDSede=" + Sedeid);
            Grado.DataTextField = "Nombre";
            Grado.DataValueField = "ID";
            Grado.DataBind();
            Grado.Items.Insert(0, new ListItem("[Grado]", "0"));

        }
        private void llenarsede()
        {
            try
            {
                Sede.DataSource = consultar("SELECT * FROM Sede");
                Sede.DataTextField = "Nombre";
                Sede.DataValueField = "ID";
                Sede.DataBind();
                Sede.Items.Insert(0, new ListItem("[Sede]", "0"));
                Grado.Items.Insert(0, new ListItem("[Grado]", "0"));
                jornada.Items.Add("[Selccionar]");
            }
            catch (Exception)
            {
                Sede.Items.Insert(0, new ListItem("[Sede]", "0"));
                Sede.Items.Insert(0, new ListItem("Error no conexion", "1"));
                Grado.Items.Insert(0, new ListItem("[Grado]", "0"));
                Grado.Items.Insert(0, new ListItem("Error no conexion", "1"));
                jornada.Items.Insert(0, new ListItem("[jornada]", "0"));
                jornada.Items.Insert(0, new ListItem("Error no conexion", "1"));
                
            }
        }
        public DataSet consultar(string strSQL)
        {
            string strconn = @"Server=tcp:sqlserverudi.database.windows.net,1433;Initial Catalog=SQLserver;Persist Security Info=False;User ID=udisqlserver;Password={23Juli01};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        protected void Seleccionar_Click(object sender, EventArgs e)
        {
            if (Listestudiantes.SelectedIndex>-1)
            {
                Panel1.Visible = true;
                consulta();
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            llenarGen();
        }

        protected void Grado_SelectedIndexChanged(object sender, EventArgs e)
        {
            jornada.Items.Clear();
            jornada.Items.Add("[Seleccionar Jornada]");
            jornada.Items.Add("Mañana");
            jornada.Items.Add("Tarde");
        }
        void llenarGen()
        {
            Listestudiantes.Items.Clear();
            CXBDSQL BD = new CXBDSQL($@"sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");
            string x,y2;
            int Sedeid = Convert.ToInt32(Sede.SelectedValue);
            int gradoid = Convert.ToInt32(Grado.SelectedValue);
            string jor = jornada.SelectedItem.ToString();
            string sql = $"Select a.Nombre+' '+a.Apellido AS Nombre_Completo, a.Numero_Identificacion AS id from Matricula m JOIN Aspirante a ON a.Numero_Identificacion = m.Identificacion_Aspirante WHERE m.Jornada='{jor}' AND m.IDSede='{Sedeid}' And m.IDGrado='{gradoid}'";
            try
            {
                BD.EjecutaSQL(sql);
                while (BD.sql_datareader.Read())
                {
                    x = (string)BD.sql_datareader["Nombre_Completo"];
                    var y = BD.sql_datareader["id"];
                    y2 = y.ToString();
                    Listestudiantes.Items.Insert(0, new ListItem(x, y2));
                }

            }
            catch (Exception)
            {
              
            }
            finally
            {
                BD.Dispose();
            }
        }
        void consulta()
        {
            CXBDSQL BD = new CXBDSQL($@"sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");
            try
            {
                string ced = Listestudiantes.SelectedValue;
                string sql = $"SELECT a.Nombre AS AN,a.Apellido AS AA,a.Tipo_identificacion AS TI,a.Numero_Identificacion AS NI,a.Sexo AS SE,a.Estado AS ES,s.Nombre AS SN,g.Nombre AS GN FROM Aspirante a JOIN Matricula m ON a.Numero_Identificacion = m.Identificacion_Aspirante JOIN Sede s ON s.ID=m.IDSede JOIN Grado g ON m.IDGrado=g.ID WHERE a.Numero_Identificacion='{ced}'";
                BD.EjecutaSQL(sql);
                while (BD.sql_datareader.Read())
                {
                    Nombre.Text = BD.sql_datareader["AN"].ToString();
                    apellido.Text = BD.sql_datareader["AA"].ToString();
                    tipoid.Text ="Tipo: "+ BD.sql_datareader["TI"].ToString();
                    Numero.Text = "Numero: "+BD.sql_datareader["NI"].ToString();
                    sexo.Text = "Sexo: " + BD.sql_datareader["SE"].ToString();
                    Estado.Text = BD.sql_datareader["ES"].ToString();
                    Grados.Text = "Grado: "+BD.sql_datareader["GN"].ToString();
                    Sedes.Text = BD.sql_datareader["SN"].ToString();
                }
            }
            catch
            {
                Nombre.Text = "No funciono";
                apellido.Text = "No";
            }
            finally
            {
                BD.Dispose();
            }
        }

        protected void Aprobar_Click(object sender, EventArgs e)
        {
            try
            {
                CXBDSQL BD = new CXBDSQL($@"sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");
                string ced = Listestudiantes.SelectedValue;
                bool ok;
                ok = BD.EjecutaSQL($"UPDATE Matricula set Observacion= '{observaciones.Text}' WHERE ID='{ced}'");
                ok = BD.EjecutaSQL($"UPDATE Aspirante set Estado= 'Prematri' WHERE Numero_Identificacion='{ced}'");
                BD.Dispose();
            }
            catch (Exception)
            {

            }
        }

        protected void Rechazar_Click(object sender, EventArgs e)
        {

        }
    }
}