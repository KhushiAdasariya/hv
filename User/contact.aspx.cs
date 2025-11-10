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
    public partial class contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con; // Connection
        SqlDataAdapter da; // Container
        DataSet ds; // Run-time container
        SqlCommand cmd; // Insert, update, delete

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtName.Text = " ";
            txtEmail.Text = " ";
            txtPhone.Text = " ";
            txtMessage.Text = " ";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text == "Send Message")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO ContactMessages(Name, Email, Phone, Message) VALUES('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtMessage.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("index.aspx"); // Redirect to home page after submission
            }
        }
    }
}
