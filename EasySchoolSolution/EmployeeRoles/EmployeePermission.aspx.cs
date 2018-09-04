using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public class roleNames
{
    public string Name { get; set; }

}

public partial class EmployeeRoles_EmployeePermission : MyPermisionPage
{

  
        protected override void OnPreInit(EventArgs e)
        {
            MyPer = "EmployeePermission";
            base.OnPreInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }
        }
        OnlineSchoolEntities db = new OnlineSchoolEntities();

        protected void ddlDepartment_DataBound(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "view")
            {
            //    Guid userid = Guid.Parse(e.CommandArgument.ToString());

            //  HiddenField1.Value = idd.ToString();
            // var userName = Membership.GetUser(userid).UserName; ;
            string userName = e.CommandArgument.ToString();


                var role = Roles.GetRolesForUser(userName);
                List<roleNames> roles = new List<roleNames>();
                foreach (var item in role)
                {
                    var permisionName = (from k in db.aspnet_Roles where k.RoleName == item select k.Description).FirstOrDefault();
                    roles.Add(new roleNames { Name = permisionName });
                }

                ListView1.DataSource = roles;
                ListView1.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);

        }
            if (e.CommandName == "edit")
            {
                string username = e.CommandArgument.ToString();
                Response.Redirect("EmployeePermissionEdit.aspx?Name=" + username);

            }
        }

    protected void GridView1_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();

        var users = (from k in km.Employees
                     join u in km.aspnet_Users on k.IdentityNumber equals u.UserName
                     where k.SchoolId == schoolId && u.aspnet_Roles.Count!=0
                     orderby k.Name 
                     select new
                     {
                         k.Name,
                         u.UserId,
                         u.UserName
                     }).ToList();

        GridView1.DataSource = users;
    }
}
