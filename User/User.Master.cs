using System;
using System.Web.UI.WebControls;

namespace hv.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                // User is logged in, show the Logout button
                btnUserAction.Text = "Logout";
            }
            else
            {
                // User is not logged in, show the Login button
                btnUserAction.Text = "Login";
            }
        }

        protected void btnUserAction_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                // If the button says "Logout", perform the logout action
                Session.Clear();
                Session.Abandon();
                Response.Redirect("index.aspx");
            }
            else
            {
                // If the button says "Login", redirect to the login page
                Response.Redirect("login.aspx");
            }
        }
    }
}