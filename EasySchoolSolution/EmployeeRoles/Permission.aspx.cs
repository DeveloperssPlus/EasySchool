using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class roleName
{
    public string Name { get; set; }
}

public partial class EmployeeRoles_Permission : MyPermisionPage
{


    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "Permission";
        base.OnPreInit(e);

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            var permision = (from k in db.PermissionGroups select new { pp = k.PGroupName }).ToList().Distinct();
            GridView1.DataSource = permision;
            GridView1.DataBind();




        }
    }
    OnlineSchoolEntities db = new OnlineSchoolEntities();


   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string pgroupName = e.CommandArgument.ToString();

        if (e.CommandName == "view")
        {

            var per = (from m in db.PermissionGroups where m.PGroupName == pgroupName select m.RoleId).ToList();


            //var role = db.aspnet_Roles.Where(k=> per.Contains (k.RoleId)).Select(k=>k.RoleName);
            List<roleName> roles = new List<roleName>();
            foreach (var item in per)
            {
                var permisionName = (from k in db.aspnet_Roles where k.RoleId == item select k.Description).FirstOrDefault();
                roles.Add(new roleName { Name = permisionName });
            }

            ListView1.DataSource = roles;
            ListView1.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "Pop", "openModal();", true);
      
        }
        if (e.CommandName == "edit")
        {
            Response.Redirect("~/EmployeeRoles/PermissionEdit.aspx?id=" + pgroupName);

        }
    }

  
}