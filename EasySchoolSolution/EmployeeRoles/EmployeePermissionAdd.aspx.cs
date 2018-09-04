using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeRoles_EmployeePermissionAdd : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "EmployeePermissionAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            var permision = from k in db.PermissionGroups select k.PGroupName;
            ddlPerName.DataSource = permision.ToList().Distinct();
            ddlPerName.DataBind();

            ddlEmployee.DataBind();
        }
    }
    OnlineSchoolEntities db = new OnlineSchoolEntities();
    protected void ddlEmployee_DataBound(object sender, EventArgs e)
    {
        ddlEmployee.Items.Insert(0, new ListItem(" اختر الموظف ", "0"));

    }
    protected void ddlDepartment_DataBound(object sender, EventArgs e)
    {
        //ddlDepartment.Items.Insert(0, new ListItem(" اختر القسم ", "0"));

    }
    protected void ddlPerName_DataBound(object sender, EventArgs e)
    {
        ddlPerName.Items.Insert(0, new ListItem(" اختر اسم الصلاحية ", "0"));

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string pgroupName = ddlPerName.SelectedValue;

        var per = (from m in db.PermissionGroups where m.PGroupName == pgroupName select m.RoleId).ToList();

      //  Guid userid = Guid.Parse(ddlEmployee.SelectedValue);
        var userName = ddlEmployee.SelectedValue;
        string[] userRoles = Roles.GetRolesForUser(userName);

        if (userRoles != null && userRoles.Length > 0)
        {

            Roles.RemoveUserFromRoles(userName, userRoles);

        }

        foreach (var item in per)
        {
            var perName = (from k in db.aspnet_Roles where k.RoleId == item select k.RoleName).First();
            Roles.AddUserToRole(userName, perName);

        }

        Roles.AddUserToRole(userName, "Employee");


        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

    }

    protected void ddlEmployee_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();

        var users = (from k in km.Employees
                     join u in km.aspnet_Users on k.IdentityNumber equals u.UserName
                     where k.SchoolId == schoolId && u.aspnet_Roles.Count != 0
                     orderby k.Name
                     select new
                     {
                         k.Name,
                         u.UserId,
                         u.UserName
                     }).ToList();

        ddlEmployee.DataSource = users;
    
}
}