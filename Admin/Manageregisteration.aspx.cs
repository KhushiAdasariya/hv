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
    public partial class Manageregisteration : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillregister();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillregister()
        {
            getcon();
            da = new SqlDataAdapter("select * from sd_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dldt.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = (GridView1.SelectedRow.FindControl("Label1") as Label).Text;
            Response.Write("Selected ID = " + id);
        }
    }
}