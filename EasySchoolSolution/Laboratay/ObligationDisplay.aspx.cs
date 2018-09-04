using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_ObligationDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ObligationDisplay";
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
            lstObligation.DataBind();
        }
    }

    protected void lstObligation_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if(e.CommandName== "return")
        {

        var idd = int.Parse(e.CommandArgument.ToString());
        var oblgation = (from k in km.Obligations where k.Id == idd select k).FirstOrDefault();
        oblgation.IsReturn = true;
        oblgation.DateReturn = DateTime.Now.Date;
      
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('تمت اعادة العهدة بنجاح'); </script>", false);
        lstObligation.DataBind();

        }
    }

    protected void lstObligation_DataBinding(object sender, EventArgs e)
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        var oblg = (from d in km.Obligations where d.SemesterId == semesterId && d.SchoolId == schoolId select new {
            d.Id,
            d.KindName,
            d.Count,
            d.DateReceive,
            d.DateReturn,
            d.Comments,
            d.IsReturn,
            d.IsReceived,
            EmployeeName = (from a in km.Employees where a.IdentityNumber == d.EmployeeId select a.Name).FirstOrDefault(),
            Job=(from j in km.Jobs join v in km.Employees on j.Id equals v.JobId where v.IdentityNumber==d.EmployeeId select j.Name).FirstOrDefault()
        }).ToList();
        lstObligation.DataSource = oblg;
    }

    protected void lstObligation_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        Label lblReceive = (Label)(e.Item.FindControl("lblReceive"));
        Label lblReturn = (Label)(e.Item.FindControl("lblReturn"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            bool currentIsReceived = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "IsReceived").ToString());
            bool currentIsReturn = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "IsReturn").ToString());
            string dateReceive="", dateReturn="";
            if(currentIsReceived)
             dateReceive = DataBinder.Eval(e.Item.DataItem, "DateReceive").ToString();
            if(currentIsReturn)
             dateReturn = DataBinder.Eval(e.Item.DataItem, "DateReturn").ToString();

            if (currentIsReceived == true)
            {
                lblReceive.Text = MyDate.getDate(dateReceive);
            }
            else
            {
                lblReceive.Text = "لم يتم الاستلام";
                lblReceive.CssClass = "label label-warning inline";
            }

            if (currentIsReturn == true)
            {
                lblReturn.Text = MyDate.getDate(dateReturn);
            }
            else
            {
                lblReturn.Text = "لم يتم الارجاع";
                lblReturn.CssClass = "label label-warning inline";

            }
                    }
    }
}