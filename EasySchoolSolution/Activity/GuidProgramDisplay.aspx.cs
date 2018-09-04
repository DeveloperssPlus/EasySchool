using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temp_Employee_GuidProgramDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "GuidProgramDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstProgram.DataBind();

        }
    }

    protected void lstProgram_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.GuidPrograms where k.Id == id select k).FirstOrDefault();
            km.GuidPrograms.Remove(c);
            km.SaveChanges();

            lstProgram.DataBind();

        }

    }

    protected void lstProgram_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.GuidPrograms
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid

                       select ep).ToList();


        lstProgram.DataSource = RepInfo;
    }
}