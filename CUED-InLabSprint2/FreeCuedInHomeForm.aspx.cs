using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FreeCuedInHomeForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if ((HttpContext.Current.Request.UrlReferrer == null))
        //{
        //    Response.Redirect("LoginForm.aspx");
        //}
        Label1.BackColor = System.Drawing.Color.Transparent;
        if (Session["Test"] != null)
        {
            Label1.Text = "Welcome, " + (Session["Test"].ToString());
        }
        else if (Session["CreateUser"] != null)
        {
            Label1.Text = "Welcome, " + (Session["CreateUser"].ToString());
        }
    }

    protected void UpgradeButton_Click(object sender, EventArgs e)
    {

    }
}