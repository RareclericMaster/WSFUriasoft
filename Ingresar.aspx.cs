using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WSFUriasoft
{
    public partial class Contact : Page
    {
        CXBDSQL BD = new CXBDSQL($@"tcp:sqlserverudi.database.windows.net,1433", "SQLserver", "udisqlserver", "23Juli01");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void sesion_Click(object sender, EventArgs e)
        {
            string strconn = $@"Server=tcp:sqlserverudi.database.windows.net,1433;Initial Catalog=SQLserver;Persist Security Info=False;User ID=udisqlserver;Password=23Juli01;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            SqlConnection con = new SqlConnection(strconn);
            SqlCommand cmd = new SqlCommand("sp_validar", con)
            {
                CommandType=CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario",SqlDbType.VarChar,30).Value= usuario.Text;
            cmd.Parameters.Add("@Contrasena", SqlDbType.VarChar, 50).Value= contraseña.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (BD.identificarol(usuario.Text, contraseña.Text)== "Psicoorientador")
                {
                    Session["Uslog"] = usuario.Text;
                    Response.Redirect("InicioPsicoorientador.aspx");
                }
                else if (BD.identificarol(usuario.Text, contraseña.Text) == "Coordinador")
                {
                    Session["Uslog"] = usuario.Text;
                    Response.Redirect("InicioCoordinador.aspx");
                }
                else
                {
                    Session["Uslog"] = usuario.Text;
                    Response.Redirect("Iniciosecretaria.aspx");
                }
            }
        }
    }
}