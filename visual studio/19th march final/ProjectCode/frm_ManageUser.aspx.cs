using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Loader;
using Telerik.Web.UI;
using System.Data.OleDb;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace MyProject
{
    public partial class frm_ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // Loader.Control_Binder.SQL_ManageUser_Manager(ddlManager, "");
                // Loader.Control_Binder.SQL_ManageUser_TL(ddlTL, "");
                //ddlAccessLevel.Items.Insert(0, new RadComboBoxItem("0"));
            }
        }

        /* protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
         {
             string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


             ////Set the Data Value and Text fields to the db column 
             //dDl.DataValueField = "CodeValue";
             //dDl.DataTextField = "CodeValue";

             //SQL string to execute 
             string strSQL = "sp_Get_Authentication_Data '" + txtDomainID.Text + "'";
             //Create a connection 
             SqlConnection conn = new SqlConnection(ConnectionString);

             conn.Open();
             //Execute the SQL String 
             SqlCommand cmd = new SqlCommand(strSQL, conn);
             SqlDataReader reader = cmd.ExecuteReader();

             while (reader.Read())
             {
                 txtEmpID.Text = (string)reader["Emp_ID"];
                 ddlAccessLevel.Text = (string)reader["Access"];
                 txtEmpName.Text = (string)reader["Emp_Name"];
                 ddlTL.SelectedIndex = ddlTL.FindItemIndexByValue((string)reader["TL"]);
                 ddlManager.SelectedIndex = ddlManager.FindItemIndexByValue((string)reader["Manager"]);
                 //txtDomainID.Text = (string)reader["Login_Name"];
                 // <dummy var> = (string)reader["Login_Password"];
             }

             conn.Close();



         }

         protected void Button1_Click(object sender, EventArgs e)
         {
             txtDomainID.Text = "";
             txtEmpName.Text = "";
             txtEmpID.Text = "";
         } 

         protected void cmdUpload_Click(object sender, EventArgs e)
         {
             string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;

             using (SqlConnection connection = new SqlConnection(
                        ConnectionString))
             {
                 SqlCommand command = new SqlCommand("sp_FinalMove_LoginUpload '" + (string)Session["Emp_ID"] + "'", connection);
                 command.Connection.Open();
                 command.ExecuteNonQuery();
             }

         } */

        protected void cmdValidate_Click(object sender, EventArgs e)
        {

            string filepath, uploadtable;
            uploadtable = ddl_uploaddatatype.SelectedItem.Value.ToString().Trim();
            filepath = UploadFileToServer();
            if (filepath != "")
            {
                Loader.Control_Binder.importDataFromExcel(filepath, uploadtable);
                BindGrid(GridView1);
            }

        }

        private void BindGrid(GridView gridControl)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString))
            {
                string table = ddl_uploaddatatype.SelectedItem.Value.ToString();
                string query = "SELECT  * FROM " + table;

                SqlDataAdapter adaptor = new SqlDataAdapter(query, connection);//where Rejected_Record ='Y'

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
                connection.Close();
            }
        }

        protected void hyplnk_Template_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "application/octet-stream";


            //server
            //Response.AddHeader("Content-Disposition", "attachment; filename=abc.txt");
            //Response.WriteFile(Server.MapPath("\\servername\folder1\folder2\folder3\abc.txt"));


            //local
            Response.AddHeader("Content-Disposition", "attachment; filename=UserCreationUploader_New.xls");
            Context.Response.WriteFile(ConfigurationManager.AppSettings["UserUploadPath"] + "\\UserCreationUploader_New.xls");
            Response.End();

        }

        /* protected void cmdCreate_Click(object sender, EventArgs e)
         {
             CreateUpdateUser();
         }

         protected void cmdUpdate_Click(object sender, EventArgs e)
         {
             CreateUpdateUser();
         }

         public void CreateUpdateUser()
         {
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString);

             SqlCommand cmdadd;
             cmdadd = new SqlCommand("SP_create_User ", con);
             cmdadd.CommandType = CommandType.StoredProcedure;

             cmdadd.Parameters.AddWithValue("@Emp_ID", txtEmpID.Text);                            // @Emp_ID varchar()
             cmdadd.Parameters.AddWithValue("@Emp_Name", txtEmpName.Text);                        //,@Emp_Name varchar()
             cmdadd.Parameters.AddWithValue("@TL", ddlTL.Text);                                   //,@TL varchar()
             cmdadd.Parameters.AddWithValue("@Manager", ddlManager.Text);                         //,@Manager varchar()
             cmdadd.Parameters.AddWithValue("@Login_Name", txtDomainID.Text);                     //,@Login_Name varchar() 
             cmdadd.Parameters.AddWithValue("@CreationBy", (string)Session["Emp_ID"]);                    //,@Emp_ID varchar(200)

             con.Open();
             cmdadd.ExecuteNonQuery();
             con.Close();

             Session["ViewState"] = null;
             this.ClientScript.RegisterStartupScript(this.GetType(), "Data saved", "<script language=\"javaScript\">"
                     + "alert('The data has been saved successfully. ');"
                     + "window.location.href='frm_ManageUser.aspx';" + "<" + "/script>");
         }*/

        public string UploadFileToServer()
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Template") + "\\" + fn;

                //SaveLocation = ConfigurationManager.AppSettings["UserUploadPath"] + "\\" + fn; ; 
              

                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    lblUploadStatus.Text = "The file has been uploaded.";
                    return (SaveLocation);
                }
                catch (Exception ex)
                {
                    lblUploadStatus.Text = "Error: " + ex.Message;
                    return ("");
                }

            }
            else
            {
                lblUploadStatus.Text = "Please select a file to upload.";
                return ("");
            }
        }

    }
}

