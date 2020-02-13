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
    public partial class Moviepredict : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                 if (!IsPostBack)
            {
                Bind_ddgenre();
            }

        }
        protected void Bind_ddgenre()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string strSQL;
                strSQL = "select distinct genre from [dbo].[tbl_Movie_Data]";
                connection.Open();
                SqlCommand cmd = new SqlCommand(strSQL, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    string genredata;
                    genredata = "";
                    while (reader.Read())
                    {

                        genredata = reader["genre"].ToString();
                        ddl_genre.Items.Add(genredata);
                    }
                }
                
                connection.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_moviename.Text = "";
            txt_director.Text = "";
            txt_actress.Text = "";
            txt_actor.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["mname"] = txt_moviename.Text.ToString();
            Session["dir"] = txt_director.Text.ToString();
            Session["actor"] = txt_actor.Text.ToString();
            Session["actress"] = txt_actress.Text.ToString();
            Session["genre"] = ddl_genre.SelectedValue.ToString();
            Session["ddl_rmnth"] = ddl_rmnth.SelectedValue.ToString();
            Response.Redirect("Moviepredict_details.aspx");
        }
    }

}
