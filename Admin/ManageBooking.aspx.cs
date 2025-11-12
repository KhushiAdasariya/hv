using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class ManageBooking : System.Web.UI.Page
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
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
        }

        void FillGrid()
        {
            GetCon();
            da = new SqlDataAdapter("SELECT * FROM EventBooking ORDER BY BookingID DESC", con);
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteBooking")
            {
                int bookingID = Convert.ToInt32(e.CommandArgument);
                DeleteBooking(bookingID);
                FillGrid();

                ScriptManager.RegisterStartupScript(this, GetType(), "msg",
                    "alert('Booking deleted successfully!');", true);
            }
        }

        void DeleteBooking(int id)
        {
            try
            {
                GetCon();
                cmd = new SqlCommand("DELETE FROM EventBooking WHERE BookingID=@BookingID", con);
                cmd.Parameters.AddWithValue("@BookingID", id);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "err",
                    "alert('Error deleting booking: " + ex.Message.Replace("'", "") + "');", true);
            }
        }
    }
}
