using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class EditAccount : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();

    //create sql connection and links application to adventureworks database
    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection DBconnection = new SqlConnection("Data Source=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;Initial Catalog=CuedIn;Persist Security Info=True;User ID=admin;Password=dukedog19");
        //DBconnection.Open();
        //SqlCommand cmd = new SqlCommand("Select * from Employer where companyEmail = @companyEmail", DBconnection);

        //FirstName.Text = "John";
        //LastName.Text = "Doe";
        //CompanyName.Text = "ABC LLC";
        //CompanyEmail.Text = "abc@dukes.jmu.edu";
        //StreetAddress.Text = "123 Abc Street";
        //City.Text = "Harrisonburg";
        //State.Text = "VA";
        //Country.Text = "United States";
        //ZipCode.Text = "22801";
        //PasswordOne.Text = "abcabc";
        //PasswordTwo.Text = "abcabc";
        //TextBoxQuestion.Text = "What is your school's mascot?";
        //TextBoxAnswer.Text = "Duke Dog";



    }

    protected void SaveChanges_Button_Click(object sender, EventArgs e)


    {
        //SqlConnection conn = new SqlConnection("Data Source = cuedinsprint2.cfe6p3jbjixj.us - east - 1.rds.amazonaws.com; Initial Catalog = CuedIn; Persist Security Info = True; User ID = admin; Password = dukedog19");
        //SqlCommand cmd = new SqlCommand(String.Format("update employer set FirstName = '{1}', LastName = '{2}', CompanyName = '{3}', CompanyEmail = '{4}', StreetAddress = '{5}', City = '{6}', State = '{7}', Country = '{8}', ZipCode = '{9}', Password = '{10}', ConfirmPassword = '{11}', Question = '{12}', Answer = '{13}')", HttpUtility.HtmlEncode(FirstName.Text.Trim()), HttpUtility.HtmlEncode(LastName.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.Text.Trim()),
        //                            HttpUtility.HtmlEncode(CompanyEmail.Text.Trim()), HttpUtility.HtmlEncode(StreetAddress.Text.Trim()), HttpUtility.HtmlEncode(City.Text.Trim()),
        //                            HttpUtility.HtmlEncode(State.Text.Trim()), HttpUtility.HtmlEncode(Country.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(ZipCode.Text.Trim()),
        //                            HttpUtility.HtmlEncode(PasswordOne.Text.Trim()), HttpUtility.HtmlEncode(PasswordTwo.Text.Trim()), HttpUtility.HtmlEncode(TextBoxQuestion.Text.Trim()), HttpUtility.HtmlEncode(TextBoxAnswer.Text.Trim()), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated)), conn);

        //conn.Open();
        //cmd.ExecuteNonQuery();
        //conn.Close();
        //EditLabel.Visible = false;
        //Response.Write("<font size=7 color=green>All Your Data is Saved.</font>");

    }

}