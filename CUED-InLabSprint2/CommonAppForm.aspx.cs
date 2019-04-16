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


public partial class CommonAppForme : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString()); string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        connection.Open();

    }

    protected void Insert_Button_Click(object sender, EventArgs e)
    {
        //will insert the common app into the common app db table


        //string student = "insert into [dbo].[CommonApp] values (@school, @dob, @gpa, @experience, @skills, @email, @studentID, @lastUpdatedBy, @lastUpdated)";
        //SqlCommand insertCommonApp = new SqlCommand(student, connection);
        //insertJobPosting.Parameters.AddWithValue("@jobTitle", posting.getJobTitle());
        //insertJobPosting.Parameters.AddWithValue("@jobType", posting.getJobType());
        //insertJobPosting.Parameters.AddWithValue("@companyName", posting.getCompanyName());
        //insertJobPosting.Parameters.AddWithValue("@location", posting.getLocation());
        //insertJobPosting.Parameters.AddWithValue("@payStatus", posting.getPayStatus());
        //insertJobPosting.Parameters.AddWithValue("@jobDescription", posting.getJobDescription());
        //insertJobPosting.Parameters.AddWithValue("@dateCreated", posting.getDateCreated());
        //insertJobPosting.Parameters.AddWithValue("@deadline", posting.getDeadline());
        //insertJobPosting.Parameters.AddWithValue("@EmployerID", CompanyName.SelectedValue);
        //insertJobPosting.Parameters.AddWithValue("@Gpa", posting.getGPA());
        //insertJobPosting.Parameters.AddWithValue("@Age", posting.getAge());
        //insertJobPosting.Parameters.AddWithValue("@lastUpdatedBy", posting.getLastUpdatedBy());
        //insertJobPosting.Parameters.AddWithValue("@lastUpdated", posting.getLastUpdated());


        //insertJobPosting.ExecuteNonQuery();
        //Response.Redirect("ViewPostingForm.aspx", false);

        //DBconnection.Close();


    }
}