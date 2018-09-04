using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_AbsenceDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;
    int counter2 = 0;

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AbsenceDisplay";
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill();
            Calendar1.DataBind();
            Calendar2.DataBind();
            lstDecitions.DataBind();
        }
    }
    public void Fill()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.Absences
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Type,
                               alertId = k.AlertId,
                               Reason = ((from alert in km.AbsenceAlerts where alert.Id == k.AlertId select alert.Reason).FirstOrDefault()),
                               isReply=((from alert in km.AbsenceAlerts where alert.Id==k.AlertId select alert.Decision).FirstOrDefault())==null,

                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByDate()
    {
        var semesterId = MyDate.getCurrentSemesterId();
      
        DateTime Today = DateTime.Now.Date;

        int SchoolID = info.getId();

        var LatenessEmp = (from k in km.Absences
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date == Today
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Type,
                               alertId = k.AlertId,
                               Reason = ((from alert in km.AbsenceAlerts where alert.Id == k.AlertId select alert.Reason).FirstOrDefault()),
                               isReply = ((from alert in km.AbsenceAlerts where alert.Id == k.AlertId select alert.Decision).FirstOrDefault()) == null


                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByLevel()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        DateTime DateFrom, DateTo;
        if (Calendar1.CultureName == "ar-SA")
            DateFrom = MyDate.convertHijriToGregorian(DatePickerFrom.Text);
        else
            DateFrom = DateTime.ParseExact(DatePickerFrom.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        if (Calendar2.CultureName == "ar-SA")
            DateTo = MyDate.convertHijriToGregorian(DatePickerTo.Text);
        else
            DateTo = DateTime.ParseExact(DatePickerTo.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.Absences
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date >= DateFrom && k.Date <= DateTo
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Type,
                               alertId=k.AlertId,
                               Reason = ((from alert in km.AbsenceAlerts where alert.Id == k.AlertId select alert.Reason).FirstOrDefault()),
                               isReply = ((from alert in km.AbsenceAlerts where alert.Id == k.AlertId select alert.Decision).FirstOrDefault()) == null

                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    protected void btnShowLatenessDay_Click(object sender, EventArgs e)
    {
        FillByDate();
    }

    protected void btnShowAllLateness_Click(object sender, EventArgs e)
    {
        Fill();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        FillByLevel();
    }

    protected void lstDecitions_DataBinding(object sender, EventArgs e)
    {
        var semesterId = MyDate.getCurrentSemesterId();
        int SchoolID = info.getId();
        var lst = (from k in km.AbsenceAlerts
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Decision != null
                           orderby k.DateTo descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.DateFrom,
                               k.DateTo,
                               k.count,
                               k.Decision,
                               isPrint=(bool?)(k.Decision=="حسم")
                           }).ToList();

        lstDecitions.DataSource = lst;
    }
}