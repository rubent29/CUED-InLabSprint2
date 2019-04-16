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


public partial class EditAccount : System.Web.UI.Page
{
    string LastUpdatedBy = "Ruben Torrico";
    string LastUpdated = DateTime.Today.ToString();

    //open sql connection: use webconfig
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

    protected void Page_Load(object sender, EventArgs e)
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
                TextBoxAnswer.Text = ds.Tables[0].Rows[0].Field<string>(11); //zip
                                                                      //not showing employer id or any password or security question stuff (just seemed unneccessary but we can use this logic to add them in pretty easily)

            }


            connection.Close();
        }


    }

    protected void SaveChanges_Button_Click(object sender, EventArgs e)
        
    {
        string email = Session["Test"].ToString();

        //updates currency table with values that were inputted
        connection.Open();
        string updateQuery = "UPDATE Employer SET  FirstName = @newFirstName WHERE CompanyEmail = '" + email + "';";
        SqlCommand updateEmployer = new SqlCommand(updateQuery, connection);
        updateEmployer.Parameters.AddWithValue("@newFirstName", HttpUtility.HtmlEncode(FirstName.Text));

        //shows the currency name has been edited
        updateEmployer.ExecuteNonQuery();
        EditLabel.Visible = false;
        Response.Write("<font size=7 color=green>All Your Data is Saved.</font>");

    }

    //code that was in the aspx? not sure if it belongs there

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack)
    //    {
    //        string strUsers = "";
    //        if (Request.Cookies["edit"] != null)
    //            strUsers = Request.Cookies["edit"]["companyEmail"].ToString();

    //        SqlConnection DBconnection = new SqlConnection("server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;");
    //        SqlCommand cmd = new SqlCommand(string.Format("select * from Employer where companyEmail ='{0}'", strUsers), DBconnection);
    //        SqlDataReader reader;

    //        DBconnection.Open();
    //        reader = cmd.ExecuteReader();
    //        if (reader.Read())
    //        {
    //            FirstName.Text = reader[1].ToString();
    //            LastName.Text = reader[2].ToString();
    //            CompanyName.Text = reader[3].ToString();
    //            CompanyEmail.Text = reader[4].ToString();
    //            StreetAddress.Text = reader[5].ToString();
    //            City.Text = reader[6].ToString();
    //            State.Text = reader[7].ToString();
    //            Country.Text = reader[8].ToString();
    //            ZipCode.Text = reader[9].ToString();
    //            PasswordOne.Text = reader[11].ToString();
    //            PasswordTwo.Text = reader[12].ToString();
    //            TextBoxQuestion.Text = reader[13].ToString();
    //            TextBoxAnswer.Text = reader[14].ToString();
    //        }
    //        else
    //            Response.Redirect("AccountInformation.aspx");
    //        DBconnection.Close();
    //    }
    //}

    //protected void SaveChanges_Button_Click(object sender, EventArgs e)
    //{
    //    string LastUpdatedBy = "Ruben Torrico";
    //    string LastUpdated = DateTime.Today.ToString();

    //    SqlConnection conn = new SqlConnection("Data Source=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;Initial Catalog=CuedIn;Persist Security Info=True;User ID=admin;Password=dukedog19");
    //    SqlCommand cmd = new SqlCommand(String.Format("update employer set FirstName = '{1}', LastName = '{2}', CompanyName = '{3}', CompanyEmail = '{4}', StreetAddress = '{5}', City = '{6}', State = '{7}', Country = '{8}', ZipCode = '{9}', Password = '{11}', PasswordConfirmation = '{12}', SecurityQuestion = '{13}', SecurityAnswer = '{14}'", HttpUtility.HtmlEncode(FirstName.Text.Trim()), HttpUtility.HtmlEncode(LastName.Text.Trim()), HttpUtility.HtmlEncode(CompanyName.Text.Trim()),
    //                                HttpUtility.HtmlEncode(CompanyEmail.Text.Trim()), HttpUtility.HtmlEncode(StreetAddress.Text.Trim()), HttpUtility.HtmlEncode(City.Text.Trim()),
    //                                HttpUtility.HtmlEncode(State.Text.Trim()), HttpUtility.HtmlEncode(Country.SelectedItem.Text.Trim()), HttpUtility.HtmlEncode(ZipCode.Text.Trim()),
    //                                HttpUtility.HtmlEncode(PasswordOne.Text.Trim()), HttpUtility.HtmlEncode(PasswordTwo.Text.Trim()), HttpUtility.HtmlEncode(TextBoxQuestion.Text.Trim()), HttpUtility.HtmlEncode(TextBoxAnswer.Text.Trim()), HttpUtility.HtmlEncode(LastUpdatedBy), HttpUtility.HtmlEncode(LastUpdated)), conn);
    //    conn.Open();


    //    cmd.ExecuteNonQuery();
    //    conn.Close();
    //    EditLabel.Visible = false;
    //    Response.Write("<font size=7 color=green>All Your Data is Saved.</font>");

    //}


}