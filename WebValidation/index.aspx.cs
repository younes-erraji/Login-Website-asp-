using System;
using System.Data;
using System.Data.SqlClient;
namespace WebValidation
{   public partial class index : System.Web.UI.Page
    {   protected void Page_Load(object sender, EventArgs e) { }
        protected void ButtonOK_Click(object sender, EventArgs e)
        {   SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=BIBLIOTHEQUE;Integrated Security=True;");
            SqlCommand com = new SqlCommand("InsertUtilisateurs", conn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@user", TextUsername.Text.ToLower());
            com.Parameters.AddWithValue("@pass", TextConfirmation.Text);
            try
            {   if (conn.State == ConnectionState.Closed) conn.Open();
                com.ExecuteNonQuery();
            } catch(Exception ex) { ERROR.Text = ex.Message; }
            finally { if (conn.State == ConnectionState.Open) conn.Close(); }
        }
        protected void ButtonVer_Click(object sender, EventArgs e)
        {   SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=BIBLIOTHEQUE;Integrated Security=True;");
            SqlCommand com = new SqlCommand("dbo.Verifier", conn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@user", TextUsername.Text.ToLower());
            com.Parameters.AddWithValue("@pass", TextConfirmation.Text);
            SqlParameter a = new SqlParameter("@i", SqlDbType.Bit);
            a.Direction = ParameterDirection.ReturnValue;
            com.Parameters.Add(a);
            try
            {   if (conn.State == ConnectionState.Closed) conn.Open();
                com.ExecuteNonQuery();
                ERROR.Text = com.Parameters[2].Value.ToString();
            } catch (Exception ex) { ERROR.Text = ex.Message; }
            finally { if (conn.State == ConnectionState.Open) conn.Close(); }
        }
    }
}