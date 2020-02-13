using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Telerik.Web.UI;
using System.Configuration;
using System.Data.OleDb;
using System.Windows.Forms;



namespace Loader
{

    public class Control_Binder
    {

        public static bool SQL_FillDropDownList(Telerik.Web.UI.RadComboBox dDl, string tblName)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


            //Set the Data Value and Text fields to the db column 
            dDl.DataValueField = "CodeValue";
            dDl.DataTextField = "CodeValue";

            //SQL string to execute 
            string strSQL = "GetCodeTypeDetails  '" + tblName + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                conn.Open();
                //Execute the SQL String 
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                dDl.DataSource = reader;
                dDl.DataBind();
                conn.Close();

                // Insert the first item.
                dDl.Items.Insert(0, new RadComboBoxItem("- Select -"));


            }
            catch // (Exception e) // Exception Removed 
            {
                return false;

            }
            finally
            {
                conn.Close();
            }
            return true;
        }

        public static bool FillChkBoxList(CheckBoxList dDl, string tblName)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


            //Set the Data Value and Text fields to the db column 
            dDl.DataValueField = "CodeValue";
            dDl.DataTextField = "CodeValue";

            //SQL string to execute 
            string strSQL = "GetCodeTypeDetails  '" + tblName + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                conn.Open();
                //Execute the SQL String 
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                dDl.DataTextField = "CodeValue";
                dDl.DataValueField = "CodeValue";
                dDl.DataSource = reader;
                dDl.DataBind();
                conn.Close();

            }
            catch // (Exception e) // Exception Removed 
            {
                return false;

            }
            finally
            {
                conn.Close();
            }
            return true;
        }

        public static bool FillRadioButtonList(RadioButtonList dDl, string tblName)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


            //Set the Data Value and Text fields to the db column 
            dDl.DataValueField = "CodeValue";
            dDl.DataTextField = "CodeValue";

            //SQL string to execute 
            string strSQL = "GetCodeTypeDetails  '" + tblName + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                conn.Open();
                //Execute the SQL String 
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                dDl.DataTextField = "CodeValue";
                dDl.DataValueField = "CodeValue";
                dDl.DataSource = reader;
                dDl.DataBind();
                conn.Close();

            }
            catch // (Exception e) // Exception Removed 
            {
                return false;

            }
            finally
            {
                conn.Close();
            }
            return true;
        }

        public static void importDataFromExcel(string excelFilePath, string uploadtable)
        {

            string columnlist;
            columnlist = "";
            string sSQLTable = uploadtable;

            // make sure your sheet name is correct, here sheet name is Sheet1
            if (uploadtable.ToUpper() == "TBL_MOVIE_DATA")
                columnlist = "Release_Month,Release_Day,Release_Year,Title,Genre,Director,[Cast],Poster_Name,Synopsis,idd";


            if (uploadtable.ToUpper() == "TBL_STARS_DATA")
                columnlist = "cast_name,[Rank],Rating,[Year],Cast_Type";

            if (uploadtable.ToUpper() == "TBL_BOXOFFICE_DATA")
                columnlist = "[Rank],Film,Release_date,Nett_gross,Region,Star_type,[Remark]";

            if (uploadtable.ToUpper() == "TBL_100CRCLUB")
                columnlist = "[Rank],Film,Lead_Stars,Directors,Days,Total_earn";

            if (uploadtable.ToUpper() == "TBL_BOXOFFICE_ALLTIME")
                columnlist = "[Rank],Film,Year,Nett_Gross,Gross,Distributor_Share,Verdict,region";

            if (uploadtable.ToUpper() == "TBL_MOVIE_VERDICT")
                columnlist = "[Rank],Film,Release_Date,Verdict,Year";

            if (uploadtable.ToUpper() == "TBL_NEWRELEASES")
                columnlist = "Release_Data,Movie_Name,Rating,Genre,Distributor,Movie_Cast,Poster_path";

            if (uploadtable.ToUpper() == "TBL_BOXOFFICE_GROSS")
                columnlist = "[Rank],Film,Release_Date,Nett_gross";




            string myExcelDataQuery = "Select " + columnlist + " from [Sheet1$]";

            try
            {

                //Create our connection strings

                string sExcelConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + excelFilePath + ";Extended Properties=" + "\"Excel 8.0;HDR=YES;\"";
                string sSqlConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;

                ////Execute a query to erase any previous data from destination table

                string sClearSQL = "DELETE FROM " + sSQLTable;
                SqlConnection SqlConn = new SqlConnection(sSqlConnectionString);
                SqlCommand SqlCmd = new SqlCommand(sClearSQL, SqlConn);
                //SqlConn.Open();
                //SqlCmd.ExecuteNonQuery();
                //SqlConn.Close();



                //Series of commands to bulk copy data from the excel file into our SQL table

                OleDbConnection OleDbConn = new OleDbConnection(sExcelConnectionString);
                OleDbConn.Open();
                OleDbCommand OleDbCmd = new OleDbCommand(myExcelDataQuery, OleDbConn);

                OleDbDataReader dr = OleDbCmd.ExecuteReader();
                SqlBulkCopy bulkCopy = new SqlBulkCopy(sSqlConnectionString);
                bulkCopy.DestinationTableName = sSQLTable;


                while (dr.Read())
                {
                    bulkCopy.WriteToServer(dr);
                }

                OleDbConn.Close();



                //Execute a query to update any data in our destination table

                //sClearSQL = "sp_Validate_LoginUpload";
                //SqlConn = new SqlConnection(sSqlConnectionString);
                //SqlCmd = new SqlCommand(sClearSQL, SqlConn);
                //SqlConn.Open();
                //SqlCmd.ExecuteNonQuery();
                //SqlConn.Close();




            }

            catch (Exception ex)
            {
                //handle exception
                MessageBox.Show(ex.ToString());
            }

        }

        public static bool SQL_ManageUser_TL(Telerik.Web.UI.RadComboBox dDl, string tblName)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


            //Set the Data Value and Text fields to the db column 
            dDl.DataValueField = "TL";
            dDl.DataTextField = "TL";

            //SQL string to execute 
            string strSQL = "GetTLDetails  '" + tblName + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                conn.Open();
                //Execute the SQL String 
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                dDl.DataSource = reader;
                dDl.DataBind();
                conn.Close();

                // Insert the first item.
                //dDl.Items.Insert(0, new RadComboBoxItem("- Select -"));


            }
            catch // (Exception e) // Exception Removed 
            {
                return false;

            }
            finally
            {
                conn.Close();
            }
            return true;
        }

        public static bool SQL_ManageUser_Manager(Telerik.Web.UI.RadComboBox dDl, string tblName)
        {

            string ConnectionString = ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString;


            //Set the Data Value and Text fields to the db column 
            dDl.DataValueField = "Manager";
            dDl.DataTextField = "Manager";

            //SQL string to execute 
            string strSQL = "GetManagerDetails  '" + tblName + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                conn.Open();
                //Execute the SQL String 
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                dDl.DataSource = reader;
                dDl.DataBind();
                conn.Close();

                // Insert the first item.
                //dDl.Items.Insert(0, new RadComboBoxItem("- Select -"));


            }
            catch // (Exception e) // Exception Removed 
            {
                return false;

            }
            finally
            {
                conn.Close();
            }
            return true;
        }


    }



}