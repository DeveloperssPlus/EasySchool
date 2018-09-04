using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
/// Summary description for Employee
/// </summary>
public class EmployeeManager
{
    Employee emp = new Employee();
   static OnlineSchoolEntities km = new OnlineSchoolEntities();
    public EmployeeManager(string identity)
    {
    }

    public static string getDirectManager(string identityNumber)
    {
       // var username = Membership.GetUser().UserName;
       //var school = (from k in km.Employees where k.IdentityNumber == username select k.School).FirstOrDefault();

        SchoolInformation info = new SchoolInformation();
        return info.getSchoolManager();
    }

    public static int createAccount(string identityNumber)
    {
        try
        {
            Boolean isExist = (Membership.GetUser(identityNumber) != null);
            if (!isExist)
            {
                var password = "123456";
                Membership.CreateUser(identityNumber, password);
                Roles.AddUserToRole(identityNumber, "Employee");
            }
            return 1;
        }
        catch
        {
            return -1;
        }
    }
}