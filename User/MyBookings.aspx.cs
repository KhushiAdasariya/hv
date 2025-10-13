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
    public partial class MyBookings : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookings();
            }
        }
        private void BindBookings()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT Id, FullName, MobileNo, Email, EventType, EventDate, EventTime, VenueName, Guests, Theme, CreatedDate FROM EventBooking ORDER BY CreatedDate DESC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }
    }
}