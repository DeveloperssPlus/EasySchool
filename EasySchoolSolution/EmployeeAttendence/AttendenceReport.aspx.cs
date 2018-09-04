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
    int counter2 = 0;
    int counter3 = 0;

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AttendenceReport";
        base.OnPreInit(e);
    }
    protected string getCounter()
    {
        return (++counter).ToString();
    }

    protected string getCounter2()
    {
        return (++counter2).ToString();
    }
    protected string getCounter3()
    {
        return (++counter3).ToString();
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

            var EmployeeNo = (from k in km.Employees where k.SchoolId == sid select k).Count();
            lblAll.Text = EmployeeNo.ToString();
            today = DateTime.Now.Date;

          //  var lstAttendence = (from k in km.Attendences where k.SchoolId == sid && k.Date == today select k).ToList();
          //  lblAttendence.Text = lstAttendence.Count().ToString();

            lvAbsence.DataBind();

            lvLatenesses.DataBind();

            lvAlerts.DataBind();
            lvPrintedAlerts.DataBind();
        }
    }



    protected void lvAbsence_DataBinding(object sender, EventArgs e)
    {
        var lstAbsence = (from k in km.Absences
                          where k.SchoolId == sid && k.Date == today
                          select new
                          {
                              k.Id,
                              k.Type,
                              k.EmployeeId,
                              name = (from emp in km.Employees where emp.IdentityNumber == k.EmployeeId select emp.Name).FirstOrDefault(),
                              count = (from x in km.AbsenceAlerts where x.Id == k.AlertId select x.count).FirstOrDefault(),
                              k.AlertId,
                              isHoloday = ((from x in km.AbsenceAlerts where x.Id == k.AlertId select x.countHoliday).FirstOrDefault()!=0)

                          }).ToList();
        var absenceCount = lstAbsence.Count();
        lblAbsence.Text = absenceCount.ToString();
        lblAttendence.Text = (int.Parse(lblAll.Text) - absenceCount).ToString();
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
        var lstLateness = (from k in km.Latenesses
                           where k.SchoolId == sid && k.Date == today
                           //group k by k.EmployeeId into g
                           select new
                           {
                               k.Id,
                               employeeId=k.EmployeeId,
                               empName = (from emp in km.Employees where emp.IdentityNumber == k.EmployeeId select emp.Name).FirstOrDefault(),
                               type=(from t in km.Constants where t.Id==k.Type select t.value).FirstOrDefault(),
                               k.TotalSeconds

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

        var lstLateness = (from k in km.LatenessDecisions
                           where k.SchoolId == sid && ((DateTime)k.Date).Year == DateTime.Now.Year && k.Days==0
                           select new
                           {
                               employeeId = k.EmployeeId,
                               empName = (from emp in km.Employees where emp.IdentityNumber == k.EmployeeId select emp.Name).FirstOrDefault(),
                               hours = k.Hours
                           }).ToList();

        lvAlerts.DataSource = lstLateness;

        //var lstPermission = (from k in km.Permissions
        //                   where k.SchoolId == sid && ((DateTime)k.Date).Year == DateTime.Now.Year
        //                   group k by k.EmployeeId into g
        //                   select new
        //                   {
        //                       isLate = false,
        //                       employeeId = g.Key,
        //                       empName = (from emp in km.Employees where emp.IdentityNumber == g.Key select emp.Name).FirstOrDefault(),
        //                       totalSeconds = g.Sum(x => x.TotalSeconds)
        //                   }).ToList();

        //double twohours = new TimeSpan(2, 0, 0).TotalSeconds;

        //var lstAlerts = (from k in lstLateness  where k.totalSeconds >= twohours select k).ToList();
        //var lstAlerts2 = (from k in lstPermission where k.totalSeconds >= twohours select k).ToList();

    //    lstAlerts= lstAlerts.Concat(lstAlerts2).ToList();
        

    }


    protected void lnkConfirm_Click(object sender, EventArgs e)
    {

    }

    protected void lvPrintedAlerts_DataBinding(object sender, EventArgs e)
    {
        var lstLateness = (from k in km.LatenessDecisions
                           where k.SchoolId == sid && ((DateTime)k.Date).Year == DateTime.Now.Year &&( k.Days > 0 || k.Days==null)
                           select new
                           {
                               Id=k.Id,
                               employeeId = k.EmployeeId,
                               empName = (from emp in km.Employees where emp.IdentityNumber == k.EmployeeId select emp.Name).FirstOrDefault(),
                               hours = k.Hours,
                               days=k.Days
                           }).ToList();

        lvPrintedAlerts.DataSource = lstLateness;
    }
}