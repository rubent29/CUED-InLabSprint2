using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CUED_InHomeForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["FirstName"] != null || Session["LastName"] != null)
        //{
        //    Label1.Text = "Login Successful. Welcome, " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString();
        //}
        //else
        //{
        //    Label1.Text = "Login unsuccessful";
        //}

        //Login.Visible = false;
        //RegisterButton.Visible = false;
    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployerForm.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginForm.aspx");
    }
}