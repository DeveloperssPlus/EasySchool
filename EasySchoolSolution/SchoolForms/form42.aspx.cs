using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form42 : System.Web.UI.Page
{

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SchoolInformation info = new SchoolInformation();

            ltrYear.Text = " " + (from k in km.Semesters where k.IsCurrent == true select k.YearH).FirstOrDefault().ToString();
            ltrSemester.Text = " " + MyDate.getCurrentSemester();
            ltrSecretaryResourceCenter.Text = info.getLearningResources();
        lstLibraryVisits.DataBind();

        }
    }

    protected void lstLibraryVisits_DataBinding(object sender, EventArgs e)
    {
        var semesterId = MyDate.getCurrentSemesterId();
        var schoolId = new SchoolInformation().getId();
        var Visits = (from k in km.LibraryDailyVisits
                      join p in km.Students on k.StudentId equals p.IdentityNumber
                      where k.SemesterId == semesterId && k.SchoolId == schoolId
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
}