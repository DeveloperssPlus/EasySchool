using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_StudentViolationsDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }


    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentViolationsDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstViolence.DataBind();
        }
    }


    protected void lstViolence_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        DateTime date = DateTime.Now.Date;
        //if (Calendar1.CultureName == "ar-SA")
        //{
        //    date = (MyDate.convertHijriToGregorian(txtDate.Text)).Date;
        //}
        //else
        //{
        //    date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Date;
        //}

    
            var lst = (from k in km.StudentsViolations
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       join v in km.Violations on k.ViolationId equals v.Id
                       where s.SchoolId == schoolid
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