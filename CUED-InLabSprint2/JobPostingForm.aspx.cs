using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class JobPostingForm : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();
    string DateCreated = DateTime.Today.ToString();

    //create sql connection and links application to adventureworks database
    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "Data Source=localhost;Initial Catalog = CuedIn; Integrated Security = True";

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

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        JobTitle.Text = "Carpenter Assistant";
        JobType.SelectedValue = "Full-TIme";
        CompanyName.Text = "Southern Image Construction";
        City.Text = "Harrisonburg";
        State.Text = "VA";
        PayStatus.SelectedValue = "Paid";
        JobDescription.Text = "Carpenter assistant needed and must be 16 years old to apply. ";
        Deadline.Text = "03/29/2019";
    }

    protected void Insert_Button_Click(object sender, EventArgs e)
    {
        JobPosting posting = new JobPosting(HttpUtility.HtmlEncode(JobTitle.Text.Trim()), HttpUtility.HtmlEncode(JobType.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.Text.Trim()),
                            HttpUtility.HtmlEncode(City.Text.Trim()), HttpUtility.HtmlEncode(State.Text.Trim()), HttpUtility.HtmlEncode(PayStatus.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(JobDescription.Text.Trim()),
                            HttpUtility.HtmlEncode(DateCreated), HttpUtility.HtmlEncode(Deadline.Text.Trim()), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));

        System.Data.SqlClient.SqlCommand MaxPosting = new System.Data.SqlClient.SqlCommand();
        MaxPosting.Connection = DBconnection;

        DBconnection.Open();

        string student = "insert into [dbo].[JobPosting] values (@jobTitle, @jobType, @companyName, @location, @payStatus, @jobDescription, @dateCreated, @deadline, @lastUpdatedBy, @lastUpdated)";
        SqlCommand insertJobPosting = new SqlCommand(student, DBconnection);
        insertJobPosting.Parameters.AddWithValue("@jobTitle", posting.getJobTitle());
        insertJobPosting.Parameters.AddWithValue("@jobType", posting.getJobType());
        insertJobPosting.Parameters.AddWithValue("@companyName", posting.getCompanyName());
        insertJobPosting.Parameters.AddWithValue("@location", posting.getLocation());
        insertJobPosting.Parameters.AddWithValue("@payStatus", posting.getPayStatus());
        insertJobPosting.Parameters.AddWithValue("@jobDescription", posting.getJobDescription());
        insertJobPosting.Parameters.AddWithValue("@dateCreated", posting.getDateCreated());
        insertJobPosting.Parameters.AddWithValue("@deadline", posting.getDeadline());
        insertJobPosting.Parameters.AddWithValue("@lastUpdatedBy", posting.getLastUpdatedBy());
        insertJobPosting.Parameters.AddWithValue("@lastUpdated", posting.getLastUpdated());


        insertJobPosting.ExecuteNonQuery();
        DBconnection.Close();
    }


}