using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_IncentivesForEmployeeDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "IncentivesForEmployeeDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstIncentives.DataBind();

        }
    }

    protected void lstIncentives_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.IncentivesForEmployees
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new
                       {
                           employeename = (from v in km.Employees where v.IdentityNumber == ep.EmloyeeId select v.Name).FirstOrDefault(),
                           Job = (from j in km.Jobs join v in km.Employees on j.Id equals v.JobId where v.IdentityNumber == ep.EmloyeeId select j.Name).FirstOrDefault(),
                           ep.Id,
                           ep.Note,
                           ep.Date,
                           ep.Rest,
                           ep.Value
                       }).ToList();


        lstIncentives.DataSource = RepInfo;
    }

   

    protected void lstIncentives_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.IncentivesForEmployees where k.Id == id select k).FirstOrDefault();
            km.IncentivesForEmployees.Remove(c);
            km.SaveChanges();

            lstIncentives.DataBind();

        }
    }
}