using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_AttendenceReport : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    DateTime today;
    int sid;
    int counter=0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AttendenceReport";
        base.OnPreInit(e);
    }
    protected string getCounter()
    {
        return (++counter).ToString();
    }

    protected void setCounter()
    {
        counter=0;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            sid = info.getId();

            var StudentNo = (from k in km.Students where k.SchoolId == sid select k).Count();
            lblAll.Text = StudentNo.ToString();
            today = DateTime.Now.Date;

            var lstAttendence = (from k in km.StudentsAttendences where k.SchoolId == sid && k.Date == today select k).ToList();
            lblAttendence.Text = lstAttendence.Count().ToString();

            lvAbsence.DataBind();

            lvLatenesses.DataBind();

            lvAlerts.DataBind();

        }
    }



    protected void lvAbsence_DataBinding(object sender, EventArgs e)
    {
        var lstAbsence = (from k in km.StudentsAbsences
                          where k.SchoolId == sid && k.Date == today
                          select new
                          {
                              k.Id,
                              k.IsExcuse,
                              k.StudentId,
                              name = (from std in km.Students where std.IdentityNumber == k.StudentId select std.Name).FirstOrDefault()
                          }).ToList();
        var absenceCount = lstAbsence.Count();
        lblAbsence.Text = absenceCount.ToString();
        if (absenceCount > 0)
        {
            PlaceHolderAbsence.Visible = true;
            lvAbsence.DataSource = lstAbsence;
        }
        else
        {
            PlaceHolderAbsence.Visible = false;
            ltrNoAbcence.Text = "لا يوجد غياب اليوم. <br>";
        }

    }

    protected void lvLatenesses_DataBinding(object sender, EventArgs e)
    {

        var lstLateness = (from k in km.StudentsLatenesses
                           where k.SchoolId == sid && k.Date == today
                           group k by k.StudentId into g
                           select new
                           {
                               employeeId = g.Key,
                               stdName = (from std in km.Students where std.IdentityNumber == g.Key select std.Name).FirstOrDefault(),
                               totalSeconds = g.Sum(x => x.TotalSeconds)

                           }).ToList();

        var latenessCount = lstLateness.Count();
        lblLateness.Text = latenessCount.ToString();
        if (latenessCount > 0)
        {
            PlaceHolderLateness.Visible = true;
            lvLatenesses.DataSource = lstLateness;
        }
        else
        {
            PlaceHolderLateness.Visible = false;
            ltrNoLateness.Text = "لا يوجد تأخر اليوم. <br>";
        }
    }



    protected void lvAlerts_DataBinding(object sender, EventArgs e)
    {

        var lstLateness = (from k in km.StudentsLatenesses
                           where k.SchoolId == sid && ((DateTime)k.Date).Year == DateTime.Now.Year
                           group k by k.StudentId into g
                           select new
                           {
                               isLate=true,
                               stdID = g.Key,
                               stdName = (from std in km.Employees where std.IdentityNumber == g.Key select std.Name).FirstOrDefault(),
                               totalSeconds = g.Sum(x => x.TotalSeconds)
                           }).ToList();


        //var lstPermission = (from k in km.StudentsPermissions
        //                   where k.SchoolId == sid && ((DateTime)k.Date).Year == DateTime.Now.Year
        //                   group k by k.StudentId into g
        //                   select new
        //                   {
        //                       isLate = false,
        //                       stdID = g.Key,
        //                       stdName = (from std in km.Employees where std.IdentityNumber == g.Key select std.Name).FirstOrDefault(),
        //                       totalSeconds = g.Sum(x => x.TotalSeconds)
        //                   }).ToList();

        double twohours = new TimeSpan(2, 0, 0).TotalSeconds;

        var lstAlerts = (from k in lstLateness  where k.totalSeconds >= twohours select k).ToList();
        //var lstAlerts2 = (from k in lstPermission where k.totalSeconds >= twohours select k).ToList();

        lstAlerts= lstAlerts.Concat(lstAlerts).ToList();
        
        lvAlerts.DataSource = lstAlerts;

    }
}