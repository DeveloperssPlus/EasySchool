using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_CommunicationDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "CommunicationDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstcommunication.DataBind();

        }
    }

    protected void lstcommunication_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Communications
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid

                       select ep).ToList();


        lstcommunication.DataSource = RepInfo;
    }

    protected void lstcommunication_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Communications where k.Id == id select k).FirstOrDefault();
            km.Communications.Remove(c);
            km.SaveChanges();

            lstcommunication.DataBind();

        }
    }
}