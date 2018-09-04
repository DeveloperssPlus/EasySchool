using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SupportStudentDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SupportStudentDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstSupport.DataBind();

        }
    }

    protected void lstSupport_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.SupportStudents
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       
                       select ep).ToList();


        lstSupport.DataSource = RepInfo;
    }

    protected void lstSupport_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.SupportStudents where k.Id == id select k).FirstOrDefault();
            km.SupportStudents.Remove(c);
            km.SaveChanges();

            lstSupport.DataBind();

        }
    }
}