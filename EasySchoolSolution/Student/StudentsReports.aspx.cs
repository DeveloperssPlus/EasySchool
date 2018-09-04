using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentsReports : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentsReports";
        base.OnPreInit(e);
    }

    OnlineSchoolEntities km = new OnlineSchoolEntities();
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    //protected int getCounter2()
    //{
    //    return ++counter2;
    //}
    //protected int getCounter3()
    //{
    //    return ++counter3;
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var schoolid = new SchoolInformation().getId();
            var semesterid = MyDate.getCurrentSemesterId();

            Calendar1.DataBind();
            txtDate.Text = MyDate.getDate();

            ddlClass.DataSource = (from k in km.SubjectsInSemesters
                                   where k.SchoolId == schoolid && k.SemesterId == semesterid
                                   orderby k.ClassId
                                   select k.ClassId).ToList().Distinct();
            ddlClass.DataBind();

            lstAbsence.DataBind();
            lstLate.DataBind();
            lstNotes.DataBind();
            lstViolence.DataBind();

        }
    }

    protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSubject.DataBind();
    }

    protected void ddlSubject_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        var semesterid = MyDate.getCurrentSemesterId();

        var classid = ddlClass.SelectedValue;
        ddlSubject.DataSource = (from k in km.SubjectsInSemesters
                                 join s in km.Subjects on k.SubjectId equals s.Id
                                 where k.SchoolId == schoolid && k.SemesterId == semesterid
                                 && k.ClassId == classid
                                 select s).ToList().Distinct();
        ddlSubject.DataTextField = "Name";
        ddlSubject.DataValueField = "Id";
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        lstAbsence.DataBind();
        lstLate.DataBind();
        lstNotes.DataBind();
        lstViolence.DataBind();
    }


    protected void radioType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radioType.SelectedValue == "all")
        {
            PlaceHolderClass.Visible = false;
            PlaceHolderOne.Visible = false;
      
            lstAbsence.DataBind();
            lstLate.DataBind();
            lstNotes.DataBind();
            lstViolence.DataBind();

        }
        else
            if (radioType.SelectedValue == "class")
        {
            PlaceHolderClass.Visible = true;
            PlaceHolderOne.Visible = false;
            ddlSubject.DataBind();
            
            lstAbsence.DataBind();
            lstLate.DataBind();
            lstNotes.DataBind();
            lstViolence.DataBind();

        }
        else
            if (radioType.SelectedValue == "one")
        {
            PlaceHolderClass.Visible = false;
            PlaceHolderOne.Visible = true;
            ddlStudents.DataBind();

            lstAbsence.DataBind();
            lstLate.DataBind();
            lstNotes.DataBind();
            lstViolence.DataBind();


        }
    }

    protected void ddlStudents_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        var lstStd = (from k in km.Students where k.SchoolId == schoolid orderby k.Name select k).ToList();
        ddlStudents.DataSource = lstStd;
    }

    protected void lstAbsence_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        DateTime date=new DateTime();
        if (Calendar1.CultureName == "ar-SA")
        {
            date =(MyDate.convertHijriToGregorian(txtDate.Text)).Date;
        }
        else
        {
            date = DateTime.ParseExact(txtDate.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG")).Date;
        }

        if (radioType.SelectedValue == "all")
        {
            var lst = (from k in km.StudentsAbsences
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.IsExcuse,

                       }).ToList();
            lstAbsence.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "class")
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;

            var lst = (from k in km.StudentsAbsences
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join ss in km.StudentsSubjects on k.StudentId equals ss.StudentId 
                       join sub in km.SubjectsInSemesters on ss.SubjectId equals sub.Id
                       where k.SchoolId == schoolid && k.Date == date 
                       && sub.ClassId==classId && sub.SubjectId==subjectId
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.IsExcuse,
                       }).ToList();
            lstAbsence.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "one")
        {
            var stdId = ddlStudents.SelectedValue;
            var lst = (from k in km.StudentsAbsences
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date && s.IdentityNumber==stdId
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.IsExcuse,

                       }).ToList();
            lstAbsence.DataSource = lst;
        }
    }

    protected void lstLate_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        var type = ConstantManager.getConstantId("تأخر صباحي");
        var schoolid = new SchoolInformation().getId();
        DateTime date = new DateTime();
        if (Calendar1.CultureName == "ar-SA")
        {
            date = (MyDate.convertHijriToGregorian(txtDate.Text)).Date;
        }
        else
        {
            date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Date;
        }

        if (radioType.SelectedValue == "all")
        {
            var lst = (from k in km.StudentsLatenesses
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date && k.Type == type
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Amount,

                       }).ToList();
            lstLate.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "class")
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;

            var lst = (from k in km.StudentsLatenesses
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join ss in km.StudentsSubjects on k.StudentId equals ss.StudentId
                       join sub in km.SubjectsInSemesters on ss.SubjectId equals sub.Id
                       where k.SchoolId == schoolid && k.Date == date
                       && sub.ClassId == classId && sub.SubjectId == subjectId && k.Type == type
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Amount,
                       }).ToList();
            lstLate.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "one")
        {
            var stdId = ddlStudents.SelectedValue;
            var lst = (from k in km.StudentsLatenesses
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date && s.IdentityNumber == stdId
                       && k.Type==type
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Amount,

                       }).ToList();
            lstLate.DataSource = lst;
        }
    }

    protected void lstNotes_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        DateTime date = new DateTime();
        if (Calendar1.CultureName == "ar-SA")
        {
            date = (MyDate.convertHijriToGregorian(txtDate.Text)).Date;
        }
        else
        {
            date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Date;
        }

        if (radioType.SelectedValue == "all")
        {
            var lst = (from k in km.StudentsNotes
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date 
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Note,
                           teacher = (from emp in km.Employees where emp.IdentityNumber == k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstNotes.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "class")
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;

            var lst = (from k in km.StudentsNotes
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join ss in km.StudentsSubjects on k.StudentId equals ss.StudentId
                       join sub in km.SubjectsInSemesters on ss.SubjectId equals sub.Id
                       where k.SchoolId == schoolid && k.Date == date
                       && sub.ClassId == classId && sub.SubjectId == subjectId 
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Note,
                           teacher=(from emp in km.Employees where emp.IdentityNumber==k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstNotes.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "one")
        {
            var stdId = ddlStudents.SelectedValue;
            var lst = (from k in km.StudentsNotes
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SchoolId == schoolid && k.Date == date && s.IdentityNumber == stdId
                       
                       select new
                       {
                           s.Id,
                           s.Name,
                           k.Note,
                           teacher = (from emp in km.Employees where emp.IdentityNumber == k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstNotes.DataSource = lst;
        }
    }

    protected void lstViolence_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        DateTime date = new DateTime();
        if (Calendar1.CultureName == "ar-SA")
        {
            date = (MyDate.convertHijriToGregorian(txtDate.Text)).Date;
        }
        else
        {
            date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Date;
        }

        if (radioType.SelectedValue == "all")
        {
            var lst = (from k in km.StudentsViolations
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join v in km.Violations on k.ViolationId equals v.Id
                       where s.SchoolId == schoolid && k.Date == date
                       select new
                       {
                           s.Id,
                           s.Name,
                           v.Title,
                           v.Grade,
                           k.Count,
                           teacher = (from emp in km.Employees where emp.IdentityNumber == k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstViolence.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "class")
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;

            var lst = (from k in km.StudentsViolations
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join ss in km.StudentsSubjects on k.StudentId equals ss.StudentId
                       join sub in km.SubjectsInSemesters on ss.SubjectId equals sub.Id
                       join v in km.Violations on k.ViolationId equals v.Id
                       where s.SchoolId == schoolid && k.Date == date
                       && sub.ClassId == classId && sub.SubjectId == subjectId
                       select new
                       {
                           s.Id,
                           s.Name,
                           v.Title,
                           v.Grade,
                           k.Count,
                           teacher = (from emp in km.Employees where emp.IdentityNumber == k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstViolence.DataSource = lst;
        }
        else
            if (radioType.SelectedValue == "one")
        {
            var stdId = ddlStudents.SelectedValue;
            var lst = (from k in km.StudentsViolations
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join v in km.Violations on k.ViolationId equals v.Id
                       where s.SchoolId == schoolid && k.Date == date && s.IdentityNumber == stdId
                       select new
                       {
                           s.Id,
                           s.Name,
                           v.Title,
                           v.Grade,
                           k.Count,
                           teacher = (from emp in km.Employees where emp.IdentityNumber == k.TeacherId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstViolence.DataSource = lst;
        }
    }

    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        var value = ddlType.SelectedValue;

        switch (value)
      {
            case "Absent":
                PlaceHolderAbsence.Visible = true;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = false;
                break;

            case "late":
                PlaceHolderAbsence.Visible = false;
                PlaceHolderLate.Visible = true;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = false;
                break;
            case "Attendence":
                PlaceHolderAbsence.Visible = false;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = true;
                PlaceHolderTable.Visible = false;
                break;
            case "note":
                PlaceHolderAbsence.Visible = false;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = true;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = false;
                break;
            case "violation":
                PlaceHolderAbsence.Visible = false;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = true;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = false;
                break;
            case "table":
                PlaceHolderAbsence.Visible = false;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = true;
                break;
          
            default:
                PlaceHolderAbsence.Visible = true;
                PlaceHolderLate.Visible = false;
                PlaceHolderNote.Visible = false;
                PlaceHolderInfraction.Visible = false;
                PlaceHolderPeriod.Visible = false;
                PlaceHolderTable.Visible = false;
                break;
        }

    }
}