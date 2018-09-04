using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Library_DailyVisitDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    private int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "DailyVisitDisplay";
        base.OnPreInit(e);
    }
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
        int SchoolID = info.getId();
        var Visits = (from k in km.LibraryDailyVisits
                           join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               k.StudentId,
                               k.Time,
                               k.Date,
                               k.Reason,
                               k.MaterialsUsed,
                               p.Name
                           }).ToList();

        lstLibraryVisits.DataSource = Visits;
        lstLibraryVisits.DataBind();
    }
    public void FillByDate()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        DateTime Today = DateTime.Now.Date;
        int SchoolID = info.getId();
        var Visits = (from k in km.LibraryDailyVisits
                      join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date == Today
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               k.StudentId,
                               k.Time,
                               k.Date,
                               k.Reason,
                               k.MaterialsUsed,
                               p.Name
                           }).ToList();

        lstLibraryVisits.DataSource = Visits;
        lstLibraryVisits.DataBind();
    }
    public void FillByLevel()
    {
        DateTime DateFrom, DateTo;
        if (Calendar1.CultureName == "ar-SA")
            DateFrom = MyDate.convertHijriToGregorian(DatePickerFrom.Text);
        else
            DateFrom = DateTime.ParseExact(DatePickerFrom.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        if (Calendar2.CultureName == "ar-SA")
            DateTo = MyDate.convertHijriToGregorian(DatePickerTo.Text);
        else
            DateTo = DateTime.ParseExact(DatePickerTo.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        var semesterId = MyDate.getCurrentSemesterId();
      
    //    DateTime DateFrom = Convert.ToDateTime(DatePickerFrom.Text);
     //   DateTime DateTo = Convert.ToDateTime(DatePickerTo.Text);
        int SchoolID = info.getId();
        var Visits = (from k in km.LibraryDailyVisits
                      join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date >= DateFrom && k.Date <= DateTo
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               k.StudentId,
                               k.Time,
                               k.Date,
                               k.Reason,
                               k.MaterialsUsed,
                               p.Name
                           }).ToList();

        lstLibraryVisits.DataSource = Visits;
        lstLibraryVisits.DataBind();
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
}