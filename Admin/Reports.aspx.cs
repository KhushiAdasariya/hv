using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            if (con.State != System.Data.ConnectionState.Open)
            {
                con.Open();
            }
        }

        void BindGrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT ID, Name, Email, Phone, Message, CreatedDate FROM ContactMessages ORDER BY CreatedDate DESC", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GridView1.SelectedRow.Cells[0].Text;
            Response.Write("<script>alert('Selected Message ID: " + id + "');</script>");
        }
    }
}
