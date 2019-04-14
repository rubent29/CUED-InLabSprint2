using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AccountInformationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get employer id info to call from sql
        //maybe use gridview to display sql data? if not, set labels
        //use session variable to get sql select?
    }


    protected void LoginAgainButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditAccountLoginForm.aspx");
    }
}