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




       
       
            string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con;
            SqlCommand cmd;
            SqlDataAdapter da;
            DataSet ds;
            String fnm;

            protected void Page_Load(object sender, EventArgs e)
            {
                getcon();
                if (!IsPostBack)
                {
                    fillgrid();
                }
            }

            void getcon()
            {
                con = new SqlConnection(s);
                con.Open();
            }

            void clear()
            {
                txtRoomType.Text = "";
                txtRoomNumber.Text = "";
                txtDescription.Text = "";
                txtPrice.Text = "";
                txtCapacity.Text = "";
            }

        void imgupload()
        {
            fnm = "User/images/" + fldimg.FileName;
            fldimg.SaveAs(Server.MapPath("~/" + fnm));

        }


        void fillgrid()
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM Rooms_Admin_tbl", con);
                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            protected void btnSave_Click(object sender, EventArgs e)
            {
                if (btnSave.Text == "Save Room")
                {
                    getcon();
                    imgupload();

                    cmd = new SqlCommand("INSERT INTO Rooms_Admin_tbl (RoomType, RoomNumber, Description, Price, Capacity, Status, Image) VALUES('" +
                        txtRoomType.Text + "', '" + txtRoomNumber.Text + "', '" + txtDescription.Text + "', '" +
                        txtPrice.Text + "', '" + txtCapacity.Text + "', '" + ddlStatus.SelectedItem.Text + "', '" + fnm + "')", con);

                    cmd.ExecuteNonQuery();
                    clear();
                    fillgrid();
                }
                else
                {
                    getcon();
                    cmd = new SqlCommand("UPDATE Rooms_Admin_tbl SET RoomType='" + txtRoomType.Text +
                        "', RoomNumber='" + txtRoomNumber.Text +
                        "', Description='" + txtDescription.Text +
                        "', Price='" + txtPrice.Text +
                        "', Capacity='" + txtCapacity.Text +
                        "', Status='" + ddlStatus.SelectedItem.Text +
                        "' WHERE Id='" + ViewState["id"] + "'", con);

                    cmd.ExecuteNonQuery();
                    clear();
                    fillgrid();
                    btnSave.Text = "Save Room";
                }
            }

            void select()
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM Rooms_Admin_tbl WHERE Id='" + ViewState["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                txtRoomType.Text = ds.Tables[0].Rows[0]["RoomType"].ToString();
                txtRoomNumber.Text = ds.Tables[0].Rows[0]["RoomNumber"].ToString();
                txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                txtCapacity.Text = ds.Tables[0].Rows[0]["Capacity"].ToString();
                txtDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();
            }

            protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
            {
                // ------ EDIT -------
                if (e.CommandName == "cmd_edt")
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    ViewState["id"] = id;
                    btnSave.Text = "Update";
                    select();
                }

                // ------ DELETE -------
                if (e.CommandName == "cmd_dlt")
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    getcon();
                    cmd = new SqlCommand("DELETE FROM Rooms_Admin_tbl WHERE Id='" + id + "'", con);
                    cmd.ExecuteNonQuery();
                    fillgrid();   // refresh grid after delete
                }
            }
        }
    }

