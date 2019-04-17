using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.ApplicationServices;
using System.Configuration;

//need to adjust for students logging in too
public partial class Login_v3_LoginForm : System.Web.UI.Page
{ 
    string LastUpdatedBy = "Ruben Torico";
    string LastUpdated = DateTime.Today.ToString();

    //create sql connection and links application to adventureworks database
    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

protected void Page_Load(object sender, EventArgs e)
{
    {
        try
        {
            DBconnection.ConnectionString = ConnectionString;
        }

        catch (Exception)
        {
            //DisplayBox.Text = "Error connecting to Database";
        }
    }
}

    //protected void Login_Click(object sender, EventArgs e)/////////OLD LOGIN////////////////////////////////
    //{
    //        {
    //        //// connect to database to retrieve stored password string

    //        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
    //        sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
    //        lblStatus.Text = "Database Connection Successful";



    //        Session["Test"] = Username.Text;


    //        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
    //        findPass.Connection = sc;
    //        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
    //        findPass.CommandText = "select Password from Account where Username = @Username; SELECT Password from Student where Email = @Username";
    //        findPass.Parameters.Add(new SqlParameter("@Username", HttpUtility.HtmlEncode(Username.Text)));
    //        sc.Close();
    //        sc.Open();
    //        SqlDataReader reader = findPass.ExecuteReader(); // create a reader


    //            if (reader.HasRows) // if the username exists, it will continue
    //        {
    //            while (reader.Read()) // this will read the single record that matches the entered username
    //            {
    //                string storedHash = reader["Password"].ToString(); // store the database password into this variable

    //                    if (PasswordHash.ValidatePassword(Password.Text, storedHash)) // if the entered password matches what is stored, it will show success
    //                    {

    //                        Session["UserSession"] = Username.Text;
    //                        reader.Close();

    //                        lblStatus.Text = "Success!";

    //                        sc.Close();
    //                        sc.Open();
    //                        //Redirect premium accounts to premium pages and free to free pages based on tier

    //                        String tier = "Select (Tier) from [dbo].[Employer] where CompanyEmail = @Username; Select (Email) from [dbo].[Student] where Email = @Username" ;

    //                        System.Data.SqlClient.SqlCommand tierFinder = new System.Data.SqlClient.SqlCommand(tier, sc);
    //                        tierFinder.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(Username.Text));
    //                        String accountTier = Convert.ToString(tierFinder.ExecuteScalar());
    //                        if (accountTier == "Premium")
    //                        {
    //                            Response.Redirect("CUED-InHomeAccountForm.aspx");
    //                            sc.Close();
    //                        }
    //                        else if (accountTier == "Free")
    //                        {
    //                            Response.Redirect("FreeCuedInHomeForm.aspx");
    //                            sc.Close();
    //                        }
    //                        else
    //                        { 

    //                        System.Data.SqlClient.SqlCommand getUsername = new System.Data.SqlClient.SqlCommand();
    //                        getUsername.Connection = sc;
    //                        sc.Open();
    //                        getUsername.CommandText = "Select Username from Account where Username = @Username; Select Username from Student where Email = @Username";
    //                        getUsername.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(Username.Text));
    //                        Session["Username"] = getUsername.ExecuteScalar();
    //                        sc.Close();
    //                    }
    //                }
    //                else
    //                    lblStatus.Text = "Password is wrong.";
    //            }
    //        }
    //        else // if the username doesn't exist, it will show failure
    //            lblStatus.Text = "Login failed.";

    //        sc.Close();



    //            System.Data.SqlClient.SqlCommand findStuPass = new System.Data.SqlClient.SqlCommand();
    //            findStuPass.Connection = sc;
    //            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
    //            findStuPass.CommandText = "select Password from Student where Email = @Username";
    //            findStuPass.Parameters.Add(new SqlParameter("@Username", Username.Text));
    //            sc.Close();
    //            sc.Open();
    //            SqlDataReader stuReader = findStuPass.ExecuteReader();

    //            if (stuReader.HasRows) // if the username exists, it will continue
    //            {
    //                while (stuReader.Read()) // this will read the single record that matches the entered username
    //                {
    //                    string storedHash = stuReader["Password"].ToString(); // store the database password into this variable

