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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStarsGrid();
            }
        }
        protected void BindStarsGrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string strSQL;
                strSQL = "select top 3 [Movie_Name],convert(nvarchar(20),Release_Date,106)as Release_Date,Poster_path  from [dbo].[tbl_Newreleases] where month(convert(nvarchar(20),Release_Date,106))=month(convert(nvarchar(20),getdate(),106))";
                connection.Open();
                //SqlCommand cmd = new SqlCommand(strSQL, connection);
                SqlDataAdapter adaptor = new SqlDataAdapter(strSQL, connection);
                DataSet ds = new DataSet();
                adaptor.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    //Image2.Visible = false;
                    Label1.Text = "No New Releases For This Month....";


                }
                else
                {
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                    //Image2.Visible = true;
                    Label1.Visible = true;

                }
                connection.Close();
            }

        }
    }
}
