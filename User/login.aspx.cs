using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.User
{
    public partial class login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtunm.Text;
            string password = txtpwd.Text;

            if (email == "" || password == "")
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter both email and password.";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(s))
                {
                    con.Open();

                    // This is your original query method (string concatenation).
                    SqlCommand cmd = new SqlCommand("select count(*) from stu_tbl where Email='" + email + "' and Password='" + password + "'", con);

                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    // in login.aspx.cs
                    // ...
                    if (count > 0)
                    {
                        Session["username"] = email;
                        Session["UserType"] = "User";
                        Response.Redirect("~/User/index.aspx"); 
                    }
                    // ...
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Invalid email or password.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}