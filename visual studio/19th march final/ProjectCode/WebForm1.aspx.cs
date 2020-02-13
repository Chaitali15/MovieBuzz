using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace MyProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Abandon();
                // BindDomains();
            }

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strUserId = txtLoginId.Text.ToString().Trim();
            string strPassword = txtPassword.Text.ToString().Trim();
            string strDomain = "";//ddlDomain.SelectedItem.Value.ToString().Trim();
            string Administrator = "Administrator"; //ConfigurationSettings.AppSettings["AdminLogin"].ToString();
            string AdminPwd = "admin"; // ConfigurationSettings.AppSettings["AdminPwd"].ToString();

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;

            //SQL string to execute 
            string strSQL = "sp_Get_Authentication_Data '" + strUserId + "','" + strPassword + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);

            conn.Open();
            //Execute the SQL String 
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader reader = cmd.ExecuteReader();

            DataSet dsSessionDetails = new DataSet();
            try
            {

                if (reader.HasRows)
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            //Session["Emp_ID"] = (string)reader["Emp_Name"];
                            Session["Access"] = (string)reader["Access"];
                            Session["Emp_Name"] = (string)reader["Emp_Name"];
                            //Session["TL"] = (string)reader["TL"];
                            //Session["Manager"] = (string)reader["Manager"];
                            Session["Login_Name"] = (string)reader["Login_Name"];
                            //Session["Login_Password"] = (string)reader["Login_Password"];

                        }

                        Response.Redirect("frm_manageuser.aspx", false);
                        return;

                    }
                    else
                    {
                        lblErrMsg.Text = "*Invalid Username or Password  !!*";
                        lblErrMsg.Visible = true;
                    }

                }
                else
                {
                    lblErrMsg.Text = "*Invalid Username or Password  !!*";
                    lblErrMsg.Visible = true;
                }




            }
            catch (Exception ex)
            {

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }


    }
}
