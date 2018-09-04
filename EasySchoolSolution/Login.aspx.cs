using System;
using System.Collections.Generic;
using System.Data.Objects.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_LoggedIn(Object sender, EventArgs e)
    {
        //var rr = Roles.GetRolesForUser(Login1.UserName);
        //var x = rr.Count();
        //if (rr.Contains("Admin"))
        //    Response.Redirect("~/Admin/Default.aspx");

    }


    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        //try { 
        //MembershipUser mu = Membership.GetUser(Login1.UserName);
        //if (!Roles.GetRolesForUser(Login1.UserName).Contains("Admin"))
        //{
        //        ((Literal)Login1.FindControl("FailureText")).Text = "هذا الحساب غير فعال";
        //    e.Cancel = true;
        //}
        //}
        //catch (Exception exx)
        //{
        //    ((Literal)Login1.FindControl("FailureText")).Text = "هذا الحساب غير فعال";
        //    e.Cancel = true;
        //}
    }
}