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
    public partial class NewReleases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void BindGrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                SqlDataAdapter adaptor = new SqlDataAdapter("select [Release_Date],[Movie_Name] ,[Genre],[Director],[Movie_Cast] from [dbo].[tbl_Newreleases] where year(release_date)=year(getdate()) and Month(release_date)=Month(getdate())", connection);
                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
                connection.Close();
            }
        }


    }
}
