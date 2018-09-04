using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_RepositoryDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "RepositoryDisplay";
        base.OnPreInit(e);
    }
    int counter = 0;
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstRepositays.DataBind();
        }
    }


    protected void lstRepositays_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var idd = int.Parse(e.CommandArgument.ToString());

        var item = (from k in km.Repositories where k.Id == idd select k).FirstOrDefault();
        km.Repositories.Remove(item);
        km.SaveChanges();
        lstRepositays.DataBind();
    }

    protected void lstRepositays_DataBinding(object sender, EventArgs e)
    {
        var schoolId = new SchoolInformation().getId();

        var RepInfo = (from ep in km.Repositories
                       where ep.SchoolId == schoolId
                       orderby ep.Date
                       select new
                       {
                           ep.Id,
                           ep.Comment,
                           ep.Description,
                           ep.IsDamaged,
                           ep.IsPerminant,
                           ep.KindId,
                           ep.Quantity,
                           ep.Date,
                       }).ToList();

        lstRepositays.DataSource = RepInfo;
    }

    protected void lstRepositays_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        Label lblDamg = (Label)(e.Item.FindControl("lblDamg"));
        Label lblPerm = (Label)(e.Item.FindControl("lblPerm"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            bool currentIsDamaged = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "IsDamaged").ToString());
            bool currentIsPerminant = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "IsPerminant").ToString());

            if (currentIsDamaged == true)
            {
                lblDamg.Text = "تالف";
            }
            else
            {
                lblDamg.Text = "سليم";
            }

            if (currentIsPerminant == true)
            {
                lblPerm.Text = "مستديم";
            }
            else
            {
                lblPerm.Text = "مستهلك";
            }
        }
    }
}