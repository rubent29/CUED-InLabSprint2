using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.ApplicationServices;

public partial class EmployerForm1 : System.Web.UI.Page
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
            && ZipCode.Text != "" && PasswordOne.Text != "" && PasswordTwo.Text != "" && TextBoxQuestion.Text != "" && TextBoxAnswer.Text != "")
        {

            Employer emp = new Employer(HttpUtility.HtmlEncode(FirstName.Text.Trim()), HttpUtility.HtmlEncode(LastName.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.Text.Trim()),
                                    HttpUtility.HtmlEncode(CompanyEmail.Text.Trim()), HttpUtility.HtmlEncode(StreetAddress.Text.Trim()), HttpUtility.HtmlEncode(City.Text.Trim()), HttpUtility.HtmlEncode(State.Text.Trim()),
                                    HttpUtility.HtmlEncode(Country.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(ZipCode.Text.Trim()), HttpUtility.HtmlEncode(PasswordOne.Text.Trim()), HttpUtility.HtmlEncode(PasswordTwo.Text.Trim())
                                    , (TextBoxQuestion.Text.Trim()), (TextBoxAnswer.Text.Trim()), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));


            System.Data.SqlClient.SqlCommand MaxStudent = new System.Data.SqlClient.SqlCommand();
            MaxStudent.Connection = DBconnection;

            DBconnection.Open();

            string employerInfo = "insert into [dbo].[Employer] values (@firstName, @lastName, @companyName, @companyEmail, @streetAddress, @city, @state, @country, @zipCode, @tier, @passwordOne, @passwordTwo, @question, @answer, @lastUpdatedBy, @lastUpdated)";
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
            insertEmployer.Parameters.AddWithValue("@tier", "Free");
            insertEmployer.Parameters.AddWithValue("@passwordOne", PasswordHash.HashPassword(emp.getPasswordOne()));
            insertEmployer.Parameters.AddWithValue("@passwordTwo", PasswordHash.HashPassword(emp.getPasswordTwo()));
            insertEmployer.Parameters.AddWithValue("@question", emp.getQuestion());
            insertEmployer.Parameters.AddWithValue("@answer", emp.getAnswer());
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
            setPass.CommandText = "insert into[dbo].[Account] values (@Username, @Password, @LastUpdatedBy, @LastUpdated)";
            setPass.Parameters.Add(new SqlParameter("@Username", CompanyEmail.Text));
            setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(PasswordOne.Text)));
            setPass.Parameters.Add(new SqlParameter("@LastUpdatedBy", emp.getLastUpdatedBy()));
            setPass.Parameters.Add(new SqlParameter("@LastUpdated", emp.getLastUpdated()));

            setPass.ExecuteNonQuery();

            DBconnection.Close();

            labelStatus.Text = "User committed!";
            Response.Redirect("FreeCuedInHomeForm.aspx", false);
        }
        else
            labelStatus.Text = "Passwords Do Not Match";


    }
    else
        labelStatus.Text = "Fill all fields.";

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

        SqlCommand cmd = new SqlCommand("Select count(*) from Employer where CompanyEmail = @Username AND Password = @Password", sc); //this needs to be a parameterized query
        cmd.Parameters.AddWithValue("@username", CompanyEmail.Text);
        cmd.Parameters.AddWithValue("@password", PasswordOne.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        sc.Open();
        int i = cmd.ExecuteNonQuery();
        sc.Close();
        if (dt.Rows.Count > 0)
        {
            sc.Open();
            Session["username"] = CompanyEmail.Text;
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
        TextBoxQuestion.Text = "What is your school's mascot?";
        TextBoxAnswer.Text = "Duke Dog";
    }

    //protected void txtUserName_TextChanged(object sender, EventArgs e)
    //{
    //    string constr = WebConfigurationManager.ConnectionStrings[@"server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;"].ConnectionString;
    //    SqlConnection con = new SqlConnection(constr);
    //    SqlCommand cmd = new SqlCommand("select CompanyEmail from Employer where CompanyEmail = @CompanyEmail", con);
    //    cmd.Parameters.AddWithValue("@CompanyEmail", CompanyEmail.Text);
    //    bool is_exists = false;
    //    try
    //    {
    //        con.Open();
    //        is_exists = cmd.ExecuteScalar() == null ? false : true;
    //    }
    //    catch (Exception ex)
    //    {
            
    //    }
    //    finally
    //    {
    //        con.Close();
    //    }
    //    if (is_exists)
    //    {
    //        txtUserName.Text = "This UserName is already exists. Please Choose another one";
    //        CompanyEmail.Focus();
    //    }
    //}

}