using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TahaniSchoolForms_form37 : System.Web.UI.Page
{

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstObligation.DataBind();
    }

    protected void lstObligation_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();

        var oblg = (from d in km.Obligations
                    where d.SemesterId == semesterId && d.SchoolId == schoolId
                    select new
                    {
                        d.Id,
                        d.KindName,
                        d.Count,
                        d.DateReceive,
                        d.DateReturn,
                        d.Comments,
                        d.IsReturn,
                        d.IsReceived,
                        EmployeeName = (from a in km.Employees where a.IdentityNumber == d.EmployeeId select a.Name).FirstOrDefault(),
                        Job = (from j in km.Jobs join v in km.Employees on j.Id equals v.JobId where v.IdentityNumber == d.EmployeeId select j.Name).FirstOrDefault()
                    }).ToList();
        lstObligation.DataSource = oblg;
    }
}