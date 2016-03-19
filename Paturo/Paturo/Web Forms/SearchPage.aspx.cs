using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Paturo.Web_Forms
{
    public partial class SearchPage : System.Web.UI.Page
    {
        /*
        private List<String> idList = new List<String>();
        private List<String> prefIDList = new List<String>();
        String x;
         */

        //Someone make a way that the DataGrid doesn't display the pref_id and id columns but can still get values

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
                         
                /*
                searchGridView.DataBind();              
                if (idList.Count != 0 && prefIDList.Count != 0)
                {
                    idList.Clear();
                    prefIDList.Clear();
                }              

                for (int i = 0; i < searchGridView.Rows.Count; i++)
                {
                    x = searchGridView.Rows[i].Cells[0].Text;
                    idList.Add(x);
                    x = searchGridView.Rows[i].Cells[1].Text;
                    prefIDList.Add(x);
                }
              
                searchGridView.Columns[0].Visible = false;
                searchGridView.Columns[1].Visible = false;
                */
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

        protected void searchGridViewClick(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "open")
            {
                int i = Convert.ToInt32(e.CommandArgument);

                Session["selectedID"] =  searchGridView.Rows[i].Cells[0].Text;
                Session["selectedPrefID"] = searchGridView.Rows[i].Cells[1].Text;
                Session["selectedSubject"] = searchGridView.Rows[i].Cells[2].Text;
                Session["selectedCategory"] = searchGridView.Rows[i].Cells[3].Text;
                Session["selectedDescription"] = searchGridView.Rows[i].Cells[4].Text;
                Session["selectedTargetStudents"] = searchGridView.Rows[i].Cells[5].Text;
                Session["selectedPriceInfo"] = searchGridView.Rows[i].Cells[6].Text;

                Response.Redirect("ViewSchedule.aspx");
            }
        }
    }
}