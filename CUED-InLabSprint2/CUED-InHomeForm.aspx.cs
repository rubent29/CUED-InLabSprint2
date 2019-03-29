using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
        //Response.Write(Request.Form.Get("text"));
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST;Database=CuedIn;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand loginReader = new System.Data.SqlClient.SqlCommand();
        loginReader.Connection = sc;
        loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer1;";

        SqlDataReader reader1 = loginReader.ExecuteReader();
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        //loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer1;";
        while (reader1.Read())
        {

            string name = "Welcome, " + reader1["FirstName"].ToString() + " " + reader1["LastName"].ToString();
            Label1.Text = name;
        }





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