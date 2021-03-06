using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebValidation
{   public partial class Login : System.Web.UI.Page
    {   protected void Page_Load(object sender, EventArgs e) { }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {   SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=BIBLIOTHEQUE;Integrated Security=True;");
            SqlCommand com = new SqlCommand("dbo.Verifier", conn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@user", username.Value.ToLower());
            com.Parameters.AddWithValue("@pass", password.Value);
            SqlParameter a = new SqlParameter("@i", SqlDbType.Bit);
            a.Direction = ParameterDirection.ReturnValue;
            com.Parameters.Add(a);
            try
            {   if (conn.State == ConnectionState.Closed) conn.Open();
                com.ExecuteNonQuery();
                if (bool.Parse(com.Parameters[2].Value.ToString()) == true)
                {   Session.Add("username", username.Value);
                    Response.Redirect("Profil.aspx");
                } else { erreur.Text = "You're not a User"; }
            } catch (Exception ex) { erreur.Text = ex.Message; }
            finally { if (conn.State == ConnectionState.Open) conn.Close(); }
        }
    }
}