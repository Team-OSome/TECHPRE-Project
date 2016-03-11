using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paturo.Web_Forms
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["category"] == null)
            {
                Session["category"] = "All";
            }
        }

        protected void LanguageBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Language";    //need a SQL function to that will return the id of the vategory based on the category name.
            Response.Redirect("SearchPage.aspx");
        }

        protected void MathBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Math";
            Response.Redirect("SearchPage.aspx");
        }

        protected void ScienceBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Science";
            Response.Redirect("SearchPage.aspx");
        }

        protected void ComputerBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Computer";
            Response.Redirect("SearchPage.aspx");
        }

        protected void ArtBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Art";
            Response.Redirect("SearchPage.aspx");
        }

        protected void MusicBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Music";
            Response.Redirect("SearchPage.aspx");
        }

        protected void SportBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Sport";
            Response.Redirect("SearchPage.aspx");
        }

        protected void OthersBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = "Others";
            Response.Redirect("SearchPage.aspx");
        }
    }
}