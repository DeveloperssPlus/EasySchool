using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class EmployeeAttendence_permissionDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "permissionDisplay";
        base.OnPreInit(e);
    }

    int counter = 0;
 
    protected string getCounter()
    {
        return (++counter).ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill();
        }
    }
    public void Fill()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();
      
        var preInfo = (from ep in km.Permissions
                       join e in km.Employees on ep.EmployeeId equals e.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId
                       orderby ep.Date descending
                       select new
                       {
                           ep.Id,
                           e.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.TimeTo,
                           ep.Date,
                           ep.Comments,
                           IsTeacher=e.JobId==((from j in km.Jobs where j.Name=="معلم" select j.Id).FirstOrDefault())
                       }).ToList();

        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();
    }
    public void FillByDate()
    {
        DateTime Today = DateTime.Now.Date;
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();

        var preInfo = (from ep in km.Permissions
                       join e in km.Employees on ep.EmployeeId equals e.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId && ep.Date==Today
                       orderby ep.Date descending
                       select new
                       {
                           ep.Id,
                           e.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.TimeTo,
                           ep.Date,
                           ep.Comments
                       }).ToList();
        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();
    }
    public void FillByLevel()
    {
        DateTime DateFrom, DateTo;
        if (Calendar1.CultureName == "ar-SA")
            DateFrom = MyDate.convertHijriToGregorian(DatePickerFrom.Text);
        else
            DateFrom = DateTime.ParseExact(DatePickerFrom.Text, "yyyy/MM/dd", CultureInfo.CurrentCulture);

        if (Calendar2.CultureName == "ar-SA")
            DateTo = MyDate.convertHijriToGregorian(DatePickerTo.Text);
        else
            DateTo = DateTime.ParseExact(DatePickerTo.Text, "yyyy/MM/dd", CultureInfo.CurrentCulture);

        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();

        var preInfo = (from ep in km.Permissions
                       join e in km.Employees on ep.EmployeeId equals e.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId && (ep.Date >= DateFrom && ep.Date <= DateTo)
                       orderby ep.Date descending
                       select new
                       {
                           ep.Id,
                           e.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.TimeTo,
                           ep.Date,
                           ep.Comments
                       }).ToList();
        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();

    }
    protected void btnShowPermissionDay_Click(object sender, EventArgs e)
    {
        FillByDate();
    }

    protected void btnShowAllPermission_Click(object sender, EventArgs e)
    {
        Fill();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        FillByLevel();
    }
}