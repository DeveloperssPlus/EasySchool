using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_LibraryClassVisitRequest : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LibraryClassVisitRequest";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlWeek.DataBind();
            var date = DateTime.Now;
            var type = ConstantManager.getConstantId("دوام");
            var week = (from k in km.Weeks
                        where k.startDate < date
                        orderby k.startDate descending
                        where k.type == type
                        select k).FirstOrDefault();

            int weekId = (week == null) ? int.Parse(ddlWeek.SelectedValue) : week.Id;
            FillTable(weekId);

            ddlWeek.SelectedValue = weekId + "";
            if (week != null)
                lblToday.Text = MyDate.getDate(week.startDate.ToString()) + "-" + MyDate.getDate(((DateTime)week.startDate).AddDays(6).ToString());

            var jobid = (from k in km.Jobs where k.Name == "معلم" select k.Id).FirstOrDefault();
            var schoolid = new SchoolInformation().getId();

            var teacher = (from teach in km.Employees
                           where teach.SchoolId == schoolid
                           && teach.JobId == jobid
                           orderby teach.Name
                           select teach).ToList();

            DDlTeacherName.DataSource = teacher;
            DDlTeacherName.DataBind();
            var semesterid = MyDate.getCurrentSemesterId();

            ddlClass.DataSource = (from k in km.SubjectsInSemesters
                                   where k.SchoolId == schoolid && k.SemesterId == semesterid
                                   orderby k.ClassId
                                   select k.ClassId).ToList().Distinct();
            ddlClass.DataBind();

            var classid = ddlClass.SelectedValue;
            ddlSubject.DataSource = (from k in km.SubjectsInSemesters
                                     join s in km.Subjects on k.SubjectId equals s.Id
                                     where k.SchoolId == schoolid && k.SemesterId == semesterid
                                     orderby s.Name
                                     select s).ToList().Distinct();
            ddlSubject.DataBind();
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


    protected void btnView_Click(object sender, EventArgs e)
    {
        var weekId = int.Parse(ddlWeek.SelectedValue);
        FillTable(weekId);
        DateTime date = (DateTime)(from k in km.Weeks where k.Id == weekId select k.startDate).FirstOrDefault();

        lblToday.Text ="من "+ MyDate.getDate(date.ToString()) + "   إلى " + MyDate.getDate(((DateTime)date).AddDays(6).ToString());

    }

    protected void lstVisits_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();
        ListView lstDays = (ListView)(e.Item.FindControl("lstDays"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            DateTime date = Convert.ToDateTime(DataBinder.Eval(e.Item.DataItem, "Date").ToString());

            var lst = new List<int> { 1, 2, 3, 4, 5, 6};
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
                                         k.SubjectId,
                                         k.TeacherId,
                                         subjectName = (from sub in km.Subjects where sub.Id==s.SubjectId select sub.Name).FirstOrDefault(),
                                         classId=s.ClassId,                                         
                                         teacherName = t.Name
                                     }).FirstOrDefault()
                        select new
                        {
                            isNull = (visit == null),
                            date,

                            Id = (visit == null) ? 0 : visit.Id,
                            IsDone = (visit == null) ? false : visit.IsDone,
                            Period = i,
                            SubjectId = (visit == null) ? 0 : visit.SubjectId,
                            TeacherId = (visit == null) ? "" : visit.TeacherId,
                            subjectName = (visit == null) ? "" : visit.subjectName,
                            classId = (visit == null) ? "" : visit.classId,
                            teacherName = (visit == null) ? "" : visit.teacherName

                        }).ToList();
            lstDays.DataSource = lst2;
            lstDays.DataBind();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int SchoolID = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        LibraryClassVisit visit = new LibraryClassVisit();

            visit.Date = Convert.ToDateTime(hiddenDate.Value);

        var subjectId = int.Parse(ddlSubject.SelectedValue);
        var classId = ddlClass.SelectedValue;

        var subject = (from k in km.SubjectsInSemesters where k.SchoolId == SchoolID && k.SemesterId== semesterId &&  k.SubjectId== subjectId && k.ClassId == classId select k).FirstOrDefault();
        if (subject != null)
        {
            visit.SubjectId = subject.Id;
        visit.TeacherId = DDlTeacherName.SelectedValue;

        visit.SchoolId = SchoolID;
        visit.SemesterId = MyDate.getCurrentSemesterId();
            visit.Period=int.Parse(lblPeriod.Text);
            visit.IsDone = false;
        km.LibraryClassVisits.Add(visit);
        km.SaveChanges();

           ClientScript.RegisterStartupScript(this.GetType(), "", "<script> addSuccess('  تمت حجز حصة في المكتبة بنجاح'); </script>", false);

            int weekId =int.Parse(ddlWeek.SelectedValue);
            FillTable(weekId);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script> addfalied(' الرجاء التأكد من الصف و المادة'); </script>", false);

        }

    }

    protected void lstDays_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string date = commandArgs[0];
            string Period = commandArgs[1];

            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal('modalAdd'); </script>", false);

            lblDate.Text = MyDate.getDate(date);
            hiddenDate.Value = date;
            lblDay.Text = MyDate.getDay(Convert.ToDateTime(date));
            lblPeriod.Text = Period.ToString();

        }

        if (e.CommandName == "details")
        {
           var idd = int.Parse(e.CommandArgument.ToString());

            var visit = (from k in km.LibraryClassVisits where k.Id == idd select k).FirstOrDefault();
            hiddenId.Value = visit.Id+"";
            lblDate2.Text = MyDate.getDate(visit.Date.ToString());
           
            lblDay2.Text = MyDate.getDay((DateTime)visit.Date);
            lblPeriod2.Text = visit.Period+"";

            lblTeacher.Text = (from k in km.Employees where k.IdentityNumber == visit.TeacherId select k.Name).FirstOrDefault();
            var subject = (from k in km.SubjectsInSemesters
                           join
                           s in km.Subjects 
                           on k.SubjectId equals s.Id
                           select new
                           {
                               k.ClassId,
                               s.Name
                           }).FirstOrDefault();

            lblClass.Text = subject.ClassId;
            lblSubject.Text = subject.Name;

            if (visit.IsDone == true)
                chxDone.Checked = true;

            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal('modalDetails'); </script>", false);
        }
    }


    protected void btnDone_Click(object sender, EventArgs e)
    {
        var idd =int.Parse( hiddenId.Value);
        var visit = (from k in km.LibraryClassVisits where k.Id == idd select k).FirstOrDefault();
        visit.IsDone = chxDone.Checked;
        km.SaveChanges();

        int weekId = int.Parse(ddlWeek.SelectedValue);
        FillTable(weekId);

    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        var weekId = ddlWeek.SelectedValue;

        ClientScript.RegisterStartupScript(this.GetType(), "print", "<script>  prepareFrame('../SchoolForms/form41.aspx?weekId="+weekId+"') ; </script>", false);

   
    }
}