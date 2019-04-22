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
public partial class EditPosting : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();
    string DateCreated = DateTime.Today.ToString();

    //open sql connection: use webconfig
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        
    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        JobTitle.Text = "Carpenter Assistant";
        JobType.SelectedValue = "Full-TIme";
        City.Text = "Harrisonburg";
        State.Text = "VA";
        PayStatus.SelectedValue = "Paid";
        JobDescription.Text = "Carpenter assistant needed and must be 16 years old to apply. ";
        Deadline.Text = "03/29/2019";
        MinAge.Text = "17";
        MinGPA.Text = "3.0";
    }


    protected void Update_Button_Click(object sender, EventArgs e)
    {
        string id = Session["PostingID"].ToString();
        int ID = Convert.ToInt32(id);
        string email = Session["Test"].ToString();


        System.Data.SqlClient.SqlCommand updatePosting = new System.Data.SqlClient.SqlCommand();
        updatePosting.Connection = connection;

        connection.Open();

        //need to find employer id
        System.Data.SqlClient.SqlCommand MaxPosting = new System.Data.SqlClient.SqlCommand();
        MaxPosting.Connection = connection;

        string empID = "Select (EmployerID) from [dbo].[Employer] where CompanyEmail = '" + email + "'";
        SqlCommand empIDFinder = new SqlCommand(empID, connection);
        int EmployerID = Convert.ToInt32(empIDFinder.ExecuteScalar());

        empIDFinder.ExecuteNonQuery();

        updatePosting.CommandText = "UPDATE [dbo].[JobPosting] SET [jobTitle] = @newjobTitle, " +
            "[jobType] = @newjobType, " +
            "[CompanyName] = @newCompanyName, " +
            "[location] = @newlocation, " +
            "[payStatus] = @newpayStatus, " +
            "[jobDescription] = @newjobDescription, " +
            "[dateCreated] = @newdateCreated, [deadline] = @newdeadline, " +
            "[EmployerID] = @newEmployerID," +
            "[Gpa] = @newGpa, " +
            "[Age] = @newAge, " +
            "[LastUpdatedBy] = @newLastUpdatedBy, " +
            "[LastUpdated] = @newLastUpdated " +
            "WHERE PostingID = " + ID;

        JobPosting posting = new JobPosting(HttpUtility.HtmlEncode(JobTitle.Text.Trim()), HttpUtility.HtmlEncode(JobType.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.SelectedItem.Text.Trim()),
                HttpUtility.HtmlEncode(City.Text.Trim()), HttpUtility.HtmlEncode(State.Text.Trim()), HttpUtility.HtmlEncode(PayStatus.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(JobDescription.Text.Trim()),
                HttpUtility.HtmlEncode(DateCreated), HttpUtility.HtmlEncode(Deadline.Text.Trim()), double.Parse(HttpUtility.HtmlEncode(MinGPA.Text.Trim())),
                int.Parse(HttpUtility.HtmlEncode(MinAge.Text.Trim())), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));


        updatePosting.Parameters.AddWithValue("@newjobTitle", posting.getJobTitle());
        updatePosting.Parameters.AddWithValue("@newjobType", posting.getJobType());
        updatePosting.Parameters.AddWithValue("@newcompanyName", posting.getCompanyName());
        updatePosting.Parameters.AddWithValue("@newlocation", posting.getLocation());
        updatePosting.Parameters.AddWithValue("@newpayStatus", posting.getPayStatus());
        updatePosting.Parameters.AddWithValue("@newjobDescription", posting.getJobDescription());
        updatePosting.Parameters.AddWithValue("@newdateCreated", posting.getDateCreated());
        updatePosting.Parameters.AddWithValue("@newdeadline", posting.getDeadline());
        updatePosting.Parameters.AddWithValue("@newEmployerID", EmployerID);
        updatePosting.Parameters.AddWithValue("@newGpa", posting.getGPA());
        updatePosting.Parameters.AddWithValue("@newAge", posting.getAge());
        updatePosting.Parameters.AddWithValue("@newlastUpdatedBy", posting.getLastUpdatedBy());
        updatePosting.Parameters.AddWithValue("@newlastUpdated", posting.getLastUpdated());

        updatePosting.ExecuteNonQuery();

        connection.Close();
        if (IsPostBack)
        {
            Response.Redirect("CUED-InHomeAccountForm.aspx");
        }

    }



}

