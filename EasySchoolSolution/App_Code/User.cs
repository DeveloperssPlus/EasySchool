using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    aspnet_Users user = new aspnet_Users();
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    public User()
    {
        // Membership.CreateUser(name,password,email);
        // Roles.AddUserToRole(username, rolename);
        //بترجع ادا اليوزر valid او لا
        // Membership.ValidateUser(username, pssword);
    }


    public Guid getId()
    {
        return (Guid)Membership.GetUser().ProviderUserKey;
    }

    public Guid getUserId(string name)
    {
        return (Guid)Membership.GetUser(name).ProviderUserKey;
    }

    public string getName()
    {
        return Membership.GetUser().UserName;
    }

    public string getName(Guid userId)
    {
        return Membership.GetUser(userId).UserName;
    }
    public string getIdentityNumber()
    {
        return Membership.GetUser().UserName;
    }
    public string getEmail(Guid userId)
    {
        return Membership.GetUser(userId).Email;
    }
    public string getEmail()
    {
        return Membership.GetUser().Email;
    }

    public string getFirstRole(Guid userId)
    {
        return Roles.GetRolesForUser(Membership.GetUser(userId).UserName).FirstOrDefault();
    }

    public string getFirstRole(string name)
    {
        return Roles.GetRolesForUser(name).FirstOrDefault();
    }

    public void signout()
    {
        HttpContext.Current.Session.Clear();
        HttpContext.Current.Session.Abandon();
        FormsAuthentication.SignOut();  
    }

    public string getuserName()
    {
        var name = getName();
       return  (from k in km.Profiles where k.Id ==name  select k.Name).FirstOrDefault();
    }

    public string getImage()
    {
        var name = getName();
        return (from k in km.Profiles where k.Id == name select k.Image).FirstOrDefault();
    }

}