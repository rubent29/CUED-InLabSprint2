﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class Login_v3_LoginForm : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torico";
    string LastUpdated = DateTime.Today.ToString();

    //create sql connection and links application to adventureworks database
    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "Data Source=localhost;Initial Catalog = CuedInEmployer; Integrated Security = True";

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
            //try
            //{
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                sc.ConnectionString = @"Server=LOCALHOST;Database=CuedIn;Trusted_Connection=Yes;";
                lblStatus.Text = "Database Connection Successful";

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
                        //Session["FirstName"] = FirstName.Text;
                        //Session["LastName"] = LastName.Text;
                        lblStatus.Text = "Success!";
                            Response.Redirect("CUED-InHomeForm.aspx");
                            //this.Hide();
                            //RegisterButton.Visible = false;
                        }
                        else
                            lblStatus.Text = "Password is wrong.";
                    }
                }
                else // if the username doesn't exist, it will show failure
                    lblStatus.Text = "Login failed.";

                sc.Close();
            //}
            //catch
            //{
            //    lblStatus.Text = "Database Error.";
            //}
        }
    }





    protected void CreateAccount_Click(object sender, EventArgs e)
    {


        Response.Redirect("EmployerForm.aspx");

    }

    protected void ForgetPasswordLink_Click(object sender, EventArgs e)
    {

    }
}