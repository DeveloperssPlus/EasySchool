using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temp_Student_ActivitesDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ActivitesDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LstActivites.DataBind();
            foreach (ListViewItem item in LstActivites.Items)
            {
                int Id = int.Parse(((HiddenField)item.FindControl("Id")).Value);
                var acctiveId = (from k in km.StudentActivities where k.Id == Id select k).ToList();
            }
        }
    }
       

    protected void LstActivites_DataBinding(object sender, EventArgs e)
    {
        var schoolid = SchoolInfo.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var active = (from ep in km.StudentActivities
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid

                       select ep).ToList();


        LstActivites.DataSource = active;

    }

    protected void LstActivites_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.StudentActivities where k.Id == id select k).FirstOrDefault();
            km.StudentActivities.Remove(c);
            km.SaveChanges();

            LstActivites.DataBind();

        }
    }
}