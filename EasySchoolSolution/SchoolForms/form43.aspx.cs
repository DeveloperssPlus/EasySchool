using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form18 : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    int counter = 0;
 
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            lstCupboard.DataBind();
            lstLaboratory.DataBind();
        }
    }

    protected void lstCupboard_DataBinding(object sender, EventArgs e)
    {


        var schoolId = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        //var id = (from ep in km.ChemistryCupboards
        //               where ep.SchoolId == schoolid && ep.SemesterId == semesterid
        //               select ep.CupboardId).Distinct().FirstOrDefault();

        var RepInfo = (from ep in km.ChemistryCupboards
                           where ep.SchoolId == schoolId /*&& ep.CupboardId == id */&& ep.SemesterId == semesterId
                           select ep
                           ).ToList();

            lstCupboard.DataSource = RepInfo;
        }



    protected void lstLaboratory_DataBinding(object sender, EventArgs e)
    {
        var schoolId = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        var LabInfo = (from ep in km.Laboratories
                       where ep.SchoolId == schoolId
                       select new
                       {
                           ep.Id,
                           ep.Comment,
                           ep.Unit,
                           ep.KindId,
                           ep.Quantity,
                           ep.KindName

                       }).ToList();

        lstLaboratory.DataSource = LabInfo;
    }
}