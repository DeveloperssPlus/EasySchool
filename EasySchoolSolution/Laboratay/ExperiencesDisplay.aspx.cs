using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_ExperiencesDisplay : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ExperiencesDisplay";
        base.OnPreInit(e);
    }
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        lstExperience.DataBind();
    }

    protected void lstExperience_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Experiences where k.Id == id select k).FirstOrDefault();
            km.Experiences.Remove(c);
            km.SaveChanges();

            lstExperience.DataBind();
        }
    }

    protected void lstExperience_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Experiences
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new {
                           ep.BookName,
                           ep.BookPage,
                           ep.Class,
                           ep.Id,
                           ep.Name,
                           ep.Subject,
                           ep.Tools,
                           ep.Week,
                           NameTecher = (from d in km.Teachers where d.IdentityNumber==ep.TeacherId select d.Name).FirstOrDefault()
                       }).ToList();

        lstExperience.DataSource = RepInfo;
    }
}