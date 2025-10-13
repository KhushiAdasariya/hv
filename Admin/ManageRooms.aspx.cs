using System;

namespace hv.Admin
{
    public partial class ManageRooms : System.Web.UI.Page
    {
        protected void btnAddRoomType_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_roomtype.aspx");
        }

        protected void btnAddRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("addroom.aspx");
        }
    }
}
