using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Loader;
using Telerik.Web.UI;
using System.ComponentModel;
using System.Text;

namespace MyProject
{
    public partial class MovieDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string strSQL,strSQL2;
                strSQL = "Select Poster_Name,synopsis,Poster_Name,Release_Day+'-'+Release_Month+'-'+Release_Year as ReleaseDate, [Title],Genre ,[CAST],Director, isnull(Verdict,'Not a Box-Office Hit') as Verdict from tbl_Movie_Data a left join  [dbo].[tbl_Movie_verdict] b on a.title=b.film where  a.title='" + txtSearch.Text.ToString() + "'";
                
                connection.Open();

                SqlCommand cmd = new SqlCommand(strSQL, connection);
                SqlDataAdapter adaptor = new SqlDataAdapter(strSQL, connection);
                DataSet ds = new DataSet();
                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();

                /*strSQL2 = "";
                strSQL2 = "select isnull([Region],'Mumbai')as Region,isnull(Nett_gross,0) as 'Nett Gross' from [dbo].[tbl_Boxoffice_Data] a , tbl_Movie_Data b where a.Film =b.Title  and  film='" + txtSearch.Text.ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(strSQL2, connection);
                SqlDataAdapter adaptor2 = new SqlDataAdapter(strSQL2, connection);
                DataSet ds2 = new DataSet();
                adaptor2.Fill(ds2);
                GridView1.DataSource = ds2;
                GridView1.DataBind();*/

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Image1.ImageUrl = reader["Poster_Name"].ToString();
                    }
                }

                else
                {
                   
                    lbl47.Text = "Movie doesn't exist in database";
                    
                   
                }

                connection.Close();
            }
        }


        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> SearchCustomers(string prefixText, int count)
        {

            using (SqlConnection conn = new SqlConnection())
            {

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;

                using (SqlCommand cmd = new SqlCommand())
                {

                     cmd.CommandText = "select distinct [Title] from tbl_Movie_Data where " +
                    "[Title] like @SearchText + '%' ";


                    cmd.Parameters.AddWithValue("@SearchText", prefixText);
                    cmd.Connection = conn;
                    conn.Open();

                    List<string> customers = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(sdr["Title"].ToString());
                        }
                    }

                    conn.Close();
                    return customers;

                }

            }

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }



    }
}
