using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web.Security;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "AFunction" in code, svc and config file together.
public class AFunction : IAFunction
{

    public bool Login(string username, string password)
    {
        bool ok = Membership.ValidateUser(username, password);
        return ok;
    }

    public string getRole(string username)
    {
        var roles = Roles.GetRolesForUser(username);
        if (roles.Contains("Employee"))
        {
            return "Employee";
        }
        if (roles.Contains("Teacher"))
        {
            return "Teacher";
        }
        return "";
    }
}
