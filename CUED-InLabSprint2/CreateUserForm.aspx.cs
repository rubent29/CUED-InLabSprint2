using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography; // must be used
using System.Data.SqlClient;
using System.Web.ApplicationServices;
using System.Web.Compilation;

public partial class CreateUserForm : System.Web.UI.Page
{
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

    protected void Create_Click(object sender, EventArgs e)
    {
        if (FirstName.Text != "" && LastName.Text != "" && Password.Text != "" && Username.Text != "") // all fields must be filled out
        {
                // COMMIT VALUES
                //try
                //{
                System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
                DBconnection.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;"; // connect to PBKDF2 database
                lblStatus.Text = "Database Connection Successful";

                DBconnection.Open();

                System.Data.SqlClient.SqlCommand createUser = new System.Data.SqlClient.SqlCommand();
                createUser.Connection = DBconnection;
                // INSERT USER RECORD
                createUser.CommandText = "insert into[dbo].[Client] values(@FName, @LName, @Username)";
                createUser.Parameters.Add(new SqlParameter("@FName", FirstName.Text));
                createUser.Parameters.Add(new SqlParameter("@LName", LastName.Text));
                createUser.Parameters.Add(new SqlParameter("@Username", Username.Text));
                createUser.ExecuteNonQuery();

                System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                setPass.Connection = DBconnection;

                // INSERT PASSWORD RECORD AND CONNECT TO USER
                setPass.CommandText = "insert into[dbo].[Account] values (@Username, @Password)";
                setPass.Parameters.Add(new SqlParameter("@Username", Username.Text));
                setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(Password.Text))); // hash entered password
                setPass.ExecuteNonQuery();

            Session["FirstName"] = FirstName.Text;
            Session["LastName"] = LastName.Text;

            DBconnection.Close();

                lblStatus.Text = "User committed!";
                Response.Redirect("LoginForm.aspx", false);

            //}
            //catch
            //{
            //    lblStatus.Text = "Database Error - User not committed.";
            //}
        }
        else
            lblStatus.Text = "Fill all fields.";
    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("userLogin.aspx", false);
    }

    protected void lnkAnother_Click(object sender, EventArgs e)
    {
        FirstName.Enabled = true;
        LastName.Enabled = true;
        Username.Enabled = true;
        Password.Enabled = true;
        CreateAccount.Enabled = true;
        FirstName.Text = "";
        LastName.Text = "";
        Username.Text = "";
        Password.Text = "";
    }
}
