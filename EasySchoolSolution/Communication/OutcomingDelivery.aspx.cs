using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_OutcomingDelivery : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutcomingDelivery";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LstOutcoming.DataBind();
        }
    }
    protected void LstOutcoming_DataBinding(object sender, EventArgs e)
    {
        int SchoolId = info.getId();
        int semesterId = MyDate.getCurrentSemesterId();

        var Outcoming = (from O in km.Outcomings
                          where O.IsDeleted != true &&
                          O.ReceivedDate != null && O.SemesterId==semesterId 
                          && O.SchoolId==SchoolId
                         select new
                         {
                             O.Number,
                             O.Date,
                             O.Type,
                             O.Attachment,
                             O.Subject,
                             O.SourceTo,
                             O.ReceivedName,
                             O.ReceivedDate,
                             O.Id,
                         }).ToList();

        LstOutcoming.DataSource = Outcoming;
        LstOutcoming.DataBind();
    }
}