using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_PurchasesDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PurchasesDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstPurchases.DataBind();

        }
    }

    protected void lstPurchases_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Purchases
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new
                       {ep.BillNumber,
                       ep.BillSide,
                       ep.Date,
                       ep.ItemId,
                       ep.Quantity,
                       ep.TotalPrice,
                       ep.UnitPrice,
                           ep.Id
                       }).ToList();


        lstPurchases.DataSource = RepInfo;
    }

    protected void lstPurchases_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Purchases where k.Id == id select k).FirstOrDefault();
            km.Purchases.Remove(c);
            km.SaveChanges();

            lstPurchases.DataBind();

        }

    }
}