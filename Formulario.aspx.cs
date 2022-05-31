using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSFUriasoft
{
    //Data Source=LAPTOP-DTE53JR1\SERVERJOHAN;Initial Catalog=uria;User ID=sa;Password=***********
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarjornada();    
                llenarDropsede();
                Textnumid.Text = "";
                Textids.Text = "";
            }
        }
        private void llenarDropsede()
        {
            try
            {
            SedeDrop.DataSource = Consultar("SELECT * FROM Sede");
            SedeDrop.DataTextField = "Nombre";
            SedeDrop.DataValueField = "ID";
            SedeDrop.DataBind();
            SedeDrop.Items.Insert(0, new ListItem("[Seleccionar Sede]", "0"));
            GradoDrop.Items.Insert(0, new ListItem("[Seleccionar Grado]", "0"));
            }
            catch (Exception )
            {
                SedeDrop.Items.Insert(0, new ListItem("[Seleccionar Sede]", "0"));
                SedeDrop.Items.Insert(0, new ListItem("Error no conexion", "0"));
                GradoDrop.Items.Insert(0, new ListItem("[Seleccionar Grado]", "0"));
                GradoDrop.Items.Insert(0, new ListItem("Error no conexion", "0"));
            }
        }
        protected void Registrar_Click1(object sender, EventArgs e)
        {
            string idg = Convert.ToString(GradoDrop.SelectedValue);
            string sd = Convert.ToString(SedeDrop.SelectedValue);
            string jor = JornadaDrop.SelectedItem.ToString();
            try
            {
                CXBDSQL BD = new CXBDSQL($@"sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");      
                bool ok=false, ok1, ok2, mm;
                ok = BD.EjecutaSQL($"INSERT INTO Acudiente VALUES('{Textnumid.Text}','{Textid.Text}','{TextNombre.Text}','{TextApellido.Text}','{Texttel.Text}','{Textcorreo.Text}')");
                mm = ok;
                ok1 = BD.EjecutaSQL($"INSERT INTO Aspirante VALUES('{Textids.Text}','{Texttids.Text}','{TextNoms.Text}','{TextApes.Text}','{Textfecs.Text}','{Texttels.Text}','{Textemas.Text}','{Textedads.Text}','{Textsexos.Text}','Preinscrit','{Textnumid.Text}')");
                mm = ok1;
                ok2 = BD.EjecutaSQL($"INSERT INTO Matricula VALUES('{Textids.Text}','{jor}','0','{Textids.Text}','{sd}','{idg}')");
                mm = ok2;
                if (ok == true && ok1 == true && ok2 == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", "openModal();", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", "openModal2();", true);
                }
                BD.Dispose();
            }
            catch (Exception )
            {

            }
        }
        public DataSet Consultar(string strSQL)
        {
            //Data Source=LAPTOP-DTE53JR1\SERVERJOHAN;Initial Catalog=uria;User ID=sa;Password=***********
            //Server = tcp:sqlsoft.database.windows.net,1433; Initial Catalog = BD1_Centro_Capacitacion; Persist Security Info = False; User ID = AdminJohan; Password = qwerty@12; MultipleActiveResultSets = False; Encrypt = True; TrustServerCertificate = False; Connection Timeout = 30;
            string strconn = $@"Server=tcp:sqlserverudi.database.windows.net,1433;Initial Catalog=SQLserver;Persist Security Info=False;User ID=udisqlserver;Password=23Juli01;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }

        protected void Sedeseleccionada(object sender, EventArgs e)
        {
            int Sedeid = Convert.ToInt32(SedeDrop.SelectedValue);
            GradoDrop.DataSource = Consultar("SELECT * FROM Grado WHERE IDSede="+Sedeid);
            GradoDrop.DataTextField = "Nombre";
            GradoDrop.DataValueField = "ID";
            GradoDrop.DataBind();
            GradoDrop.Items.Insert(0, new ListItem("[Seleccionar Grado]", "0"));
        }
        private void llenarjornada()
        {
            JornadaDrop.Items.Add("[Seleccionar Jornada]");
            JornadaDrop.Items.Add("Mañana");
            JornadaDrop.Items.Add("Tarde");
            
        }
    }
}