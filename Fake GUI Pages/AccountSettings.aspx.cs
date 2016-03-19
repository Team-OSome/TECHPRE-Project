using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Paturo.lib;
using System.Windows.Forms;


namespace Paturo.Web_Forms
{
    public partial class AccountSettings : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addSchedBtn_Click(object sender, EventArgs e)
        {
            ScheduleManager sM = new ScheduleManager();
            PreferenceManager pM = new PreferenceManager();

            try
            {
                if (pM.addPreference(Session["account"].ToString(), categoryTxtBox.Text, subjectTxtBox.Text, descTxtBox.Text, targetTxtBox.Text, priceTxtBox.Text) && sM.addSchedule(dayTxtBox.Text, timeTxtBox.Text))
                    MessageBox.Show("Schedule Added!");
            }
            catch
            {
                MessageBox.Show("Error Adding Schedule!");
            }
                
        }
    }
}