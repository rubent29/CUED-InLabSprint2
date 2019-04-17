using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ReviewApplicants : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

        //string email = Session["Test"].ToString();

        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        string allcommand = "select School, DOB, GPA, Experience, Skills, Email from CommonApp";

        BindGrid(allcommand);


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //select id to view post, view applicants for that post
        //create variable to get post ID
        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        int i = Convert.ToInt32(DropDownList1.SelectedValue);

        string command = "select c.School, c.DOB, c.GPA, c.Experience, c.Skills, c.Email " +
            "from CommonApp c, JobApplications j " +
            "where j.PostingID = " + i + "and c.CommonAppID = j.CommonAppID";
        //need to work out sql here

        BindGrid(command);
    }


    public void BindGrid(string command)

    //right now: showing all applicants, not just those for this employer

    {
        string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(command))

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
}
