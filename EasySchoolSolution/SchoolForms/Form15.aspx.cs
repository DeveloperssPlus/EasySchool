using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form15 : System.Web.UI.Page
{

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LstOutcoming.DataBind();
    }

    protected void LstOutcoming_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();
     
        var Outcoming = (from I in km.Outcomings
                         join p in km.Schools on I.SchoolId equals p.Id
                         where I.SchoolId == schoolId && I.IsDeleted != true && I.SemesterId == semesterId
                         orderby I.Id descending
                         select new
                         {
                             I.Date,
                             I.Number,
                             I.FileNumber,
                             SourceTo = (from c in km.Constants where c.Id == I.SourceTo select c.value).FirstOrDefault(),
                             I.Subject,
                             Type = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                             Attachment = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                             I.Id,
                         }).ToList();

        LstOutcoming.DataSource = Outcoming;
        LstOutcoming.DataBind();
    }
}