    //                    if (PasswordHash.ValidatePassword(Password.Text, storedHash)) // if the entered password matches what is stored, it will show success
    //                    {

    //                        Session["UserSession"] = Username.Text;
    //                        stuReader.Close();

    //                        lblStatus.Text = "Success!";

    //                        sc.Close();
    //                        //sc.Open();

    //                        System.Data.SqlClient.SqlCommand getStuUser = new System.Data.SqlClient.SqlCommand();
    //                        getStuUser.Connection = sc;
    //                        sc.Open();
    //                        getStuUser.CommandText = "Select Email from Student where Email = @Username";
    //                        getStuUser.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(Username.Text));
    //                        Session["Username"] = getStuUser.ExecuteScalar();
    //                        sc.Close();
    //                        Response.Redirect("StudentLandingForm.aspx");
    //                    }
    //                    else
    //                        lblStatus.Text = "Password is wrong.";
    //                }
    //            }
    //            else // if the username doesn't exist, it will show failure
    //                lblStatus.Text = "Login failed.";

    //            sc.Close();



    //        }
    //}

    protected void Login_Click(object sender, EventArgs e)///NEW LOGIN///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    {
        {
            //// connect to database to retrieve stored password string
            //try
            //{
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
            lblStatus.Text = "Database Connection Successful";

            //sc.Open();

            SqlCommand cmd = new SqlCommand("Select count(*) from Account where username = @username AND password = @password", sc); //this needs to be a parameterized query
            cmd.Parameters.AddWithValue("@username", Username.Text);
            cmd.Parameters.AddWithValue("@password", Password.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sc.Open();
            int i = cmd.ExecuteNonQuery();
            sc.Close();
            if (dt.Rows.Count > 0)
            {
                sc.Open();
                Session["username"] = Username.Text;
                cmd.CommandText = "Select FirstName from Employer where CompanyEmail = @Username";
                string fname = (string)cmd.ExecuteScalar();
                HttpContext.Current.Session["FirstName"] = fname;

                sc.Close();

                sc.Open();
                cmd.CommandText = "Select LastName from Employer where CompanyEmail = @Username";
                string lname = (string)cmd.ExecuteScalar();
                Session["LastName"] = lname;
                sc.Close();
                
            }
            sc.Open();


           
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select Password from Account where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", Username.Text));

            SqlDataReader reader = findPass.ExecuteReader(); // create a reader

            if (reader.HasRows) // if the username exists, it will continue
            {
                while (reader.Read()) // this will read the single record that matches the entered username
                {
                    string storedHash = reader["Password"].ToString(); // store the database password into this variable

                    if (PasswordHash.ValidatePassword(Password.Text, storedHash)) // if the entered password matches what is stored, it will show success
                    {
                      
                        Session["Username"] = Username.Text;
                        reader.Close();
                        //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;"].ConnectionString);
                        SqlCommand com = new SqlCommand("Select Username from Account where Username = @Username", sc);
                        com.Parameters.AddWithValue("@Username", Username.Text);
                        //com.Connection = conn;
                        SqlDataReader read = com.ExecuteReader();
                        while (read.Read())
                        {
                            Session["Username"] = read.GetName(0);
                        }




                        lblStatus.Text = "Success!";
                        Session["LoggedIn"] = true;
                        Response.Redirect("CUED-InHomeAccountForm.aspx");
                        //RegisterButton.Visible = false;

                        System.Data.SqlClient.SqlCommand getUsername = new System.Data.SqlClient.SqlCommand();
                        getUsername.Connection = sc;
                        sc.Open();
                        getUsername.CommandText = "Select Username from Account where Username = @Username";
                        getUsername.Parameters.AddWithValue("@Username", Username.Text);
                        Session["Username"] = getUsername.ExecuteScalar();
                        sc.Close();
                    }
                    else
                        lblStatus.Text = "Password is wrong.";
                }
            }
            else // if the username doesn't exist, it will show failure
                lblStatus.Text = "Login failed.";

          
            sc.Close();
            


        }
    }


    protected void CreateAccount_Click(object sender, EventArgs e)
{


    Response.Redirect("EmployerForm.aspx");

}

protected void ForgetPasswordLink_Click(object sender, EventArgs e)
{

    Response.Redirect("ForgotPassword.aspx");

    }
}

