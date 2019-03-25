using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography; // must be used
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class CreateUserForm : System.Web.UI.Page
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

    protected void Create_Click(object sender, EventArgs e)
    {
        if (Password.Text != "" && Username.Text != "") // all fields must be filled out
        {
            // COMMIT VALUES
            try
            {
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                DBconnection.ConnectionString = "Data Source=localhost;Initial Catalog = CuedInEmployer; Integrated Security = True";
                lblStatus.Text = "Database Connection Successful";

                DBconnection.Open();

                System.Data.SqlClient.SqlCommand createUser = new System.Data.SqlClient.SqlCommand();
                createUser.Connection = sc;
                //INSERT USER RECORD
                createUser.CommandText = "insert into[dbo].[Account] values(@UserName, @Password)";
                createUser.Parameters.Add(new SqlParameter("@FName", Username.Text));
                createUser.Parameters.Add(new SqlParameter("@LName", Password.Text)); 
                createUser.ExecuteNonQuery();

                //System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                //setPass.Connection = sc;
                //// INSERT PASSWORD RECORD AND CONNECT TO USER
                //setPass.CommandText = "insert into[dbo].[Account] values(@Username, @Password)";
                //setPass.Parameters.Add(new SqlParameter("@Username", Username.Text));
                //setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(Password.Text))); // hash entered password
                //setPass.ExecuteNonQuery();

                sc.Close();

                lblStatus.Text = "User committed!";
                Username.Enabled = false;
                Password.Enabled = false;
                CreateAccount.Enabled = false;
            }
            catch
            {
                lblStatus.Text = "Database Error - User not committed.";
            }
        }
        else
            lblStatus.Text = "Fill all fields.";
    }
}
