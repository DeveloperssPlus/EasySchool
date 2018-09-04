using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeRoles_PermissionEdit : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PermissionEdit";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                var roles = (from k in km.aspnet_Roles
                             where k.Description != null &&
                                (k.GroupName == "School")
                             select k).ToList().OrderBy(k => k.RoleName);
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



                string pgroupName = Request.QueryString["id"].ToString();

                var per = (from m in km.PermissionGroups where m.PGroupName == pgroupName select m.RoleId).ToList();

                var userRoles = km.aspnet_Roles.Where(k => per.Contains(k.RoleId)).Select(k => k.RoleName);

                txtPermission.Text = pgroupName;
                var userInFiels = (from k in km.aspnet_Roles
                                   where k.Description != null &&
(k.GroupName == "Laboratay" | k.GroupName == "Library")
&& userRoles.Contains(k.RoleName)
                                   select k.RoleId).ToList();
                for (int i = 0; i <= cbFiels.Items.Count - 1; i++)
                {

                    foreach (var item in userInFiels)
                    {
                        if (cbFiels.Items[i].Value == item.ToString())
                            cbFiels.Items[i].Selected = true;
                    }
                }



                var userInManager = (from k in km.aspnet_Roles
                                                where k.Description != null &&
                                   ( k.GroupName == "School")
                        && userRoles.Contains(k.RoleName)
                                                select k.RoleId).ToList();

                for (int i = 0; i <= chxManager.Items.Count - 1; i++)
                {

                    foreach (var item in userInManager)
                    {
                        if (chxManager.Items[i].Value == item.ToString())
                            chxManager.Items[i].Selected = true;
                    }
                }


//                var userINGarageAndVisas = (from k in km.aspnet_Roles
//                                            where k.Description != null &&
//            (k.GroupName == "Employee" | k.GroupName == "EmployeeAttendence")
//                        && userRoles.Contains(k.RoleName)

//                                            select k.RoleId).ToList();
//                for (int i = 0; i <= cbCarageAndVisa.Items.Count - 1; i++)
//                {

//                    foreach (var item in userINGarageAndVisas)
//                    {
//                        if (cbCarageAndVisa.Items[i].Value == item.ToString())
//                            cbCarageAndVisa.Items[i].Selected = true;
//                    }
//                }


//                var UserInSetting = (from k in km.aspnet_Roles
//                                     where k.Description != null &&
//                    (k.GroupName == "EmployeeRoles" | k.GroupName == "Finance")
//                        && userRoles.Contains(k.RoleName)

//                                     select k.RoleId).ToList();

//                for (int i = 0; i <= cbSetting.Items.Count - 1; i++)
//                {

//                    foreach (var item in UserInSetting)
//                    {
//                        if (cbSetting.Items[i].Value == item.ToString())
//                            cbSetting.Items[i].Selected = true;
//                    }
//                }

//                var UserInStudent = (from k in km.aspnet_Roles
//                                     where k.Description != null &&
//(k.GroupName == "Student" | k.GroupName == "StudentAttendence") && userRoles.Contains(k.RoleName)

//                                     select k.RoleId).ToList();

//                for (int i = 0; i <= cbStudent.Items.Count - 1; i++)
//                {

//                    foreach (var item in UserInStudent)
//                    {
//                        if (cbStudent.Items[i].Value == item.ToString())
//                            cbStudent.Items[i].Selected = true;
//                    }
//                }

            }
            else
            {
                Response.Redirect("Permission.aspx");
            }

        }
    }
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected void ddlEmployee_DataBound(object sender, EventArgs e)
    {
        //ddlEmployee.Items.Insert(0, new ListItem(" اختر الموظف ", "0"));

    }
    protected void ddlDepartment_DataBound(object sender, EventArgs e)
    {
        //ddlDepartment.Items.Insert(0, new ListItem(" اختر القسم ", "0"));

    }


    protected void btnEdit_Click(object sender, EventArgs e)
    {

        string pgroupName = Request.QueryString["id"].ToString();

        var per = (from m in km.PermissionGroups where m.PGroupName == pgroupName select m).ToList();

        //  var userRoles = km.PermissionGroup.Where(k => per.Contains(k.RoleId)).Select(k => k.PGroupName);

        foreach (var item in per)
        {
            km.PermissionGroups.Remove(item);
        }

        PermissionGroup p = new PermissionGroup();
        p.PGroupName = txtPermission.Text;

        //for (int i = 0; i <= cbCarageAndVisa.Items.Count - 1; i++)
        //{
        //    if (cbCarageAndVisa.Items[i].Selected)
        //    {
        //        Guid RoleId = Guid.Parse(cbCarageAndVisa.Items[i].Value);
        //        p.RoleId = RoleId;
        //        km.PermissionGroups.Add(p);
        //    }
        //}
        //for (int i = 0; i <= cbSetting.Items.Count - 1; i++)
        //{
        //    if (cbSetting.Items[i].Selected)
        //    {
        //        Guid RoleId = Guid.Parse(cbSetting.Items[i].Value);
        //        p.RoleId = RoleId;
        //        km.PermissionGroups.Add(p);

        //    }

        //}

        //for (int i = 0; i <= cbFiels.Items.Count - 1; i++)
        //{
        //    if (cbFiels.Items[i].Selected)
        //    {
        //        Guid RoleId = Guid.Parse(cbFiels.Items[i].Value);
        //        p.RoleId = RoleId;
        //        km.PermissionGroups.Add(p);


        //    }

        //}

        for (int i = 0; i <= chxManager.Items.Count - 1; i++)
        {
            if (chxManager.Items[i].Selected)
            {
                Guid RoleId = Guid.Parse(chxManager.Items[i].Value);
                p.RoleId = RoleId;
                km.PermissionGroups.Add(p);
                km.SaveChanges();

            }

        }


        //for (int i = 0; i <= cbStudent.Items.Count - 1; i++)
        //{
        //    if (cbStudent.Items[i].Selected)
        //    {
        //        Guid RoleId = Guid.Parse(cbStudent.Items[i].Value);
        //        p.RoleId = RoleId;
        //        km.PermissionGroups.Add(p);


        //    }

        //}
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت التعديل بنجاح'); </script>", false);



    }

   
}