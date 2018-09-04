using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageSchools : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstSchools.DataBind();
        }
    }


    protected void lstSchools_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnActive")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Schools where k.Id == id select k).FirstOrDefault();

            c.IsActive = true;

            km.SaveChanges();

            lstSchools.DataBind();

            //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineSchoolConnectionString"].ConnectionString);
            //SqlCommand cmd = conn.CreateCommand();
            //cmd.CommandText = "update Schools set isActive='True' where Id=@id";
            //cmd.Parameters.AddWithValue("@id", e.CommandArgument.ToString());
            //conn.Open();
            //cmd.ExecuteNonQuery();
            //conn.Close();

            //lstSchools.DataBind();

        }
        else if (e.CommandName == "btnCancelActive")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Schools where k.Id == id select k).FirstOrDefault();

            c.IsActive = false;

            km.SaveChanges();

            lstSchools.DataBind();

            //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineSchoolConnectionString"].ConnectionString);
            //SqlCommand cmd = conn.CreateCommand();
            //cmd.CommandText = "update Schools set isActive='False' where Id=@id";
            //cmd.Parameters.AddWithValue("@id", e.CommandArgument.ToString());
            //conn.Open();
            //cmd.ExecuteNonQuery();
            //conn.Close();

            //lstSchools.DataBind();
        }
        else if(e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Schools where k.Id == id select k).FirstOrDefault();

            c.IsActive = false;
            c.IsDeleted = true;

            km.SaveChanges();

            lstSchools.DataBind();
        }
    }


    protected void lstSchools_DataBinding(object sender, EventArgs e)
    {
        var jobid = (from k in km.Jobs where k.Name == "قائد مدرسة" select k.Id).FirstOrDefault();

        var myschools = (from pd in km.Schools
                         where pd.IsDeleted != true
                         select new
                         {
                             SchoolID = pd.Id,
                             Name = pd.Name,
                             pd.Area,
                             pd.IsActive,
                             EmpName = (from emp in km.Employees where emp.JobId == jobid && emp.SchoolId==pd.Id select emp.Name).FirstOrDefault(),
                             Mobile = (from emp in km.Employees where emp.JobId == jobid && emp.SchoolId == pd.Id select emp.Mobile).FirstOrDefault()
                         }).ToList();
        lstSchools.DataSource = myschools;
    }
}