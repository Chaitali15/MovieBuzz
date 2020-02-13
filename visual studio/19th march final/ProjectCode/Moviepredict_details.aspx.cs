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
    public partial class Moviepredict_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                lbl_actor.Text  =Session["actor"].ToString();
                lbl_actress.Text  =Session["actress"].ToString();
                lbl_director.Text  = Session["dir"].ToString();
                lbl_genre.Text =Session["genre"].ToString();
                lbl_mname.Text = Session["mname"].ToString();
                lbl_relmnth.Text = Session["ddl_rmnth"].ToString();
            
            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;
            string strSQL = "sp_linearRegression_forecast '" + Session["genre"]  + "','" + Session["ddl_rmnth"] + "','"+Session["dir"]+"','"+Session["actor"]+"','"+Session["actress"]+"' ";
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();

            SqlDataAdapter adaptor = new SqlDataAdapter(strSQL, conn);
            DataSet ds = new DataSet();

                             adaptor.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            GridView2.DataSource = ds.Tables[1];
            GridView2.DataBind();
            

            SqlCommand cmd3 = new SqlCommand("sp_suggestion", conn);
            SqlDataAdapter adaptor3 = new SqlDataAdapter("sp_suggestion", conn);
            DataSet ds3 = new DataSet();
            adaptor3.Fill(ds3);
            gridControl2.DataSource = ds3;
            gridControl2.DataBind();

            
            string strSQL1 = "sp_linearRel_month '" + Session["genre"] + "','" + Session["ddl_rmnth"] + "','" + Session["dir"] + "','" + Session["actor"] + "','" + Session["actress"] + "' ";
            SqlCommand cmd4 = new SqlCommand(strSQL1, conn);
            SqlDataAdapter adaptor4 = new SqlDataAdapter(strSQL1, conn);
            DataSet ds4 = new DataSet();
            adaptor4.Fill(ds4);
            gridControl3.DataSource = ds4;
            gridControl3.DataBind();

            conn.Close();

        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Moviepredict.aspx");
        }
    }
}
