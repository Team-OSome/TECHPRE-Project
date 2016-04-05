using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Paturo.lib;
using Paturo.Libs;

namespace Paturo.Web_Forms
{
    public partial class viewSchedule : System.Web.UI.Page
    {

        private ScheduleManager sM = new ScheduleManager();
        private AccountManager aM = new AccountManager();

        protected void Page_Load(object sender, EventArgs e)
        {
                //Session["selectedID"] 
                //Session["selectedPrefID"] 
            subjectLabel.Text = Session["selectedSubject"].ToString();
            categoryLabel.Text = Session["selectedCategory"].ToString();
            descriptionLabel.Text = Session["selectedDescription"].ToString();
            targetStudentsLabel.Text = Session["selectedTargetStudents"].ToString();
            priceLabel.Text = Session["selectedPriceInfo"].ToString();

            daysLabel.Text = sM.getSelectedDay(Session["selectedPrefID"].ToString());
            timeLabel.Text =  sM.getSelectedTime(Session["selectedPrefID"].ToString());

            nameLabel.Text = aM.getOtherFirstName(Session["selectedID"].ToString()) + " " + aM.getOtherMiddleName(Session["selectedID"].ToString()) + " " + aM.getOtherLastName(Session["selectedID"].ToString());
            cityLabel.Text = aM.getOtherCity(Session["selectedID"].ToString());
            contactLabel.Text = aM.getOtherContactNumber(Session["selectedID"].ToString());
            
        }

        protected void chekOutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transaction.aspx");
        }
    }
}