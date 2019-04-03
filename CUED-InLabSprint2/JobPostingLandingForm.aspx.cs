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
        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }
    }


    protected void CreateAnOpportunity_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobPostingForm.aspx", false);
    }

    protected void ViewYourPosting_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobPostingForm.aspx", false);
    }


    //protected void LogOut_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("JobPostingForm.aspx", false);
    //}

   
}