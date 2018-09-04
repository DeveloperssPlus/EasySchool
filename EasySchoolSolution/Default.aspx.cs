using System;
using System.Collections.Generic;
using System.Data.Objects.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Login1_LoggedIn(Object sender, EventArgs e)
    {
        var rr = Roles.GetRolesForUser(Login1.UserName);
        var x = rr.Count();
        if (rr.Contains("Admin"))
            Response.Redirect("~/Admin/Default.aspx");
        else
            if (rr.Contains("Employee"))
            Response.Redirect("~/Employee/Default.aspx");
    }


    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        try
        {

        MembershipUser mu = Membership.GetUser(Login1.UserName);
        if (mu != null)
        {
        if (Roles.GetRolesForUser(Login1.UserName).Contains("Admin"))
        {

                    ((Literal)Login1.FindControl("FailureText")) .Text= "هذا الحساب غير فعال";
            e.Cancel = true;
            return;
        }

        OnlineSchoolEntities km = new OnlineSchoolEntities();

        var emp = (from k in km.Employees where k.IdentityNumber.Trim()  == mu.UserName select k).FirstOrDefault();
        var userSchool = (from k in km.Schools where k.Id == emp.SchoolId select k).FirstOrDefault();

            if (userSchool != null && userSchool.IsActive == false)
        {
                    ((Literal)Login1.FindControl("FailureText")).Text = "تم ايقاف اشتراك المدرسة";
            e.Cancel = true;
        }
        }
        }catch(Exception exx)
        {
            ((Literal)Login1.FindControl("FailureText")).Text = "هذا الحساب غير فعال";
            e.Cancel = true;
        }
    }
}