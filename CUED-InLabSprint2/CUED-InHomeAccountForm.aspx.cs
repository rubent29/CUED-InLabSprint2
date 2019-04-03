using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class CUED_InHomeForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        if(!Page.IsPostBack)
        {
            if(Session["username"] == null)
            {
                HttpContext.Current.Response.Write("<script> alert('Your session is expired.'); window.location.href = 'Sign_in.aspx");
            }
            else
            {
                HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                HttpContext.Current.Response.Cache.SetNoStore();

                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
            }
        }

        HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoStore();

        HttpContext.Current.Response.ClearHeaders();
        HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
        HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
        //HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
        //HttpContext.Current.Response.AddHeader("Expires", "0");
        //System.Data.SqlClient.SqlConnection DBconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString;"].ConnectionString);
        //String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

        //DBconnection.Open();
        //System.Data.SqlClient.SqlCommand newCmd = new System.Data.SqlClient.SqlCommand();
        //newCmd.Connection = DBconnection;
        //newCmd.CommandText = "Select Username from Account where username = '" + (string)(Session)["username"] + "'";
        //DBconnection.Close();
        //Label1.Text = "Welcome" + (string)(Session)["username"];
        Label1.BackColor = System.Drawing.Color.Transparent;
        //Label1.Text = "Welcome, " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString(); //THIS WAS THE CODE THAT WAS SHOWING THE CORRECT NAMES, BUT KEPT GIVING ERRORS; DO NOT DELETE/////////////////////////////////////////
        Label1.Text = "Welcome, " + (string)(Session)["FirstName"] + " " + (string)(Session)["LastName"];
        //if (Session["Username"] != null) // || Session["LastName"] != null)
        //{
        //    Label1.Text = "Login Successful. Welcome, " + Session["username"].ToString(); //+ " " + Session["LastName"].ToString();
        //}
        //else
        //{
        //    Label1.Text = "Login unsuccessful";
        //}

        //Login.Visible = false;
        //RegisterButton.Visible = false;
        //Response.Write(Request.Form.Get("text"));

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
        sc.Open();
        System.Data.SqlClient.SqlCommand loginReader = new System.Data.SqlClient.SqlCommand();
        loginReader.Connection = sc;
        loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer;";

        SqlDataReader reader1 = loginReader.ExecuteReader();
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        //loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer;";
        //while (reader1.Read())
        //{

        //    string name = "Welcome, " + reader1["FirstName"].ToString() + " " + reader1["LastName"].ToString();
        //    Label1.Text = name;
        //}

    }

    //MAY NEED TO UNCOMMENT THE FOLLOWING 2 METHODS


    //protected void RegisterButton_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("EmployerForm.aspx");
    //}

    //protected void login_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("LoginForm.aspx");
    //}

    //protected void Page_Unload(object sender, EventArgs e)
    //{
    //    Session.Clear();
    //    HttpContext.Current.Response.Redirect("MasterPageForm.aspx");
    //}
    //public void LoginLink_OnClick(object sender, EventArgs args)
    //{
    //    FormsAuthentication.SignOut();
    //    FormsAuthentication.RedirectToLoginPage();
    //}

    protected void Page_Unload(object sender, EventArgs e)
    {
        //Session.Abandon();
        //Response.Cookies.Add(new HttpCookie(".ASPXFORMSAUTH", ""));
    }

    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon(); //Do we need this/is this correct??
    }
}