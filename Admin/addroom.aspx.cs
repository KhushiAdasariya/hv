using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class addroom : System.Web.UI.Page
    {
       
           
    
       
            String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con;
            SqlDataAdapter da;
            DataSet ds;
            SqlCommand cmd;
            String fnm;
            int i;

            protected void Page_Load(object sender, EventArgs e)
            {
                getcon();
                if (!IsPostBack)
                {
                    fillRoomType();
                }
            }

            void getcon()
            {
                con = new SqlConnection(s);
                con.Open();
            }

            void fillRoomType()
            {
                getcon();
                da = new SqlDataAdapter("select * from roomtype_tbl", con);
                ds = new DataSet();
                da.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    drpRoomType.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                }
            }

            void uploadImg()
            {


                fnm = "img/" + fldim.FileName;
                fldim.SaveAs(Server.MapPath(fnm));

            }


            void clear()
            {
                drpRoomType.SelectedIndex = 0;
                txtRoomName.Text = "";
                txtRoomDesc.Text = "";
            }

            protected void btnAddRoom_Click(object sender, EventArgs e)
            {
                getcon();
                uploadImg();

                cmd = new SqlCommand("INSERT INTO room_tbl (roomtype_id, RoomName, RoomDesc, RoomImage) VALUES ('"
                                     + drpRoomType.SelectedIndex + "','"
                                     + txtRoomName.Text + "','"
                                     + txtRoomDesc.Text + "','"
                                     + fnm + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Room added successfully!!!')</script>");
                clear();
            }

            protected void drpRoomType_SelectedIndexChanged(object sender, EventArgs e)
            {

                da = new SqlDataAdapter("select * from room_tbl where roomtype_id = '" + drpRoomType.SelectedIndex + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                ViewState["RoomID"] = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            }
        }
    }
