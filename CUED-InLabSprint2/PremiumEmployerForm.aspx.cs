using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class PremiumEmployerForm1 : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
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

    protected void Insert_Button_Click(object sender, EventArgs e)
    {
        if (FirstName.Text != "" && LastName.Text != "" && CompanyName.Text != "" && CompanyEmail.Text != "" && StreetAddress.Text != "" && City.Text != "" && Country.Text != ""
            && ZipCode.Text != "" && PasswordOne.Text != "" && PasswordTwo.Text != "")
        {

            Employer emp = new Employer(HttpUtility.HtmlEncode(FirstName.Text.Trim()), HttpUtility.HtmlEncode(LastName.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.Text.Trim()),
                                    HttpUtility.HtmlEncode(CompanyEmail.Text.Trim()), HttpUtility.HtmlEncode(StreetAddress.Text.Trim()), HttpUtility.HtmlEncode(City.Text.Trim()), HttpUtility.HtmlEncode(State.Text.Trim()),
                                    HttpUtility.HtmlEncode(Country.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(ZipCode.Text.Trim()), HttpUtility.HtmlEncode(PasswordOne.Text.Trim()), HttpUtility.HtmlEncode(PasswordTwo.Text.Trim()),
                                    HttpUtility.HtmlEncode(TextBoxQuestion.Text.Trim()), HttpUtility.HtmlEncode(TextBoxAnswer.Text.Trim()),
                                    HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));




            System.Data.SqlClient.SqlCommand MaxStudent = new System.Data.SqlClient.SqlCommand();
            MaxStudent.Connection = DBconnection;

            DBconnection.Open();

            string employerInfo = "insert into [dbo].[Employer] values (@firstName, @lastName, @companyName, @companyEmail, @streetAddress, @city, @state, @country, @zipCode, @passwordOne, @passwordTwo, @lastUpdatedBy, @lastUpdated)";
            SqlCommand insertEmployer = new SqlCommand(employerInfo, DBconnection);
            insertEmployer.Parameters.AddWithValue("@firstName", emp.getFirstName());
            insertEmployer.Parameters.AddWithValue("@lastName", emp.getLastName());
            insertEmployer.Parameters.AddWithValue("@companyName", emp.getCompanyName());
            insertEmployer.Parameters.AddWithValue("@companyEmail", emp.getCompanyEmail());
            insertEmployer.Parameters.AddWithValue("@streetAddress", emp.getStreetAddress());
            insertEmployer.Parameters.AddWithValue("@city", emp.getCity());
            insertEmployer.Parameters.AddWithValue("@state", emp.getState());
            insertEmployer.Parameters.AddWithValue("@country", emp.getCountry());
            insertEmployer.Parameters.AddWithValue("@zipCode", emp.getZipCode());
            insertEmployer.Parameters.AddWithValue("@passwordOne", emp.getPasswordOne());
            insertEmployer.Parameters.AddWithValue("@passwordTwo", emp.getPasswordTwo());
            insertEmployer.Parameters.AddWithValue("@lastUpdatedBy", emp.getLastUpdatedBy());
            insertEmployer.Parameters.AddWithValue("@lastUpdated", emp.getLastUpdated());

            insertEmployer.ExecuteNonQuery();
            DBconnection.Close();
            DBconnection.Open();

            if (PasswordOne.Text == PasswordTwo.Text)
            {
                System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                setPass.Connection = DBconnection;

                // INSERT PASSWORD RECORD AND CONNECT TO USER
                setPass.CommandText = "insert into[dbo].[Account] values (@Username, @Password)";
                setPass.Parameters.Add(new SqlParameter("@Username", CompanyEmail.Text));
                setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(PasswordOne.Text))); // hash entered password
                setPass.ExecuteNonQuery();

                DBconnection.Close();

                labelStatus.Text = "User committed!";
                Response.Redirect("CUED-InHomeAccountForm.aspx", false);
            }
            else
                labelStatus.Text = "Passwords Do Not Match";


        }
        else
            labelStatus.Text = "Fill all fields.";
    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        FirstName.Text = "John";
        LastName.Text = "Doe";
        CompanyName.Text = "ABC LLC";
        CompanyEmail.Text = "abc@dukes.jmu.edu";
        StreetAddress.Text = "123 Abc Street";
        City.Text = "Harrisonburg";
        State.Text = "VA";
        Country.Text = "United States";
        ZipCode.Text = "22801";
        PasswordOne.Text = "abcabc";
        PasswordTwo.Text = "abcabc";
    }
}