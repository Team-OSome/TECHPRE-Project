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
            String availability = "";

            try
            {
                if (availabilityCheckBox.Items.Cast<ListItem>().Any(item => item.Selected))
                {
                    foreach (ListItem listDay in availabilityCheckBox.Items)
                        if (listDay.Selected)
                            availability += listDay.Value + "-";

                    if (pM.addPreference(Session["account"].ToString(), categoryDropDownList.SelectedItem.Value.ToString(), subjectTxtBox.Text, descTxtBox.Text, targetTxtBox.Text, priceTxtBox.Text))
                        if (sM.addSchedule(availability, startingTimeTxtBox1.Text + ":" + startingTimeTxtBox2.Text + "-" + EndTimeTxtBox1.Text + ":" + EndTimeTxtBox2.Text))
                           Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Schedule added!');</script>");
                }
                else
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please select an available day');</script>");
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error adding schedule');</script>");
            }
        }
    }
}