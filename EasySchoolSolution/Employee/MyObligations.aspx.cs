using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_MyObligations : MyPermisionPage
{ 
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MyObligations";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstObligation.DataBind();
            //   IsReturn();
        }
    }

    protected void lstObligation_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "receive")
        {
            var idd = int.Parse(e.CommandArgument.ToString());
            var oblgation = (from k in km.Obligations where k.Id == idd select k).FirstOrDefault();
            //LinkButton lnkReceive = (LinkButton)(e.Item.FindControl("lnkReceive"));
            oblgation.DateReceive = DateTime.Now.Date;
            oblgation.IsReceived = true;
            //lnkReceive.Visible = false;
            km.SaveChanges();
            lstObligation.DataBind();

            //IsReturn();
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت تسجيل تاريخ الاستلام بنجاح'); </script>", false);
        }
    }


    protected void lstObligation_DataBinding(object sender, EventArgs e)
    {
        var userId = Membership.GetUser().UserName;
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        var oblg = (from d in km.Obligations
                    where d.SemesterId == semesterId && d.SchoolId == schoolId && d.EmployeeId == userId
                    select new
                    {
                        date = d.DateReceive,
                        d.Id,
                        d.KindName,
                        d.Comments,
                        d.Count,
                        d.IsReturn,
                        d.IsReceived,
                        d.DateReceive
                    }).ToList();
        lstObligation.DataSource = oblg;
    }



    protected void lstObligation_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        LinkButton lnkReceive = (LinkButton)(e.Item.FindControl("lnkReceive")); 
        Label lblReceived = (Label)(e.Item.FindControl("lblReceived")); 
         ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        //      int obligationID = int.Parse(((HiddenField)(e.Item.FindControl("obligationID"))).Value);

        var dateReceive = DataBinder.Eval(e.Item.DataItem, "DateReceive");

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {

            //            var obligation = (from j in km.Obligations where j.Id == idd select j).FirstOrDefault();


            if (dateReceive==null)
            {
                lnkReceive.Visible = true;
            }
            else
            {
                lblReceived.Text = MyDate.getDate(dateReceive.ToString());
                lnkReceive.Visible = false;

            }

        }
        lstObligation.DataBind();

    }
}