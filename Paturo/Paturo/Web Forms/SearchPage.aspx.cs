using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paturo.Web_Forms
{
    public partial class SearchPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["category"] == null)
            {
                Session["category"] = "All";
            }

            categoryDDL.Visible = false;
            categoryLbl.Visible = true;
            changeBtn.Visible = true;
            selectBtn.Visible = false;
            cancelBtn.Visible = false;

            categoryLbl.Text = Session["category"].ToString();
        }

        protected void changeBtn_Click(object sender, EventArgs e)
        {
            categoryDDL.Visible = true;
            categoryLbl.Visible = false;
            changeBtn.Visible = false;
            selectBtn.Visible = true;
            cancelBtn.Visible = true;
            categoryDDL.SelectedValue = Session["category"].ToString();
        }

        protected void selectBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = categoryDDL.SelectedValue.ToString();
            Response.Redirect("SearchPage.aspx");
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {

        }

        protected void searchGridViewClick(object sender, EventArgs e)
        {

            Button btn = (Button)sender;    //Get the button that raised the event

            GridViewRow gvr = (GridViewRow)btn.NamingContainer;     //Get the row that contains this button        

            Session["selectedSubject"] = gvr.Cells[0].Text;
            Session["selectedCategory"] = gvr.Cells[1].Text;
            Session["selectedDescription"] = gvr.Cells[2].Text;
            Session["selectedTargetStudents"] = gvr.Cells[3].Text;
            Session["selectedPriceInfo"] = gvr.Cells[4].Text;

            Response.Redirect("");
        }
    }
}