using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Employee_MyGeneralizations : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MyGeneralizations";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LstMyGeneralizations.DataBind();
        
        }
    }
   
    
    protected void LstMyGeneralizations_DataBinding(object sender, EventArgs e)
    {
        var userId = Membership.GetUser().UserName;

        var lstTask = (from x in km.UsersGeneralizations
                       join k in km.Incomings on x.IncomingId equals k.Id 
                       where x.UserId == userId
                       select new
                       {
                           x.IncomingId,
                        k.Number,
                        k.Source,
                        k.Date  
                       }).ToList();
        LstMyGeneralizations.DataSource = lstTask;
    }

    //protected void LstMyGeneralizations_ItemDataBound(object sender, ListViewItemEventArgs e)
    //{
    //    var userId = Membership.GetUser().UserName;
    //    int IncomingId = int.Parse(((HiddenField)e.Item.FindControl("IncomingId")).Value);
    //    Label lblcheck = (Label)e.Item.FindControl("lblcheck");
       
    //    ListViewDataItem dataItem = (ListViewDataItem)e.Item;
       
    //    if (e.Item.ItemType == ListViewItemType.DataItem)
    //    {
    //        var IsDone = (from j in km.UsersGeneralizations where j.UserId == userId && j.IncomingId == IncomingId select j).FirstOrDefault();
    //        if (IsDone.isSeen == true)
    //        {
    //            lblcheck.CssClass = "fa fa-check";
    //            lblcheck.Style["visibility"] = "font-size:25px;color:green";
    //        }
    //        else
    //        {
    //            lblcheck.CssClass = "fa fa-close";
    //            lblcheck.Style["visibility"] = "font-size:25px;color:red";
    //        }
    //    }
    //}
}