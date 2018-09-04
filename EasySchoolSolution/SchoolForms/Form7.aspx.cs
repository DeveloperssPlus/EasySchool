using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form7 : System.Web.UI.Page
{
    int counter= 0;
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ltrSchoolYear.Text = MyDate.getCurrentYear();
            ltrSchoolSemester.Text = MyDate.getCurrentSemester();
            LstClass.DataBind();
            ltrAffairsSignature.Text = info.getUndersecretaryEducationalAffairs();
        }
    }


    protected void LstClass_DataBinding(object sender, EventArgs e)
    {
        counter = 0;

        var schoolid = info.getId();





        var lst = (from k in km.EmployeeWaitings
                   join a in km.Absences on k.AbsenceId equals a.Id
                   group k by new { a.Id } into g
                   let abs = (from abs in km.Absences where abs.Id == g.Key.Id select abs).FirstOrDefault()
                   where abs.SchoolId == schoolid
                   select new
                   {
                       absEmpName = (from x in km.Employees where x.IdentityNumber == abs.EmployeeId select x.Name).FirstOrDefault(),
                       EmpId = abs.EmployeeId,
                       Date = abs.Date,
                       count = (from c in km.EmployeeWaitings
                                where c.AbsenceId == g.Key.Id
                                select c).Count(),
                   }).ToList();

        LstClass.DataSource = lst;
    }
   

    protected void LstClass_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListView lstEmpClass = (ListView)(e.Item.FindControl("lstEmpClass"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            string EmpId = DataBinder.Eval(e.Item.DataItem, "EmpId").ToString();
            DateTime Date = (DateTime)DataBinder.Eval(e.Item.DataItem, "Date");

            var lst = (from c in km.EmployeeWaitings
                       join a in km.Absences on c.AbsenceId equals a.Id
                       where a.EmployeeId == EmpId && a.Date == Date
                       select new
                       {
                           c.ClassRoom,
                           c.Comment,
                           a.Date,
                           c.Id,
                           c.Subject,
                           c.Period,
                           a.EmployeeId,
                           c.Do,
                           //     EmpName=(from emp in km.Employees where emp.IdentityNumber==c.EmployeeId select emp.Name).FirstOrDefault(),
                           Name = (from emp in km.Employees where emp.IdentityNumber == c.EmployeeId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstEmpClass.DataSource = lst;
            lstEmpClass.DataBind();

        }
    }
}