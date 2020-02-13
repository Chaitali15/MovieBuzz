using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace MyProject
{
    public partial class Boxoffice_Data : System.Web.UI.Page
    {
        string i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldropdownitems();
                Bind100crclubGrid();
            }
        }
        protected void filldropdownitems()
        {
            int i;
            for (i = 10; i <= 100; i = i + 10)
            {
                string j;
                j = Convert.ToString(i);
                DropDownList1.Items.Add(j); 
            }
        }
        protected void Bind100crclubGrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string strsql;
                strsql = "";
                int j;
                j = Convert.ToInt32(i);
                if(j==0)
                {
                strsql="SELECT [Rank],[Film],[Release_date],[Nett_gross],[Region],[Remark]  FROM [dbo].[tbl_Boxoffice_Data] order by [Nett_gross] desc";}
                else
                {
                    strsql="SELECT top "+j+" [Rank],[Film],[Release_date],[Nett_gross],[Region],[Remark]  FROM [dbo].[tbl_Boxoffice_Data] order by [Nett_gross] desc";
                }

                SqlDataAdapter adaptor = new SqlDataAdapter(strsql, connection);
                DataSet ds = new DataSet();
                string sortDirection, sortExpression;
                sortDirection = "DESC";
                adaptor.Fill(ds);
                DataView dv = ds.Tables[0].DefaultView;
                if (ViewState["SortDirection"] != null)
                {
                   sortDirection = ViewState["SortDirection"].ToString();
                 }
                if (ViewState["SortExpression"] != null)
                {
                   sortExpression = ViewState["SortExpression"].ToString();
                   dv.Sort = string.Concat(sortExpression, " ", sortDirection);
                }

                gridControl.DataSource = dv;
                gridControl.DataBind();
                connection.Close();
            }

        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["SortDirection"] == null || ViewState["SortExpression"].ToString() != e.SortExpression)
            {
                ViewState["SortDirection"] = "ASC";
                gridControl.PageIndex = 0;
            }
            else if (ViewState["SortDirection"].ToString() == "ASC")
            {
                ViewState["SortDirection"] = "DESC";
            }

            else if (ViewState["SortDirection"].ToString() == "DESC")
            {
                ViewState["SortDirection"] = "ASC";
            }
            ViewState["SortExpression"] = e.SortExpression;
            Bind100crclubGrid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            i = DropDownList1.Text.ToString();
            Bind100crclubGrid();
        }

 

    }
}
