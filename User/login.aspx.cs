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

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (Session["user"] != null)
            {
                Response.Redirect("Webform1.aspx");
            }

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtunm.Text != null && txtpwd.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select * from car_tbl where Email='" + txtunm.Text + "' and Password='" + txtpwd.Text + "'", con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["user"] = txtunm.Text;
                    Session["UserLoggedIn"] = true;
                    Response.Redirect("Webform1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter Email and Password')</script>");
            }
        }
    }
}
   