using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace hv.User
{
    public partial class contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con; 
        SqlCommand cmd;    

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
            if (txtName.Text.Trim() == "" || txtEmail.Text.Trim() == "" || txtPhone.Text.Trim() == "" || txtMessage.Text.Trim() == "")
            {
                Response.Write("<script>alert('Please fill all fields');</script>");
                return;
            }

            try
            {
                cmd = new SqlCommand("INSERT INTO ContactMessages(Name, Email, Phone, Message) VALUES('" +
                                      txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtMessage.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Message sent successfully!');</script>");
                clear();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
