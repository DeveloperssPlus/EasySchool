using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_PermissionClassesAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PermissionClassesAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDropEmp();
            if (Request.QueryString["id"] != null)
            {
                var idd = int.Parse(Request.QueryString["id"]);
                SchoolInformation info = new SchoolInformation();
                var schoolid = info.getId();

                OnlineSchoolEntities km = new OnlineSchoolEntities();

                var permission = (from k in km.Permissions where k.Id == idd select k).FirstOrDefault();

                lblDate.Text = MyDate.getDate(permission.Date + "");
                lblEmpName.Text = (from k in km.Employees where k.IdentityNumber == permission.EmployeeId select k.Name).FirstOrDefault();
                lblFrom.Text = permission.TimeFrom.ToString();
                lblTo.Text = permission.TimeTo.ToString();
                ltrReason.Text = permission.Reason;
                //ddlEmpName.SelectedValue= permission.EmployeeId;
                var lstEmployee = (from k in km.Employees where k.IdentityNumber != permission.EmployeeId && k.SchoolId == schoolid  select  k).ToList();
                ddlEmployee.DataSource = lstEmployee;
                ddlEmployee.DataBind();
                LstClass.DataBind();
            }
            else
            {
              
                txtReson.Visible = true;
              
                Label6.Visible= false;
                Label10.Visible = false;
                Label1.Visible = false;
                ddlEmpName.Visible = true;
               

            }
        }
    }

    public void FillDropEmp()
    {
        if (!IsPostBack)
        {
            
            var schoolId = info.getId();
            var Emp = (from p in km.Employees
                       where p.SchoolId == schoolId 
                       orderby p.Name
                       select p).ToList();


            var TeacherEmp = (from p in km.Employees
                              join j in km.Jobs on p.JobId equals j.Id 
                       where p.SchoolId == schoolId && j.Name=="معلم"
                       orderby p.Name
                       select p).ToList();

            ddlEmpName.DataValueField = "IdentityNumber";
            ddlEmpName.DataTextField = "Name";
            ddlEmpName.DataSource = TeacherEmp;
            ddlEmpName.DataBind();

            ddlEmployee.DataSource = Emp;
            ddlEmployee.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var permission = new PermissionsClass();
        if (Request.QueryString["id"] != null)
        {

    //   var idd = int.Parse(Request.QueryString["id"]);
    //    var period = int.Parse(ddlClassNumber.SelectedValue);
    //    OnlineSchoolEntities km = new OnlineSchoolEntities();

    

    //    var Exist = (from k in km.Permissions where k.Id == idd && k.Period == period select k).FirstOrDefault();
    //    if (Exist != null)
    //    {
    //        permission = Exist;
    //    }

    //    permission.Period = int.Parse(ddlClassNumber.SelectedValue);
    //    permission.ClassRoom = txtClass.Text;
    //    permission.EmployeeId = ddlEmployee.SelectedValue;
    //    permission.Comment = txtComments.Text;
    ////    permission.PermissionId = idd;
       


    //    if (Exist == null)
    //    {
            
    //    km.PermissionsClasses.Add(permission);

    //    }
    //    km.SaveChanges();

    //    LstClass.DataBind();
        }else
        {
            permission.EmployeeId = ddlEmployee.SelectedValue;
            permission.PermissionEmployeeId = ddlEmpName.SelectedValue;
            permission.Reason = txtReson.Text;
         //   permission.Date=
            km.PermissionsClasses.Add(permission);
            km.SaveChanges();

        }


    }



    protected void LstClass_DataBinding(object sender, EventArgs e)
    {
        //var idd = int.Parse(Request.QueryString["id"]);
        
        //var lst = (from k in km.PermissionsClasses
        //           where k.PermissionId == idd
        //           orderby k.Id descending
        //           select new
        //           {
        //               k.Id,
        //               k.Period,
        //               k.ClassRoom,
        //               k.Comment,
        //               Name=(from x in km.Employees where x.IdentityNumber ==k.EmployeeId select x.Name ).FirstOrDefault()
        //           }).ToList();

        //LstClass.DataSource = lst;

    }

    protected void LstClass_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var idd =int.Parse( e.CommandArgument.ToString());
            var permission = (from k in km.PermissionsClasses where k.Id == idd select k).FirstOrDefault();

            km.PermissionsClasses.Remove(permission);
            km.SaveChanges();
            LstClass.DataBind();
        }
    }


}