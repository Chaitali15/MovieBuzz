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
    public partial class Boxofficealltime : System.Web.UI.Page
    {
        string i;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldropdownitems();
                i = "ALL";
                Bind100crclubGrid();

              
            }

        }
        protected void Bind100crclubGrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string strsql;
                if (i == "ALL")
                    strsql = "SELECT  [Rank],[Film],[Year],[Nett_Gross],[Gross],[Distributor_Share],[Verdict],[Region]  FROM [dbo].[tbl_Boxoffice_Alltime]";
                else
                    strsql = "SELECT  [Rank],[Film],[Year],[Nett_Gross],[Gross],[Distributor_Share],[Verdict],[Region]  FROM [dbo].[tbl_Boxoffice_Alltime] where region='" + i + "'";


                SqlDataAdapter adaptor = new SqlDataAdapter(strsql, connection);
                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
                connection.Close();
            }

        }
       protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            i = DropDownList1.Text.ToString();
            Bind100crclubGrid();
        }

       protected void filldropdownitems()
       {
            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;
            DropDownList1.DataValueField = "region";
            DropDownList1.DataTextField = "region";

            //SQL string to execute 
            string strSQL = "SELECT distinct [region]  FROM [dbo].[tbl_Boxoffice_Alltime]";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                DropDownList1.DataTextField = "region";
                DropDownList1.DataValueField = "region";
                DropDownList1.DataSource = reader;
                DropDownList1.DataBind();
                DropDownList1.Items.Add("ALL");
                DropDownList1.Items.FindByValue("ALL").Selected = true;
                conn.Close();
           
       }
    }
}
