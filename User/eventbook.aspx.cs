using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace hv.User
{
    public partial class eventbook : System.Web.UI.Page
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
            txtFullName.Text = "";
            txtMobileNo.Text = "";
            txtEmail.Text = "";
            rblGender.ClearSelection();
            txtCity.Text = "";
            ddlState.SelectedIndex = 0;
            txtEventType.Text = "";
            txtEventDate.Text = "";
            txtEventTime.Text = "";
            ddlVenueName.SelectedIndex = 0;
            txtGuests.Text = "";
            ddlTheme.SelectedIndex = 0;
            rblRoomsRequired.ClearSelection();
            txtRooms.Text = "";
            txtCheckIn.Text = "";
            txtCheckOut.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text == "Book Event")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO EventBooking " +
                    "(FullName, MobileNo, Email, Gender, City, State, EventType, EventDate, EventTime, VenueName, Guests, Theme, RoomsRequired, Rooms, CheckInDate, CheckOutDate) " +
                    "VALUES ('" + txtFullName.Text + "','" + txtMobileNo.Text + "','" + txtEmail.Text + "','" + rblGender.SelectedValue + "','" + txtCity.Text + "','" + ddlState.SelectedValue + "','" + txtEventType.Text + "','" + txtEventDate.Text + "','" + txtEventTime.Text + "','" + ddlVenueName.SelectedValue + "','" + txtGuests.Text + "','" + ddlTheme.SelectedValue + "','" + rblRoomsRequired.SelectedValue + "','" + txtRooms.Text + "','" + txtCheckIn.Text + "','" + txtCheckOut.Text + "')", con);

                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("index.aspx");
            }
        }
    }
}
