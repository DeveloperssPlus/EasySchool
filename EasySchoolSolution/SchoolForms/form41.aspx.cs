using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form41 : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["weekId"] != null)
            {
                SchoolInformation info = new SchoolInformation();
                var weekId =int.Parse( Request.QueryString["weekId"]);

                ltrYear.Text = " " + (from k in km.Semesters where k.IsCurrent == true select k.YearH).FirstOrDefault().ToString();
                ltrSemester.Text = " " + MyDate.getCurrentSemester();
                ltrSecretaryResourceCenter.Text = info.getLearningResources();
                
                var week= (from k in km.Weeks where k.Id == weekId select k).FirstOrDefault();
                ltrWeek.Text = "  " + week.Name + "  ";
                ltrWeekFrom.Text = MyDate.getHijriDate((DateTime)week.startDate);
                ltrWeekTo.Text = MyDate.getHijriDate(((DateTime)week.startDate).AddDays(6));
                FillTable(weekId);
            }
        }
    }


    private void FillTable(int weekId)
    {

        //   var weekId = int.Parse(ddlWeek.SelectedValue);

        DateTime date = (DateTime)(from k in km.Weeks where k.Id == weekId select k.startDate).FirstOrDefault();

        var day = date.DayOfWeek;
        switch (day)
        {
            case DayOfWeek.Saturday:
                date = date.AddDays(1);
                break;
            case DayOfWeek.Sunday:
                ;
                break;

            case DayOfWeek.Monday:
                date = date.AddDays(-1);
                break;
            case DayOfWeek.Tuesday:
                date = date.AddDays(-2);

                break;
            case DayOfWeek.Wednesday:
                date = date.AddDays(-3);
                break;
            case DayOfWeek.Thursday:
                date = date.AddDays(-4);
                break;
            case DayOfWeek.Friday:
                date = date.AddDays(2);
                break;
        }

        var lstDate = new List<DateTime>();
        for (int i = 0; i <= 4; ++i)
        {
            lstDate.Add(date.AddDays(i));
        }
        var schoolid = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        var lst = (from dd in lstDate
                   select new
                   {
                       Date = dd,
                   }).Distinct().ToList();
        lstVisits.DataSource = lst;
        lstVisits.DataBind();
    }

    protected void lstVisits_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();
        ListView lstSubjects = (ListView)(e.Item.FindControl("lstSubjects"));
        ListView lstClass = (ListView)(e.Item.FindControl("lstClass"));
        ListView lstTeacher = (ListView)(e.Item.FindControl("lstTeacher"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            DateTime date = Convert.ToDateTime(DataBinder.Eval(e.Item.DataItem, "Date").ToString());

            var lst = new List<int> { 1, 2, 3, 4, 5, 6 };
            var lst2 = (from i in lst
                        let visit = (from k in km.LibraryClassVisits
                                     join s in km.SubjectsInSemesters on k.SubjectId equals s.Id
                                     join t in km.Teachers on k.TeacherId equals t.IdentityNumber
                                     where k.Period == i && k.Date == date
                                     && k.SchoolId == schoolid
                                     && k.SemesterId == semesterId
                                     select new
                                     {
                                         k.Date,
                                         k.Id,
                                         k.IsDone,
                                         k.Period,
                                         subjectName = (from sub in km.Subjects where sub.Id == s.SubjectId select sub.Name).FirstOrDefault(),
                                         classId = s.ClassId,
                                         teacherName = t.Name
                                     }).FirstOrDefault()
                        select new
                        {
                            isNull = (visit == null),
                            date,

                            Id = (visit == null) ? 0 : visit.Id,
                            IsDone = (visit == null) ? false : visit.IsDone,
                            Period = i,
                            subjectName = (visit == null) ? "" : visit.subjectName,
                            classId = (visit == null) ? "" : visit.classId,
                            teacherName = (visit == null) ? "" : visit.teacherName
                        }).ToList();
            lstSubjects.DataSource = lst2;
            lstSubjects.DataBind();

            lstClass.DataSource = lst2;
            lstClass.DataBind();

            lstTeacher.DataSource = lst2;
            lstTeacher.DataBind();
        }
    }




}