using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_EmployeeWaitingAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "EmployeeWaitingAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                var idd = int.Parse(Request.QueryString["id"]);
                SchoolInformation info = new SchoolInformation();
                var schoolid = info.getId();

                OnlineSchoolEntities km = new OnlineSchoolEntities();

                var absent = (from k in km.Absences where k.Id == idd select k).FirstOrDefault();

                lblDate.Text = MyDate.getDate(absent.Date + "");
                lblEmpName.Text = (from k in km.Employees where k.IdentityNumber == absent.EmployeeId select k.Name).FirstOrDefault();
          

                var lstEmployee = (from k in km.Teachers where k.IdentityNumber != absent.EmployeeId && k.SchoolId == schoolid select k).ToList();
                ddlEmployee.DataSource = lstEmployee;
                ddlEmployee.DataBind();

                LstClass.DataBind();

            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        var idd = int.Parse(Request.QueryString["id"]);
        var period = int.Parse(ddlClassNumber.SelectedValue);
        OnlineSchoolEntities km = new OnlineSchoolEntities();

        var wait = new EmployeeWaiting();

        var Exist = (from k in km.EmployeeWaitings where k.AbsenceId == idd && k.Period == period select k).FirstOrDefault();
        if (Exist != null)
        {
            wait = Exist;
        }

        wait.Period = int.Parse(ddlClassNumber.SelectedValue);
        wait.ClassRoom = txtClass.Text;
        wait.Do = txtDo.Text;
        wait.EmployeeId = ddlEmployee.SelectedValue;
        wait.Comment = txtComments.Text;
        wait.AbsenceId = idd;
        wait.Subject = txtSubject.Text;
        if (Exist == null)
        {
            km.EmployeeWaitings.Add(wait);
        }
        km.SaveChanges();

        LstClass.DataBind();


    }



    protected void LstClass_DataBinding(object sender, EventArgs e)
    {
        var idd = int.Parse(Request.QueryString["id"]);

        var lst = (from k in km.EmployeeWaitings
                   where k.AbsenceId == idd
                   orderby k.Id descending
                   select new
                   {
                       Name = (from x in km.Employees where x.IdentityNumber == k.EmployeeId select x.Name).FirstOrDefault(),
                       k.Id,
                       k.Period,
                       k.ClassRoom,
                       k.Do,
                       k.Subject,
                       k.Comment,
                   }).ToList();

        LstClass.DataSource = lst;

    }

    protected void LstClass_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var idd = int.Parse(e.CommandArgument.ToString());
            var wait = (from k in km.EmployeeWaitings where k.Id == idd select k).FirstOrDefault();

            km.EmployeeWaitings.Remove(wait);
            km.SaveChanges();
            LstClass.DataBind();
        }
    }
}