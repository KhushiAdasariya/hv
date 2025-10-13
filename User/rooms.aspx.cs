using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace hv.User
{
    public partial class rooms : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string fnm;
        PagedDataSource pg = new PagedDataSource();
        int row, p;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                ViewState["rid"] = 0;
            }
            filllist();
            //imgupload();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int currentpage = Convert.ToInt32(ViewState["rid"]);
            currentpage--;
            ViewState["rid"] = currentpage;
            filllist();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int currentpage = Convert.ToInt32(ViewState["rid"]);
            currentpage++;
            ViewState["rid"] = currentpage;
            filllist();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewDetails.aspx?id=" + id);
            }
        }

        void filllist()
        {
           

            da = new SqlDataAdapter("select * from room_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            pg.AllowPaging = true;
            pg.PageSize = 2;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["rid"]);

            lnkprev.Enabled = !pg.IsFirstPage;
            lnknxt.Enabled = !pg.IsLastPage;

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
       

    }
}
