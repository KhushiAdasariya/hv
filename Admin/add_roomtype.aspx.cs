using System;
using System.Data.SqlClient;
using System.Configuration;

namespace hv.Admin
{
    public partial class add_roomtype : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
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
            txtRoomType.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into roomtype_tbl(RoomType) values('" + txtRoomType.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Room Type added successfully!!!')</script>");
            clear();
        }
    }
}
