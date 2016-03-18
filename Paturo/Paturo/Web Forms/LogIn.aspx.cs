using Paturo.Libs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paturo.Web_Forms
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            AccountManager am = new AccountManager();
            if(am.checkLogIn(UsernameTB.Text,PasswordTB.Text))
            {
                statusLbl.Text = "log in correct";
                Session["account"] = UsernameTB.Text;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                statusLbl.Text = "Log-in Incorrect";
            }

        }

        protected void RegisterSB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}