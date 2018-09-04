using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_PermissionClassesDisplay : MyPermisionPage
{

    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PermissionClassesDisplay";
        base.OnPreInit(e);
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
        SchoolInformation info = new SchoolInformation();
        var schoolid = info.getId();

        var lst = (from k in km.PermissionsClasses
                   group k by new { k.PermissionEmployeeId , k.Date} into g
                   let emp = (from emp in km.Employees where emp.IdentityNumber == g.Key.PermissionEmployeeId select emp).FirstOrDefault()
                   where emp.SchoolId == schoolid
                   select new
                   {
                       perEmpName = emp.Name,
                       EmpId=g.Key.PermissionEmployeeId,
                       Date=g.Key.Date,
                       count = (from c in km.PermissionsClasses
                                where c.PermissionEmployeeId == g.Key.PermissionEmployeeId && c.Date==g.Key.Date
                                select c).Count(),
                   }).ToList();

        LstClass.DataSource = lst;

    }


    protected void LstClass_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var idd = int.Parse(e.CommandArgument.ToString());
            var permission = (from k in km.PermissionsClasses where k.Id == idd select k).FirstOrDefault();

            km.PermissionsClasses.Remove(permission);
            km.SaveChanges();
            LstClass.DataBind();
        }
    }

    protected void LstClass_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListView lstEmpClass = (ListView)(e.Item.FindControl("lstEmpClass"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            string EmpId = DataBinder.Eval(e.Item.DataItem, "EmpId").ToString();
            DateTime Date = (DateTime)DataBinder.Eval(e.Item.DataItem, "Date");

            var lst = (from c in km.PermissionsClasses
                       where c.PermissionEmployeeId == EmpId && c.Date==Date
                       select new
                       {
                           c.ClassRoom,
                           c.Comment,
                           c.Date,
                           c.Id,
                           c.Period,
                           c.PermissionEmployeeId,
                           c.Reason,
                           Name = (from emp in km.Employees where emp.IdentityNumber == c.EmployeeId select emp.Name).FirstOrDefault()
                       }).ToList();
            lstEmpClass.DataSource = lst;
            lstEmpClass.DataBind();

        }
    }
}