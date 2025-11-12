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
    public partial class eventbook : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da; //Container
        DataSet ds;
        private CrystalDecisions.CrystalReports.Engine.ReportDocument
cr = new
CrystalDecisions.CrystalReports.Engine.ReportDocument();
        static string Crypath = "";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            da = new SqlDataAdapter("select* from EventBooking", con);
            ds = new DataSet();
            da.Fill(ds);
            string xml = @"E:\ASP.net\hv\User\EventBook.xml";
            ds.WriteXmlSchema(xml);
        }
    }
}
