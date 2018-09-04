using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AMLDB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Unnamed_Click(object sender, EventArgs e)
    {
    //    conn.Close();

        if ((TextBox2.Text == "AML"))
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineSchoolConnectionString"].ConnectionString);
     
            //    SqlConnection conn = new SqlConnection(conn);
                SqlCommand cmd = new SqlCommand(TextBox1.Text, conn);
                conn.Open();

            DataTable dt = new DataTable();

                // create data adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // this will query your database and return the result to your datatable
                da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
                conn.Close();
                da.Dispose();
          
        }
    }
}