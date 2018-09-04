using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_ClassList : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ClassList";
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
        LstClass.DataBind();
        }
    }

    protected void LstClass_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        var semesterid = MyDate.getCurrentSemesterId();

        var classes = (from k in km.SubjectsInSemesters
                       where k.SemesterId == semesterid && k.SchoolId == schoolid
                       select new
                       {
                           k.SubjectId,
                           k.ClassId,
                           subject=(from s in km.Subjects where s.Id==k.SubjectId select s.Name).FirstOrDefault(),
                           teacher=(from t in km.Employees where t.IdentityNumber==k.TeacherId select t.Name).FirstOrDefault(),
                       }).ToList();
        LstClass.DataSource = classes;
    }

    protected void LstClass_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
}