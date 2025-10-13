using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace hv.User
{
    public partial class booking : System.Web.UI.Page
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
            if (con.State != System.Data.ConnectionState.Open)
            {
                con.Open();
            }
        }

        void clear()
        {
            ddlRoomType.SelectedIndex = 0;
            txtCheckIn.Text = "";
            txtCheckOut.Text = "";
            ddlGuests.SelectedIndex = 1;
            txtChildren.Text = "0";
            ddlMealPlan.SelectedIndex = 1;

            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
            txtRequests.Text = "";
            ddlPayment.SelectedIndex = 0;
            txtCoupon.Text = "";
        }

        protected void btnSubmitBooking_Click(object sender, EventArgs e)
        {
            getcon();

            string bookingRef = "HV" + DateTime.Now.ToString("yyMMdd") + new Random().Next(100, 999);

            string insertQuery = "INSERT INTO Bookings (" +
                "BookingReference, RoomType, CheckInDate, CheckOutDate, Adults, Children, MealPlan, FullName, Email, Phone, City, Address, SpecialRequests, PaymentMethod, CouponCode) " +
                "VALUES ('" + bookingRef + "','" + ddlRoomType.SelectedValue + "','" + txtCheckIn.Text + "','" + txtCheckOut.Text + "'," +
                "'" + ddlGuests.SelectedValue + "','" + txtChildren.Text + "','" + ddlMealPlan.SelectedValue + "','" + txtName.Text + "','" + txtEmail.Text + "'," +
                "'" + txtPhone.Text + "','" + txtCity.Text + "','" + txtAddress.Text + "','" + txtRequests.Text + "','" + ddlPayment.SelectedValue + "','" + txtCoupon.Text + "')";

            try
            {
                cmd = new SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();

                clear();

                pnlBookingForm.Visible = false;
                litConfirmation.Visible = true;

                litConfirmation.Text = $@"
                    <div style='text-align:center; padding:50px; background:#f0fff0; border:2px solid #7c8b38; border-radius:8px;'>
                        <h2 style='color:#7c8b38; margin-bottom:20px;'>✅ Reservation Confirmed!</h2>
                        <p style='font-size:18px; color:#333; margin-bottom:30px;'>Your Booking ID is <strong>{bookingRef}</strong>. We will contact you soon!</p>
                        <a href='index.aspx' class='confirmation-btn'>Go to Home Page</a>
                    </div>";
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('Booking Failed: {ex.Message.Replace("'", "")}');", true);
            }
            finally
            {
                if (con != null && con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}
