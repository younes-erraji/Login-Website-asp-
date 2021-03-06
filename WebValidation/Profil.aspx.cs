using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebValidation
{   public partial class Profil : System.Web.UI.Page
    {   protected void Page_Load(object sender, EventArgs e)
        {   if (Session["username"] is null)
            { Response.Redirect("/Login.aspx"); }
        }
        protected void ButtonOUT_Click(object sender, EventArgs e)
        {   Session["username"] = null;
            Response.Redirect("/Login.aspx");
        }
    }
}