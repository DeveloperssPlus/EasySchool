using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_VisitDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "VisitDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstVisit.DataBind();
        }
    }

    protected void lstVisit_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Visits
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid

                       select new {
                           ep.Date,
                           ep.Id,
                           ep.Name,
                           ep.Reason,
                           StudentName=(from f in km.Students where f.IdentityNumber==ep.StudentId select f.Name).FirstOrDefault()
                       }).ToList();


        lstVisit.DataSource = RepInfo;
    }

    protected void lstVisit_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Visits where k.Id == id select k).FirstOrDefault();
            km.Visits.Remove(c);
            km.SaveChanges();

            lstVisit.DataBind();

        }
    }
}