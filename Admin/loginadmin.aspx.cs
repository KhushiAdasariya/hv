using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class loginadmin : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;

        private const string AdminEmail = "admin@example.com";
        private const string AdminPassword = "admin123";
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

        }
        void getcon()
        {
            if (con == null)
                con = new SqlConnection(s);

            if (con.State == ConnectionState.Closed)
                con.Open();
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtuse.Text;
            string password = txtped.Text;

            if (email == "admin@example.com" && password == "admin123")
            {
                Session["UserType"] = "Admin";
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid credentials";
            }

        }
    }
}
