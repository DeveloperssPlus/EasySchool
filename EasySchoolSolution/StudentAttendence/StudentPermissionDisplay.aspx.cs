using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAttendence_StudentPermissionDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();


    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentPermissionDisplay";
        base.OnPreInit(e);
    }
    int counter = 0;
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.DataBind();
            Calendar2.DataBind();
            Fill();
        }
    }
    public void Fill()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();

        var preInfo = (from ep in km.StudentsPermissions
                       join e in km.Students on ep.StudentId equals e.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId
                       orderby ep.Date descending
                       select new
                       {
                           e.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.ParentName,
                           ep.Date,
                           ep.Class,
                           ep.Comments
                       }).ToList();

        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();
    }

    protected void btnShowPermissionDay_Click(object sender, EventArgs e)
    {
        DateTime Today = DateTime.Now.Date;
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();

        var preInfo = (from ep in km.StudentsPermissions
                       join emp in km.Students on ep.StudentId equals emp.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId && ep.Date == Today
                       orderby ep.Date descending
                       select new
                       {
                           emp.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.ParentName,
                           ep.Date,
                           ep.Class,
                           ep.Comments
                       }).ToList();
        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();
    }

    protected void btnShowAllPermission_Click(object sender, EventArgs e)
    {
        Fill();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        DateTime DateFrom=new DateTime(), DateTo = new DateTime();
        if (Calendar1.CultureName == "ar-SA")
        {

         DateFrom = MyDate.convertHijriToGregorian(DatePickerFrom.Text);
         DateTo = MyDate.convertHijriToGregorian(DatePickerTo.Text);
        }
        else
        {
             DateFrom = DateTime.ParseExact(DatePickerFrom.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
             DateTo = DateTime.ParseExact(DatePickerTo.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = info.getId();

        var preInfo = (from ep in km.StudentsPermissions
                       join emp in km.Students on ep.StudentId equals emp.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId && ep.Date >= DateFrom && ep.Date <= DateTo
                       orderby ep.Date descending
                       select new
                       {
                           emp.Name,
                           ep.Reason,
                           ep.TimeFrom,
                           ep.ParentName,
                           ep.Date,
                           ep.Class,
                           ep.Comments
                       }).ToList();
        lstPermission.DataSource = preInfo;
        lstPermission.DataBind();
    }
}