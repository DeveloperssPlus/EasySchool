using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form13 : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LstIncoming.DataBind();
    }

    protected void LstIncoming_DataBinding(object sender, EventArgs e)
    {

        var schoolId = new SchoolInformation().getId();
        int semesterid = MyDate.getCurrentSemesterId();
        var Incoming = (from I in km.Incomings
                        where I.SchoolId == schoolId && I.IsDeleted != true && I.SemesterId == semesterid
                        orderby I.Id descending
                        select new
                        {
                            I.Date,
                            I.Number,
                            I.FileNumber,
                            Source = (from c in km.Constants where c.Id == I.Source select c.value).FirstOrDefault(),
                            I.Subject,
                            Type = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            Attachment = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            I.Id,
                        }).ToList();


        LstIncoming.DataSource = Incoming;
        LstIncoming.DataBind();
    }
}