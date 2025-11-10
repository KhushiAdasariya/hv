using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hv.Admin
{
    public partial class Manageregisteration : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillregister();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
        }

        void fillregister()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM stu_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        // Paging
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            fillregister();
        }

        // RowCommand for Edit button
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditUser")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                // Redirect to edit page with the selected user's Id
                Response.Redirect("EditRegister.aspx?id=" + id);
            }
        }
    }
}
