using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Topmenu : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["Access"] == "0") { RadMenu1.Items.FindItemByText("Reports").Visible = false; }
        }
    }
}