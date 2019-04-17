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
    //still has some sql errors!

    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
    //to show applicants for selected post: need to use join statement to show common app for only this employer?
    //will need to use join statement using jobapplication table: common app info using postingid and studentID?


    protected void Page_Load(object sender, EventArgs e)
    {

        //string email = Session["Test"].ToString();

        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        string allcommand = "select School, DOB, GPA, Experience, Skills, Email from CommonApp"; 

       BindGrid(allcommand, GridView2);


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["Test"].ToString();

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
                    gridView.DataSource = dt;
                    gridView.DataBind();
                }
            }
        }
    }
}