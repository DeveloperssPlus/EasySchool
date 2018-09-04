using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LstOutcoming.DataBind();
    }

    protected void LstOutcoming_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();

        var Outcoming = (from O in km.Outcomings
                         where O.IsDeleted != true &&
                         O.ReceivedDate != null && O.SemesterId == semesterId
                         && O.SchoolId == schoolId
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