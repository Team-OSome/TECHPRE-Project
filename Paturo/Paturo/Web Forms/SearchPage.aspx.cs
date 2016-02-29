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
            if(Session["category"] == null)
            {
                Session["category"] = 0;
            }

            categoryDDL.SelectedValue = Session["category"].ToString();
        }
    }
}