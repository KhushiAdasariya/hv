using System;
using System.Configuration;
using System.Data.SqlClient;

namespace hv.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardData();
            }
        }

        void LoadDashboardData()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(s))
                {
                    con.Open();

                    // Get Total Users from stu_tbl
                    SqlCommand cmdUsers = new SqlCommand("SELECT COUNT(*) FROM stu_tbl", con);
                    int totalUsers = Convert.ToInt32(cmdUsers.ExecuteScalar());
                    lblTotalUsers.Text = totalUsers.ToString();

                    // Get Total Bookings from Bookings table
                    SqlCommand cmdBookings = new SqlCommand("SELECT COUNT(*) FROM Bookings", con);
                    int totalBookings = Convert.ToInt32(cmdBookings.ExecuteScalar());
                    lblTotalBookings.Text = totalBookings.ToString();

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                lblTotalUsers.Text = "Error";
                lblTotalBookings.Text = "Error";
                Response.Write("<script>alert('Database Error: " + ex.Message + "');</script>");
            }
        }
    }
}
