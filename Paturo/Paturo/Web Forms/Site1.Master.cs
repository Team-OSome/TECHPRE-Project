using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paturo.Web_Forms
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["account"] != null)
            {
                LogInBtn.Visible = false;
                LogOutBtn.Visible = true;
                usernameLbl.Visible = true;
                usernameLbl.Text = "Welcome " + Session["account"].ToString() + "!"; 
            }
            else
            {
                LogInBtn.Visible = true;
                LogOutBtn.Visible = false;
                usernameLbl.Visible = false;
            }

        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Session["account"] = null;
            Response.Redirect("HomePage.aspx");
        }
    }
}