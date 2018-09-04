using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_MessagesDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MessagesDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstmessage.DataBind();
        }
    }

    protected void lstmessage_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Messages
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid

                       select ep).ToList();


        lstmessage.DataSource = RepInfo;

    }

    protected void lstmessage_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Messages where k.Id == id select k).FirstOrDefault();
            km.Messages.Remove(c);
            km.SaveChanges();

            lstmessage.DataBind();

        }
    }
}