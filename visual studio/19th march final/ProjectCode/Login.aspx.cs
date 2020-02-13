using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
//using System.DirectoryServices.AccountManagement;
using System.DirectoryServices;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using Loader;
using Telerik.Web.UI;
using System.ComponentModel;
using System.Text;

namespace WFM_Forecasting
{
    public partial class Login1 : System.Web.UI.Page
    {
        //static string con = ConfigurationSettings.AppSettings["Con"].ToString();
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






            // bypassing D'authentication

           // VALIDATEUSERLib.UserClass objDomainAuth = new VALIDATEUSERLib.UserClass();
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

                            Response.Redirect("frm_ManageUser.aspx",false);
                            return;

                    }
                    else
                    {
                        lblErrMsg.Text = "*Invalid User (Application)  !!*";
                        lblErrMsg.Visible = true;
                    }

                }
                else
                {
                    lblErrMsg.Text = "*Invalid User (Application)  !!*";
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

        //private void BindDomains()
        //{
        //    DataSet dsDomain = new DataSet();
        //    try
        //    {
        //        Xml test = new Xml();

        //        dsDomain.ReadXml(Request.MapPath("XMLFiles/Domain.xml"));
        //        if (dsDomain.Tables.Count > 0)
        //        {
        //            if (dsDomain.Tables[0].Rows.Count > 0)
        //            {
        //                ddlDomain.DataValueField = "Domain_Text";
        //                ddlDomain.DataTextField = "Domain_Text";
        //                ddlDomain.DataSource = dsDomain.Tables[0];
        //                ddlDomain.DataBind();
        //                ddlDomain.Items.Insert(0, new ListItem("----Select Domain ----", " "));
        //            }
        //        }
        //    }

        //    catch (Exception ex)
        //    {
        //    }
        //    finally
        //    { dsDomain.Dispose(); }
        //}

    }
}

