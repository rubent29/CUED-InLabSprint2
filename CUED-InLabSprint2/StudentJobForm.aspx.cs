using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentJobForm : System.Web.UI.Page
{

    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();

    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {


        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        BindGrid();


    }

    public void BindGrid()
    {
        //string email = Session["Test"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("select jobtitle, JobType, CompanyName, Location, paystatus, JobDescription, Deadline, GPA, Age from jobposting "))

            //just need to fix this sql command: show all job postings

            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        connection.Open();
        string email = Session["Test"].ToString();

        System.Data.SqlClient.SqlCommand MaxPosting = new System.Data.SqlClient.SqlCommand();
        MaxPosting.Connection = connection;

        string CommonAppID = "Select (CommonAppID) from [dbo].[CommonApp] where Email = '" + email + "'";
        SqlCommand CappIDFinder = new SqlCommand(CommonAppID, connection);
        int CappID = Convert.ToInt32(CappIDFinder.ExecuteScalar());

        CappIDFinder.ExecuteNonQuery();

        string student = "insert into [dbo].[JobApplications] values (@PostingID, @CommonAppID,@lastUpdatedBy, @lastUpdated)";
        SqlCommand insertJobPosting = new SqlCommand(student, connection);
        insertJobPosting.Parameters.AddWithValue("@PostingID", PostingID.Text);
        insertJobPosting.Parameters.AddWithValue("@CommonAppID", CappID);
        insertJobPosting.Parameters.AddWithValue("@lastUpdatedBy", LastUpdatedBy);
        insertJobPosting.Parameters.AddWithValue("@lastUpdated", LastUpdated);

        insertJobPosting.ExecuteNonQuery();
        SuccessLabel.Text = "Application Submitted";

        connection.Close();

    }
}