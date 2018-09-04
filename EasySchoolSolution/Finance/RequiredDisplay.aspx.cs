using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_RequiredDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "requiredDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstrequired.DataBind();

        }
    }

    protected void lstrequired_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Requireds
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select ep).ToList();


        lstrequired.DataSource = RepInfo;
    }

    protected void lstrequired_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Requireds where k.Id == id select k).FirstOrDefault();
            km.Requireds.Remove(c);
            km.SaveChanges();

            lstrequired.DataBind();

        }
    }
}