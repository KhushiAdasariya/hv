using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace hv.User
{
    public partial class rooms : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        int pagesize = 1;   // 6 rooms per page
        static int pageindex = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filllist();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Rooms_Admin_tbl ORDER BY Id DESC", con);
            ds = new DataSet();
            da.Fill(ds);

            // PAGINATION LOGIC
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = ds.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = pagesize;
            pds.CurrentPageIndex = pageindex;

            // Enable/Disable Buttons
            lnkprev.Enabled = !pds.IsFirstPage;
            lnknxt.Enabled = !pds.IsLastPage;

            DataList1.DataSource = pds;
            DataList1.DataBind();
        }

        // Previous Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (pageindex > 0)
            {
                pageindex--;
                filllist();
            }
        }

        // Next Button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            pageindex++;
            filllist();
        }

        // BOOK NOW + VIEW DETAILS
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // BOOK NOW
            if (e.CommandName == "cmd_book")
            {
                string id = e.CommandArgument.ToString();
                Response.Redirect("bookroom.aspx?id=" + id);
            }

            // VIEW DETAILS
            if (e.CommandName == "cmd_view")
            {
                string id = e.CommandArgument.ToString();
                Response.Redirect("roomdetails.aspx?id=" + id);
            }
        }
    }
}
