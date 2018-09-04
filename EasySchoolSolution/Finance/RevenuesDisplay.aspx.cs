using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_RevenuesDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "RevenuesDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstRevenue.DataBind();
    }

    protected void lstRevenue_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Revenues
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new
                       {
                           ep.TypeId,
                           ep.Id,
                           ep.Price,
                           ep.ReceiveDate,
                           delivery=(ep.deliveryType==0)?"نقدا":((ep.deliveryType==1)?"شيك":"حوالة مالية"),
                           EmployeeName = (from a in km.Employees where a.IdentityNumber == ep.RecipientsName select a.Name).FirstOrDefault()
                       }).ToList();

        lstRevenue.DataSource = RepInfo;
    }

    protected void lstRevenue_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Revenues where k.Id == id select k).FirstOrDefault();
            km.Revenues.Remove(c);
            km.SaveChanges();

            lstRevenue.DataBind();
        }
    }
}