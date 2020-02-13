using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using Telerik.Web.UI;


namespace MyProject
{
    public partial class frm_Report : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //    //VALIDATEUSERLib.UserClass locObj	= new VALIDATEUSERLib.UserClass();
        //    //string Administrator				= ConfigurationSettings.AppSettings["AdminLogin"].ToString();
        //    //string AdminPwd						= ConfigurationSettings.AppSettings["AdminPwd"].ToString();
        //    //if (locObj.IsValidUser("anuragm".ToString().Trim(), "ICICI21src".ToString().Trim(), "cadomain".ToString().Trim(), Administrator, AdminPwd) == 0) ;

        //}

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    bindGridView();
        //}

        //private void bindGridView()
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString);


        //    string SQL1 = "select * from tblInboundSettings";

        //    DataSet dsCallTag = new DataSet();
        //    DataSet dsOutcome = new DataSet();
        //    SqlDataAdapter da = new SqlDataAdapter(SQL1, con);

        //    da.Fill(dsOutcome);

        //    //radio_Outcome.DataTextField = "CodeValue";
        //    //radio_Outcome.DataValueField = "CodeValue";
        //    GridView1.DataSource = dsOutcome;
        //    GridView1.DataBind();

        //}

        //protected void cmdGenerate_Click(object sender, EventArgs e)
        //{
        //    bindGridView();
        //}

        //// do not delete the EMPTY function
        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //    // do not delete the EMPTY function
        //}
        //// do not delete the EMPTY function
        
        //private void ExportToExcel(string strFileName, GridView dg)
        //{
        //    GridView1.AllowPaging = false;
        //    Response.Clear();
        //    Response.Buffer = true;
        //    Response.AddHeader("Content-Disposition", "attachment; filename=Report.xls");
        //    Response.ContentType = "application/vnd.ms-excel";
        //    Response.Charset = "";
        //    this.EnableViewState = false;
        //    System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
        //    System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
        //    GridView1.RenderControl(oHtmlTextWriter);
        //    Response.Write(oStringWriter.ToString());
        //    GridView1.AllowPaging = true;
        //    Response.End();
        //}

        //protected void cmdExport_Click(object sender, EventArgs e)
        //{
        //    ExportToExcel("Report.xls", GridView1);
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("Inbound"));
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("Outbound"));
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("PAT"));
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("Sbo"));
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("ZigZag"));
                //ddlProcess.Items.Insert(0, new RadComboBoxItem("ESPN"));

                Loader.Control_Binder.SQL_ManageUser_Manager(ddlManager, "");
                Loader.Control_Binder.SQL_ManageUser_TL(ddlTL, "");

                ddlTL.Items.Insert(0, new RadComboBoxItem(""));
                ddlManager.Items.Insert(0, new RadComboBoxItem(""));

                dtpFrom.SelectedDate = DateTime.Now; //.ToString().ToString(); 
                dtpTo.SelectedDate = DateTime.Now; //.ToString().ToString(); 


            }
        }

        private void BindGrid(GridView gridControl,string query)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["dBConnectionString"].ConnectionString)) 

            {

                SqlDataAdapter adaptor = new SqlDataAdapter(query, connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
            }
        }

        private void Export_Excel()
        {
            GridView1.AllowPaging = false;
            BindGrid(GridView1,formulateQuery());

            Context.Response.ClearContent();
            Context.Response.ContentType = "application/ms-excel";
            Context.Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.xls", "ExcelFileName"));
            Context.Response.Charset = "";
            System.IO.StringWriter stringwriter = new System.IO.StringWriter();
            HtmlTextWriter htmlwriter = new HtmlTextWriter(stringwriter);
            GridView1.RenderControl(htmlwriter);
            Context.Response.Write(stringwriter.ToString());
            Context.Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void btnExport_Click1(object sender, EventArgs e)
        {
            Export_Excel();
        }

        protected void cmdGenerate_Click(object sender, EventArgs e)
        {
            string query = formulateQuery();
            BindGrid(GridView1,query);

        }

        private string formulateQuery()
        {
            string query = "'" + dtpFrom.SelectedDate.ToString() + "','" + dtpTo.SelectedDate.ToString() + "'";
            query = query + ",'" + ddlManager.Text + "','" + ddlTL.Text + "'";

            query = ddlProcess.SelectedValue + " " + query;

            //if (ddlProcess.Text == "Value") { query = "sp_report_Value " + query; }
            //if (ddlProcess.Text == "Upgrades") { query = "sp_report_Upgrades " + query; }

            //if (ddlProcess.Text == "Value Dashboard") { query = "sp_report_DashboardValue " + query; }
            //if (ddlProcess.Text == "Upgrades Dashboard") { query = "sp_report_DashboardUpgrades " + query; }

            return (query);

        }

        public void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            string query = formulateQuery();
            BindGrid(GridView1, query);
        }

    }
}
