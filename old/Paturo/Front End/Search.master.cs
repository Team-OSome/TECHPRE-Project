using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Paturo.Front_End
{
    public partial class Search : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["erecruitmentConnectionString"].ConnectionString);
        }

        protected void categoryDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}