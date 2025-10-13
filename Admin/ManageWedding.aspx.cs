using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class ManageWedding : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                string query = "SELECT BookingID, FullName, MobileNo, Email, Gender, City, State, EventType, EventDate, EventTime, VenueName, Guests, Theme, RoomsRequired, Rooms, CheckInDate, CheckOutDate, CreatedDate FROM EventBooking";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string bookingId = GridView1.SelectedRow.Cells[0].Text;
            Response.Write("<script>alert('Selected Booking ID: " + bookingId + "');</script>");
        }
    }
}