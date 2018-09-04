using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_StudentPatientsDisplay : MyPermisionPage
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
        MyPer = "StudentPatientsDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstPatients.DataBind();
    }

    protected void lstPatients_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            var c = (from k in km.StudentPatients where k.Id == id select k).FirstOrDefault();
            km.StudentPatients.Remove(c);
            km.SaveChanges();

            lstPatients.DataBind();
        }
    }

    protected void lstPatients_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();
 

        var RepInfo = (from ep in km.StudentPatients
                       join ee in km.Students on ep.StudentId equals ee.IdentityNumber
                       where ep.SemesterId == semesterid && ep.SchoolId == schoolid
                       orderby ep.Class descending
                       select new
                       {
                           ee.Name,
                           ep.Action,
                           ep.Class,
                           ep.Description,
                           ep.HomeTel,
                           ep.Id,
                           ep.Mobile,
                           ep.Recommendations,
                           ep.WorkTel,
                          
                       }).ToList();

        lstPatients.DataSource = RepInfo;
        lstPatients.DataBind();


    }
}