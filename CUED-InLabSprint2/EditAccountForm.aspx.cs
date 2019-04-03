using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.ApplicationServices;

public partial class EditAccountForm : System.Web.UI.Page
{

    //create sql connection and links application to adventureworks database
    System.Data.SqlClient.SqlConnection DBconnection = new System.Data.SqlClient.SqlConnection();
    String ConnectionString = "server=cuedinsprint2.cfe6p3jbjixj.us-east-1.rds.amazonaws.com;database=CuedIn;uid=admin;password=dukedog19;";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SaveChanges_Button_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source = cuedinsprint2.cfe6p3jbjixj.us - east - 1.rds.amazonaws.com; Initial Catalog = CuedIn; Persist Security Info = True; User ID = admin; Password = dukedog19");
        SqlCommand cmd = new SqlCommand(String.Format("update employer set FirstName = '{0}', FirstName = '{1}', FirstName = '{2}', FirstName = '{3}', FirstName = '{4}', FirstName = '{0}', FirstName = '{0}', FirstName = '{0}', FirstName = '{0}', FirstName = '{0}', FirstName = '{0}', FirstName = '{0}')", )conn);
        


    }

}