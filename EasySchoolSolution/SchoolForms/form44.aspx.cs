using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form18 : System.Web.UI.Page
{
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstRecord.DataBind();

        if (Request.QueryString["id"] != null)
        {

        }
    }

    protected void lstRecord_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();
      
        var RepInfo = (from ep in km.Materials
                       where ep.SchoolId == schoolId  && ep.SemesterId == semesterId
                       select new
                       {
                           ep.Id,
                           ep.KindId,
                           ep.KindName,
                           ep.Quantity,
                           ep.Comments
                       }).ToList();

        lstRecord.DataSource = RepInfo;
      
    }
}