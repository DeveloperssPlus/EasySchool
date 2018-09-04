using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form29 : System.Web.UI.Page
{
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstPatients.DataBind();

    }

    protected void lstPatients_DataBinding(object sender, EventArgs e)
    {

        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();


        var RepInfo = (from ep in km.StudentPatients
                       join ee in km.Students on ep.StudentId equals ee.IdentityNumber
                       where ep.SemesterId == semesterId && ep.SchoolId == schoolId
                       orderby ep.Class descending
                       select new
                       {
                           ee.Name,
                           ep.Action,
                           ep.Class,
                           ep.Description,
                           ep.HomeTel,
                           ep.Id,
                           ep.Mobile,
                           ep.Recommendations,
                           ep.WorkTel,

                       }).ToList();

        lstPatients.DataSource = RepInfo;
        lstPatients.DataBind();

    }
}