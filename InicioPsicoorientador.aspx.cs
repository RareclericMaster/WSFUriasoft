using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSFUriasoft
{
    public partial class InicioPsicoorientador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uslog"]== null)
            {
                Response.Redirect("Ingresar.aspx");
            }
            else if (Session["Uslog"].ToString() != "Psicoorientador")
            {
                Response.Redirect("Ingresar.aspx");
            }
        }

        protected void Cerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("Uslog");
            Response.Redirect("Ingresar.aspx");
        }
    }
}