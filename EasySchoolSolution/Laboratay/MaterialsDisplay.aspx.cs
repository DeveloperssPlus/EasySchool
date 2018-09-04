using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_MaterialsDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MaterialsDisplay";
        base.OnPreInit(e);
    }

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      //  if (!IsPostBack) 
        fill();
    }

   
    public void fill()
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();
        int status = int.Parse(DDlStatus.SelectedValue);
        var RepInfo = (from ep in km.Materials
                       where ep.SchoolId == schoolid && ep.Status == status && ep.SemesterId == semesterid
                       select new
                       {
                           ep.Id,
                           ep.KindId,
                           ep.KindName,
                           ep.Quantity,
                           ep.Comments
                       }).ToList();

        lstRecord.DataSource = RepInfo;
        lstRecord.DataBind();
    }

    protected void lstRecord_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Materials where k.Id == id select k).FirstOrDefault();
            km.Materials.Remove(c);
            km.SaveChanges();

            fill();
        }
    }
}