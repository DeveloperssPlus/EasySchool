using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SchoolResourceBoxDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SchoolResourceBoxDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstResourse.DataBind();

        }
    }

    protected void lstResourse_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.SchoolResourceBoxes
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       orderby ep.Date
                       select ep).ToList();


        lstResourse.DataSource = RepInfo;
    }

    protected void lstResourse_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.SchoolResourceBoxes where k.Id == id select k).FirstOrDefault();
            km.SchoolResourceBoxes.Remove(c);
            km.SaveChanges();

            lstResourse.DataBind();

        }
    }
}