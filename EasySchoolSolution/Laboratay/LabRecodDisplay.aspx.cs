using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_LabRecodDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LabRecodDisplay";
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
            lstLaboratory.DataBind();


        }
    }

    protected void lstLaboratory_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var idd = int.Parse(e.CommandArgument.ToString());

        var item = (from k in km.Laboratories where k.Id == idd select k).FirstOrDefault();
        km.Laboratories.Remove(item);
        km.SaveChanges();
    }

    protected void lstLaboratory_DataBinding(object sender, EventArgs e)
    {
        var schoolId = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        var LabInfo = (from ep in km.Laboratories
                       where ep.SchoolId == schoolId
                       select new
                       {
                           ep.Id,
                           ep.Comment,
                           ep.Unit,
                           ep.KindId,
                           ep.Quantity,
                           ep.KindName

                       }).ToList();

        lstLaboratory.DataSource = LabInfo;
    }
}