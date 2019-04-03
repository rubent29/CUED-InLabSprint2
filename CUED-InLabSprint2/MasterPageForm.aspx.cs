using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void RegisterBusinessButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubscriptionTierForm.aspx", false);
    }

    protected void RegisterStudentButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStudent.aspx", false);
    }
}