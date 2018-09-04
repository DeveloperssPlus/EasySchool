using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_laboratoriesInventoryDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "laboratoriesInventoryDisplay";
        base.OnPreInit(e);
    }
    protected int getCounter()
    {
        return ++counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstlaboratoriesInventory.DataBind();
        }
    }

    protected void lstlaboratoriesInventory_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.LaboratoriesInventories where k.Id == id select k).FirstOrDefault();
            km.LaboratoriesInventories.Remove(c);
            km.SaveChanges();

            lstlaboratoriesInventory.DataBind();
        }
    }

    protected void lstlaboratoriesInventory_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from k in km.LaboratoriesInventories
                       where k.SchoolId == schoolid && k.SemesterId == semesterid
                       select new
                       {
                           k.Id,
                           k.Increase,
                           k.ValidCount,
                           k.KindId,
                           k.KindName,
                           k.ObligatedCount,
                           k.Unit,
                           k.NotValidCount
                       }).ToList();

        lstlaboratoriesInventory.DataSource = RepInfo;
    }
}