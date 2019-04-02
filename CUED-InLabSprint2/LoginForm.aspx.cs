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


public partial class Login_v3_LoginForm : System.Web.UI.Page
{

    //public Login_v3_LoginForm()
    //{
        
    //}

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
            //try
            //{
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
                lblStatus.Text = "Database Connection Successful";

                //sc.Open();


           
            SqlCommand cmd = new SqlCommand("Select count(*) from Account where username = '" + Username.Text + "' AND password = '" + Password.Text + "'", sc);
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
                //Response.Redirect("Redirectform.aspx");
                //Session.RemoveAll();
            }
            sc.Open();






            //string sql = "Select count(*) from Account where username = '" + Username.Text + "' AND password = '" + Password.Text + "'"; ///////
            //DBconnection.Open();
            ////SqlDataAdapter sda = new SqlDataAdapter("Select count(*) from Account where username = '" + Username.Text + "' AND password = '" + Password.Text + "'", sc);
            //DataTable dt = new DataTable();
            ////DataSet ds = new DataSet();
            ////sda.Fill(dt);
            //SqlCommand cmd = new SqlCommand(sql, DBconnection);
            //cmd.Parameters.AddWithValue("@Username", Username.Text);
            //cmd.Parameters.AddWithValue("@Password", Password.Text);
            //int i;
            //i = Convert.ToInt16(cmd.ExecuteScalar());
            //if (i == 1)
            //{
            //    Session["username"] = Username.Text;
            //}
            //DBconnection.Close();
            //if(dt.Rows.Count.ToString() == "1")
            //if (ds.Tables(0).Rows.Count > 0)
            //{
            //    Session["username"] = Username.Text;
            //    Session["username"] = ds.Tables(0).Rows(0)(0).ToString();
            //}
            // SqlCommand cmd = sc.CreateCommand();
            // cmd.CommandType = CommandType.Text;
            //SqlCommand cmd = new SqlCommand(sql, sc);
            //string output = cmd.ExecuteScalar().ToString();

            //if (output == "1")
            //{
            //    Session["username"] = Username.Text;
            //}


            // //if(cmd.ExecuteScalar().ToString() == "1")
            // //{
            // //    Session["Username"] = Username.Text;
            // //    Response.Redirect("CUED-InHomeAccountForm.aspx");
            // //}
            // cmd.CommandText = "Select count(*) from Account where username = '" + Username.Text + "' AND password = '" + Password.Text + "'";
            // cmd.ExecuteNonQuery();
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            // //da.SelectCommand = cmd;
            // DataTable Account = new DataTable();
            //// DataSet ds = new DataSet();
            // da.Fill(Account);
            // foreach(DataRow dr in  Account.Rows)
            // {
            //     Session["username"] = dr["username"].ToString();
            // }
            //String username;
            //String password;
            //username = dt.Tables[0].Rows[0]["username"].ToString();
            //password = dt.Tables[0].Rows[0]["password"].ToString();
            //if (username == Username.Text && password == Password.Text)
            //{
            //    Session["username"] = username;
            //    Response.Redirect("CUED-InHomeAccountForm.aspx");
            //}
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

            //SqlDataReader loginReader =
            //SqlDataReader loginReader = findPass.ExecuteReader();
            sc.Close();
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //sc.Open();
            //System.Data.SqlClient.SqlCommand loginReader = new System.Data.SqlClient.SqlCommand();
            //loginReader.Connection = sc;
            //loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer;";

            //SqlDataReader reader1 = loginReader.ExecuteReader();
            //// SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            ////loginReader.CommandText = "Select FirstName, LastName, CompanyEmail from Employer;";
            //while (reader1.Read())
            //{

            //    string name = reader1["FirstName"].ToString() + " " + reader1["LastName"].ToString() + " " + reader1["CompanyEmail"].ToString();
            //    lblStatus.Text = name;
            //}




            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //lblStatus.Text += reader["FirstName"].ToString();
            //lblStatus.Text += reader["LastName"].ToString();
            //lblStatus.Text += reader["CompanyEmail"].ToString();
            //string textValueReturned = loginReader.ExecuteScalar().ToString();
            //lblStatus.Text = textValueReturned;
            //loginReader.Parameters.Add(new SqlParameter("@Username", Username.Text));


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