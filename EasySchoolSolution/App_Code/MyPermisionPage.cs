using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;

public class MyPermisionPage : System.Web.UI.Page
{
    private String li;
    public string MyPer
    {
        get
        {
            return li;
        }
        set {
            li = value;
        }
    }
 

    protected override void OnPreLoad(EventArgs e)
    {
        if (IsPostBack == false)
        {

            //Guid user = (Guid)Membership.GetUser().ProviderUserKey;
            ////try
            ////{
            //if (!Roles.IsUserInRole(User.Identity.Name, "Manager"))
            //{
            //    //Msg.Text = "You are not authorized to view user roles.";
            //    bool re = Roles.IsUserInRole(Membership.GetUser().UserName, li);
            //    if (re == false)
            //        Response.Redirect("~/NoPermissions.aspx");
            //}
        }
    }
}

