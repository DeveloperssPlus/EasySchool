using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_CupboardRecordDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "CupboardRecordDisplay";
        base.OnPreInit(e);
    }
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
          
            DDlCupboardId.DataBind();
            DDlCupboardId.Items.Insert(0,"اختر رقم الخزنة");
        }

    }

    protected void lstCupboard_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.ChemistryCupboards where k.Id == id select k).FirstOrDefault();
            km.ChemistryCupboards.Remove(c);
            km.SaveChanges();

            lstCupboard.DataBind();
        }
    }

    protected void lstCupboard_DataBinding(object sender, EventArgs e)
    {
        try { 
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();
        int CupboardId = int.Parse(DDlCupboardId.SelectedItem.ToString());
        var RepInfo = (from ep in km.ChemistryCupboards
                       where ep.SchoolId == schoolid && ep.CupboardId == CupboardId && ep.SemesterId == semesterid
                       select ep
                       ).ToList();

        lstCupboard.DataSource = RepInfo;
        }
        catch(Exception er)
        { }
    }

   
    protected void DDlCupboardId_DataBinding(object sender, EventArgs e)
    {

        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.ChemistryCupboards
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select ep.CupboardId).Distinct().ToList();

        DDlCupboardId.DataSource = RepInfo;

    }

    protected void DDlCupboardId_SelectedIndexChanged(object sender, EventArgs e)
    {
    
        lstCupboard.DataBind();

    }
}