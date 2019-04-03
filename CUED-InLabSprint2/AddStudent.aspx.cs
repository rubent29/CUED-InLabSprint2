using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class AddStudent1 : System.Web.UI.Page
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
        DBconnection.Open();
        SqlCommand checkuserNameDB = new SqlCommand("SELECT COUNT (*) FROM [dbo].[Account] WHERE ([userName] = @userName)", DBconnection);
        checkuserNameDB.Parameters.AddWithValue("@userName", HttpUtility.HtmlEncode(StudentEmail.Text));
        int userNameNum = (int)checkuserNameDB.ExecuteScalar();


        DBconnection.Close();

        if (userNameNum > 0)
        {
            //checks if name and code exists
            EmailLabel.Text = "Email Unavailable";
        }




        DBconnection.Close();
        int age = agecalc();
        

        if (FirstName.Text != "" && LastName.Text != "" && MiddleName.Text != "" && StudentEmail.Text != "" && StreetAddress.Text != "" && City.Text != "" && Country.Text != ""
           && ZipCode.Text != "" && PasswordOne.Text != "" && PasswordTwo.Text != "" && DateOfBirth.Text !="" && Country.Text != "")
        {
            //public Student( DateTime dob, int age, String zipCode, String passwordOne, String passwordTwo, String LastUpdatedBy, String LastUpdated)


            Student stu = new Student(HttpUtility.HtmlEncode(FirstName.Text.Trim()), HttpUtility.HtmlEncode(LastName.Text.Trim()), HttpUtility.HtmlEncode(MiddleName.Text.Trim()),
                                    HttpUtility.HtmlEncode(StudentEmail.Text.Trim()), HttpUtility.HtmlEncode(StreetAddress.Text.Trim()), HttpUtility.HtmlEncode(City.Text.Trim()),
                                    HttpUtility.HtmlEncode(State.Text.Trim()), HttpUtility.HtmlEncode(Country.SelectedItem.Text.Trim()), //HttpUtiliy.HtmlEncode(School.SelectedItem.Te
                                    DateTime.Parse(HttpUtility.HtmlEncode(DateOfBirth.Text.Trim())),int.Parse(HttpUtility.HtmlEncode(age)),
                                    HttpUtility.HtmlEncode(ZipCode.Text.Trim()),HttpUtility.HtmlEncode(PasswordOne.Text.Trim()), 
                                    HttpUtility.HtmlEncode(PasswordTwo.Text.Trim()), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));


            System.Data.SqlClient.SqlCommand MaxStudent = new System.Data.SqlClient.SqlCommand();
            MaxStudent.Connection = DBconnection;

            DBconnection.Open();


            string stuInfo = "insert into [dbo].[student] values (@firstName, @lastName, @middleName, @email, @streetAddress, @city, @state, @zipCode, @country, @DateOfBirth, @Age, @passwordOne, @passwordTwo, @lastUpdatedBy, @lastUpdated)";
            SqlCommand insert = new SqlCommand(stuInfo, DBconnection);
            insert.Parameters.AddWithValue("@firstName", stu.getFirstName());
            insert.Parameters.AddWithValue("@lastName", stu.getLastName());
            insert.Parameters.AddWithValue("@middleName", stu.getMiddleName());
            insert.Parameters.AddWithValue("@email", StudentEmail.Text);
            insert.Parameters.AddWithValue("@streetAddress", stu.getStreetAddress());
            insert.Parameters.AddWithValue("@city", stu.getCity());
            insert.Parameters.AddWithValue("@state", stu.getState());
            insert.Parameters.AddWithValue("@country", stu.getCountry());
            insert.Parameters.AddWithValue("@zipCode", stu.getZipCode());
            insert.Parameters.AddWithValue("@DateOfBirth", stu.getDateOfBirth());
            insert.Parameters.AddWithValue("@Age", stu.getAge());
            insert.Parameters.AddWithValue("@passwordOne", stu.getPasswordOne());
            insert.Parameters.AddWithValue("@passwordTwo", stu.getPasswordTwo());
            insert.Parameters.AddWithValue("@lastUpdatedBy", stu.getLastUpdatedBy());
            insert.Parameters.AddWithValue("@lastUpdated", stu.getLastUpdated());

            insert.ExecuteNonQuery();
            DBconnection.Close();
            DBconnection.Open();





        }




    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        FirstName.Text = "Plain";
        LastName.Text = "Jane";
        MiddleName.Text = "Dukes";
        StudentEmail.Text = "student@dukes.jmu.edu";
        StreetAddress.Text = "123 Abc Street";
        City.Text = "Harrisonburg";
        State.Text = "VA";
        Country.Text = "United States";
        ZipCode.Text = "22801";
        DateOfBirth.Text = "09/21/1999";
        PasswordOne.Text = "newstu1";
        PasswordTwo.Text = "newstu1";
    }




    protected int agecalc()
    {
        int age;
        age = DateTime.Now.Year - DateTime.Parse(DateOfBirth.Text).Year;
        if (DateTime.Now.DayOfYear < DateTime.Parse(DateOfBirth.Text).DayOfYear)
        {
            age = age - 1;
        }

        return age;
    }
}