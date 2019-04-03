using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditAccountLoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        //SqlConnection DBconnection = new SqlConnection();
        //SqlCommand cmd = new SqlCommand();
        //SqlDataReader reader;

        //DBconnection.ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
        //cmd.Connection = DBconnection;
        //cmd.CommandText = String.Format("select * from Employer where username ='{0}' and password = '{1}'", Username.Text + Password.Text);

        //DBconnection.Open();
        //reader = cmd.ExecuteReader();
        //if (reader.Read())
        //{
        //    HttpCookie cookie = new HttpCookie("edit");
        //    cookie.Values.Add("companyEmail", Username.Text);
        //    Response.Cookies.Add(cookie);
        //    DBconnection.Close();
        //    Response.Redirect("EditAccount.aspx");
        //}
        //else
        //    lblStatus.Text = "Username or Password is Invalid";
        //DBconnection.Close();
    }

    protected void ForgetPasswordLink_Click(object sender, EventArgs e)
    {

    }
}