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
            if(Session["category"] == null)
            {
                Session["category"] = 0;
            }
        }

        protected void LanguageBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 1;    //need a SQL function to that will return the id of the vategory based on the category name.
            Response.Redirect("SearchPage.aspx");
        }

        protected void MathBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 2;
            Response.Redirect("SearchPage.aspx");
        }

        protected void ScienceBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 3;
            Response.Redirect("SearchPage.aspx");
        }

        protected void ComputerBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 4;
            Response.Redirect("SearchPage.aspx");
        }

        protected void ArtBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 5;
            Response.Redirect("SearchPage.aspx");
        }

        protected void MusicBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 6;
            Response.Redirect("SearchPage.aspx");
        }

        protected void SportBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 7;
            Response.Redirect("SearchPage.aspx");
        }

        protected void OthersBtn_Click(object sender, EventArgs e)
        {
            Session["category"] = 8;
            Response.Redirect("SearchPage.aspx");
        }
    }
}