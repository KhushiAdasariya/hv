using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace hv.User
{
    public partial class register : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con; //Connection
        SqlDataAdapter da; //Container
        DataSet ds; //run time container
        SqlCommand cmd; //insert update delete
        string fnm;
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
            txtunm.Text = " ";
            txtnm.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            if (Button1.Text == "Register")
            {
                getcon();
                cmd = new SqlCommand("insert into stu_tbl(Name,Gender,Mobile_no,Email,Password,Confirm_Password,City,State)" + "Values('" + txtnm.Text + "','" + rdbgen.Text + "','" + txtmn.Text + "','" + txtunm.Text + "','" + txtpwd.Text + "','" + txtcpas.Text + "','" + dblct.SelectedValue + "','" + ddl.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("index.aspx"); // redirect to home or user dashboard


            }
        }
    }
}