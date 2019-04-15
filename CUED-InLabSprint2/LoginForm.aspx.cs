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

protected void Login_Click(object sender, EventArgs e)
{
    {
        //// connect to database to retrieve stored password string

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
        lblStatus.Text = "Database Connection Successful";



        Session["Test"] = Username.Text;


        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
        findPass.Connection = sc;
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        findPass.CommandText = "select Password from Account where Username = @Username";
        findPass.Parameters.Add(new SqlParameter("@Username", Username.Text));
        sc.Close();
        sc.Open();
        SqlDataReader reader = findPass.ExecuteReader(); // create a reader

        if (reader.HasRows) // if the username exists, it will continue
        {
            while (reader.Read()) // this will read the single record that matches the entered username
            {
                string storedHash = reader["Password"].ToString(); // store the database password into this variable

                if (PasswordHash.ValidatePassword(Password.Text, storedHash)) // if the entered password matches what is stored, it will show success
                {

                    Session["UserSession"] = Username.Text;
                    reader.Close();





                    lblStatus.Text = "Success!";

                    sc.Close();
                    sc.Open();
                    //Redirect premium accounts to premium pages and free to free pages based on tier

                    String tier = "Select (Tier) from [dbo].[Employer] where CompanyEmail = @Username";

                    System.Data.SqlClient.SqlCommand tierFinder = new System.Data.SqlClient.SqlCommand(tier, sc);
                    tierFinder.Parameters.AddWithValue("@Username", Username.Text);
                    String accountTier = Convert.ToString(tierFinder.ExecuteScalar());
                    if (accountTier == "Premium")
                    {
                        Response.Redirect("CUED-InHomeAccountForm.aspx");
                        sc.Close();
                    }
                    else
                    {
                        Response.Redirect("FreeCuedInHomeForm.aspx");
                        sc.Close();
                    }




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