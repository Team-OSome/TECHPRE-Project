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
                if (availabilityCheckBox.Items.Count > 0)
                {
                    foreach (ListItem listDay in availabilityCheckBox.Items)
                        if (listDay.Selected)
                            availability += listDay.Value + "-";

                    if (pM.addPreference(Session["account"].ToString(), categoryDropDownList.SelectedItem.Value.ToString(), subjectTxtBox.Text, descTxtBox.Text, targetTxtBox.Text, priceTxtBox.Text))
                        if (sM.addSchedule(availability, startingTimeTxtBox.Text + " " + EndTimeTxtBox.Text))
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "Schedule added!", true);
                }
                else
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "Please select an available day", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", "Error adding schedule", true);
            }
        }
    }
}