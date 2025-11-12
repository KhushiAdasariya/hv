using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class ManageWedding : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
            }
        }

        void GetCon()
        {
            con = new SqlConnection(s);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        void FillGrid()
        {
            GetCon();
            da = new SqlDataAdapter("SELECT BookingID, FullName, MobileNo, Email, EventType, EventDate, VenueName, Guests, City, State, Theme, Rooms, CreatedDate FROM EventBooking ORDER BY CreatedDate DESC", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            FillGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string bookingId = row.Cells[0].Text;

            // Redirect to details page for selected booking
            Response.Redirect("ViewWeddingDetails.aspx?BookingID=" + bookingId);
        }
    }
}
