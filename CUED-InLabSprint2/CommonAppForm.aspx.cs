using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class CommonAppForme : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();

    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

    protected void Page_Load(object sender, EventArgs e)
    {
        {
            try
            {
                DBconnection.ConnectionString = ConnectionString;
                if ((HttpContext.Current.Request.UrlReferrer == null))
                {
                    Response.Redirect("LoginForm.aspx");
                }
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

        CommonApp app = new CommonApp(HttpUtility.HtmlEncode(SchoolName.Text.Trim()), HttpUtility.HtmlEncode(Age.Text.Trim()), double.Parse(HttpUtility.HtmlEncode(GPA.Text.Trim())),
                            HttpUtility.HtmlEncode(Experience.Text.Trim()), HttpUtility.HtmlEncode(Skills.Text.Trim()), HttpUtility.HtmlEncode(StudentEmail.Text.Trim()),
                            HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated));

        string comApp = "insert into [dbo].[CommonApp] values @School, @Age, @GPA, @Experience, @Skills, @Email, @lastUpdatedBy, @lastUpdated)";
        SqlCommand insertCommonApp = new SqlCommand(comApp, DBconnection);
        insertCommonApp.Parameters.AddWithValue("@School", app.getSchool());
        insertCommonApp.Parameters.AddWithValue("@Age", app.getDate());
        insertCommonApp.Parameters.AddWithValue("@GPA", app.getGPA());
        insertCommonApp.Parameters.AddWithValue("@Experience", app.getExperience());
        insertCommonApp.Parameters.AddWithValue("@Skills", app.getSkills());
        insertCommonApp.Parameters.AddWithValue("@Email", app.getEmail());
        insertCommonApp.Parameters.AddWithValue("@lastUpdatedBy", app.getLastUpdatedBy());
        insertCommonApp.Parameters.AddWithValue("@lastUpdated", app.getLastUpdated());


        insertCommonApp.ExecuteNonQuery();
        Response.Redirect("StudentLandingForm.aspx", false);

        DBconnection.Close();


    }
}