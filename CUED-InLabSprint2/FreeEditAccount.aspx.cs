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

public partial class FreeEditAccount : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();

    //open sql connection: use webconfig
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            {

                string email = Session["Test"].ToString();
                //going to set labels using this session variable for the user email

                connection.Open();

                string cmd = "select * from employer where companyemail = '" + email + "';";
                //use session variable irl: rn just testing w cole

                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = new SqlCommand(cmd, connection);
                DataSet ds = new DataSet();
                adp.Fill(ds);


                if (ds.Tables[0].Rows.Count > 0)
                {
                    //set all the labels

                    FirstName.Text = ds.Tables[0].Rows[0].Field<string>(1); //sets first name label
                    LastName.Text = ds.Tables[0].Rows[0].Field<string>(2); //last name
                    CompanyName.Text = ds.Tables[0].Rows[0].Field<string>(3); //company
                    CompanyEmail.Text = ds.Tables[0].Rows[0].Field<string>(4); //email used
                    StreetAddress.Text = ds.Tables[0].Rows[0].Field<string>(5); //address
                    City.Text = ds.Tables[0].Rows[0].Field<string>(6); //city
                    State.Text = ds.Tables[0].Rows[0].Field<string>(7); //state
                    Country.Text = ds.Tables[0].Rows[0].Field<string>(8); //country
                    ZipCode.Text = ds.Tables[0].Rows[0].Field<string>(9); //zip
                    TextBoxQuestion.Text = ds.Tables[0].Rows[0].Field<string>(10); //country

                    //not showing employer id or any password or security question stuff (just seemed unneccessary but we can use this logic to add them in pretty easily)

                }


                connection.Close();
            }


        }

    }


    protected void SaveChanges_Button_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlCommand updateEmployer = new System.Data.SqlClient.SqlCommand();
        updateEmployer.Connection = connection;

        string email = Session["Test"].ToString();

        connection.Open();
        updateEmployer.CommandText = "UPDATE [dbo].[Employer] SET [FirstName] = @newFirstName, [LastName] = @newLastName, [CompanyName] = @newCompanyName, [StreetAddress] = @newStreetAddress, [City] = @newCity, [State] = @newState, [ZipCode] = @newZipcode, [Country] = @newCountry, [Password] = @newPasswordOne, [PasswordConfirmation] = @newPasswordTwo, [SecurityQuestion] = @newQuestion, [SecurityAnswer] = @newAnswer, [LastUpdatedBy] = @newLastUpdatedBy, [LastUpdated] = @newLastUpdated WHERE CompanyEmail = '" + email + "'";

        updateEmployer.Parameters.AddWithValue("@newFirstName", HttpUtility.HtmlEncode(FirstName.Text));
        updateEmployer.Parameters.AddWithValue("@newLastName", HttpUtility.HtmlEncode(LastName.Text));
        updateEmployer.Parameters.AddWithValue("@newCompanyName", HttpUtility.HtmlEncode(CompanyName.Text));
        updateEmployer.Parameters.AddWithValue("@newStreetAddress", HttpUtility.HtmlEncode(StreetAddress.Text));
        updateEmployer.Parameters.AddWithValue("@newCity", HttpUtility.HtmlEncode(City.Text));
        updateEmployer.Parameters.AddWithValue("@newState", HttpUtility.HtmlEncode(State.Text));
        updateEmployer.Parameters.AddWithValue("@newZipcode", HttpUtility.HtmlEncode(ZipCode.Text));
        updateEmployer.Parameters.AddWithValue("@newCountry", HttpUtility.HtmlEncode(Country.SelectedItem.Text));
        updateEmployer.Parameters.AddWithValue("@newPasswordOne", HttpUtility.HtmlEncode(PasswordHash.HashPassword(PasswordOne.Text)));
        updateEmployer.Parameters.AddWithValue("@newPasswordTwo", HttpUtility.HtmlEncode(PasswordHash.HashPassword(PasswordTwo.Text)));
        updateEmployer.Parameters.AddWithValue("@newQuestion", HttpUtility.HtmlEncode(TextBoxQuestion.Text));
        updateEmployer.Parameters.AddWithValue("@newAnswer", HttpUtility.HtmlEncode(PasswordHash.HashPassword(TextBoxAnswer.Text)));
        updateEmployer.Parameters.AddWithValue("@newLastUpdatedBy", HttpUtility.HtmlEncode(LastUpdatedBy));
        updateEmployer.Parameters.AddWithValue("@newLastUpdated", HttpUtility.HtmlEncode(LastUpdated));

        //shows the currency name has been edited
        updateEmployer.ExecuteNonQuery();
        if (IsPostBack)
        {
            Response.Redirect("CUED-InHomeAccountForm.aspx");
        }
    }
}