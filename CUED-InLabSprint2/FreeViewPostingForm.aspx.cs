using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FreeViewPostingForm : System.Web.UI.Page
{
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
        string email = Session["Test"].ToString(); //Changed FirstName from Test

        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT PostingID, JobTitle, JobType, Location, Paystatus, JobDescription, DateCreated, Deadline, GPA, Age from JobPosting where EmployerID = (select EmployerID from Employer where CompanyEmail = '" + email + "');"))
            //just need to fix this sql command so that it doesn't show employer id or last updated info
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["PostingID"] = TextBox1.Text;
        Response.Redirect("EditPosting.aspx");
    }
}


