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


public partial class StudentAccountInformationForm : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();



    //open sql connection: use webconfig
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((HttpContext.Current.Request.UrlReferrer == null))
        {
            Response.Redirect("LoginForm.aspx");
        }

        string email = Session["Test"].ToString();
        //going to set labels using this session variable for the user email

        connection.Open();

        string cmd = "select * from Student where Email = '" + email + "';";
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
            MiddleName.Text = ds.Tables[0].Rows[0].Field<string>(3); //middle
            Email.Text = ds.Tables[0].Rows[0].Field<string>(4); //email used
            StreetAddress.Text = ds.Tables[0].Rows[0].Field<string>(5); //address
            City.Text = ds.Tables[0].Rows[0].Field<string>(6); //city
            State.Text = ds.Tables[0].Rows[0].Field<string>(7); //state
            Country.Text = ds.Tables[0].Rows[0].Field<string>(9); //country
            ZipCode.Text = ds.Tables[0].Rows[0].Field<string>(8); //zip
            //DOB.Text = ds.Tables[0].Rows[0].Field<string>(11); //DOB
            //Age.Text = ds.Tables[0].Rows[0].Field<string>(12); //Age
                                                               //not showing employer id or any password or security question stuff (just seemed unneccessary but we can use this logic to add them in pretty easily)

        }


        connection.Close();
    }
}
