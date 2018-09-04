using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tahani_Employees : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "Employees";
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

        lstEmployee.DataBind();
        }
    }

    protected void lstEmployee_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();
        var schoolid = info.getId();

        var lst = (from k in km.Employees
                   where k.SchoolId == schoolid
                   select new
                   {
                       k.IdentityNumber,
                       k.Name,
                       job=k.Job.Name,
                       k.PhoneHome,
                       k.Mobile,
                       k.Degree,
                       k.Specification,
                       k.Email
                   }).ToList();

        lstEmployee.DataSource = lst;

    }
}