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

    }

    protected void FreeTierButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployerForm.aspx", false);
    }

    protected void PremiumTierButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubscriptionTierForm.aspx", false);
    }

}