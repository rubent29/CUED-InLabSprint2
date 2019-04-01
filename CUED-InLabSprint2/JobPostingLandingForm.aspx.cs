using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobPostingLandingForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ViewJobPosting_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewPostingForm.aspx", false);
    }

    protected void CreateAnOpportunity_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobPostingForm.aspx", false);
    }
}