using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeRoles_PermissionsAdd : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PermissionsAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Page.IsPostBack == false)
        {
            var roles = (from k in km.aspnet_Roles where k.Description != null && (k.GroupName == "School") select k).ToList().OrderBy(k => k.RoleName);
            chxManager.DataSource = roles;
            chxManager.DataBind();

            //var files = (from k in km.aspnet_Roles where k.Description != null && (k.GroupName == "Laboratay" | k.GroupName == "Library") select k).ToList().OrderBy(k => k.RoleName);
            //cbFiels.DataSource = files;
            //cbFiels.DataBind();
            //var setting = (from k in km.aspnet_Roles where k.Description != null && (k.GroupName == "EmployeeRoles" | k.GroupName == "Finance") select k).ToList().OrderBy(k => k.RoleName);
            //cbSetting.DataSource = setting;
            //cbSetting.DataBind();
            //var Garage = (from k in km.aspnet_Roles where k.Description != null && (k.GroupName == "Employee" | k.GroupName == "EmployeeAttendence") select k).ToList().OrderBy(k => k.RoleName);
            //cbCarageAndVisa.DataSource = Garage;
            //cbCarageAndVisa.DataBind();

            //var student = (from k in km.aspnet_Roles where k.Description != null && (k.GroupName == "Student" | k.GroupName == "StudentAttendence") select k).ToList().OrderBy(k => k.RoleName);
            //cbStudent.DataSource = Garage;
            //cbStudent.DataBind();



        }
    }

    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        PermissionGroup m = new PermissionGroup();
        m.PGroupName = txtName.Text;

        List<ListItem> selected = new List<ListItem>();


        for (int i = 0; i <= chxManager.Items.Count - 1; i++)
        {
            if (chxManager.Items[i].Selected)
            {
                m.PGroupName = txtName.Text;
                m.RoleId = Guid.Parse(chxManager.Items[i].Value);
                km.PermissionGroups.Add(m);
                km.SaveChanges();

            }
        }
        //for (int i = 0; i <= cbSetting.Items.Count - 1; i++)
        //{
        //    if (cbSetting.Items[i].Selected)
        //    {
        //        m.PGroupName = txtName.Text;
        //        m.RoleId = Guid.Parse(cbSetting.Items[i].Value);
        //        km.PermissionGroups.Add(m);
        //        km.SaveChanges();

        //    }

        //}

        //for (int i = 0; i <= cbFiels.Items.Count - 1; i++)
        //{
        //    if (cbFiels.Items[i].Selected)
        //    {
        //        m.PGroupName = txtName.Text;
        //        m.RoleId = Guid.Parse(cbFiels.Items[i].Value);
        //        km.PermissionGroups.Add(m);
        //        km.SaveChanges();

        //    }

        //}

        //for (int i = 0; i <= cbPrivateAndfinaicial.Items.Count - 1; i++)
        //{
        //    if (cbPrivateAndfinaicial.Items[i].Selected)
        //    {
        //        m.PGroupName = txtName.Text;
        //        m.RoleId = Guid.Parse(cbPrivateAndfinaicial.Items[i].Value);
        //        km.PermissionGroups.Add(m);
        //        km.SaveChanges();

        //    }

        //}

        //for (int i = 0; i <= cbStudent.Items.Count - 1; i++)
        //{
        //    if (cbStudent.Items[i].Selected)
        //    {
        //        m.PGroupName = txtName.Text;
        //        m.RoleId = Guid.Parse(cbStudent.Items[i].Value);
        //        km.PermissionGroups.Add(m);
        //        km.SaveChanges();

        //    }

        //}


        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

    }
}