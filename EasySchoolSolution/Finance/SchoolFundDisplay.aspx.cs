using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SchoolFundDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SchoolFundDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstFund.DataBind();

        }
    }

    protected void lstFund_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.SchoolFunds
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid orderby ep.Date
                       select ep).ToList();


        lstFund.DataSource = RepInfo;
    }

    protected void lstFund_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.SchoolFunds   where k.Id == id select k).FirstOrDefault();
            km.SchoolFunds.Remove(c);
            km.SaveChanges();

            lstFund.DataBind();

        }
    }
}