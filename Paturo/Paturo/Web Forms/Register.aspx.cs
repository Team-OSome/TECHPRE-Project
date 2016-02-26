using Paturo.Libs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paturo.Web_Forms
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBTN_Click(object sender, EventArgs e)
        {
            AccountManager am = new AccountManager();

            int x = Convert.ToInt32(dayDDL.SelectedValue);

            if (am.createAccount(emailTB.Text, passwordTB.Text, lastNameTB.Text, firstNameTB.Text, middleNameTB.Text, Convert.ToInt32(dayDDL.SelectedValue), Convert.ToInt32(monthDDL.SelectedValue), Convert.ToInt32(yearDDL.SelectedValue), genderDDL.SelectedValue, civilStatusDDL.SelectedValue, nationalityTB.Text, contactNumTB.Text, provinceTB.Text, cityTB.Text, zipcodeTB.Text))
            {
                Label1.Text = "Log in Successful!";
            }
            else
            {
                Label1.Text = "Log in not Successful!";
            }
        }
    }
}