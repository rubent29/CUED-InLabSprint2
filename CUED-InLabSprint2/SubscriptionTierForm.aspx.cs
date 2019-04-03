using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_SubscriptionTierForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if ((HttpContext.Current.Request.UrlReferrer == null))
        //{
        //    Response.Redirect("LoginForm.aspx");
        //}
    }



    protected void PremiumTierButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("PremiumEmployerForm.aspx", false);
    }


    protected void FreeTierButton_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EmployerForm.aspx", false);
    }
}