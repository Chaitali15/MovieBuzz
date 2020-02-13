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
    public partial class StarRanking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind100crclubGrid();
            }
        }
        protected void Bind100crclubGrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                SqlDataAdapter adaptor = new SqlDataAdapter("select Image_path,Cast_Name as 'Actor/Actress' , [Rank],Rating, Year   from [dbo].[tbl_Stars_Data] where cast_type='Actor' order by rank", connection);
                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();

                SqlDataAdapter adaptor2 = new SqlDataAdapter("select Image_path,Cast_Name as 'Actor/Actress' , [Rank],Rating, Year   from [dbo].[tbl_Stars_Data] where cast_type='Actress' order by rank", connection);
                DataSet ds2 = new DataSet();

                adaptor2.Fill(ds2);
                GridView2.DataSource = ds2;
                GridView2.DataBind();
                connection.Close();

            }



        }
    }
}
