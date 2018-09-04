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
        if (Request.QueryString["id"] != null)
        {

        }
        if (!IsPostBack)
        {

            lstExperience.DataBind();
           
        }
    }

    protected void lstExperience_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Experiences
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new
                       {
                           ep.BookName,
                           ep.BookPage,
                           ep.Class,
                           ep.Id,
                           ep.Name,
                           ep.Subject,
                           ep.Tools,
                           ep.Week,
                           NameTecher = (from d in km.Teachers where d.IdentityNumber == ep.TeacherId select d.Name).FirstOrDefault()
                       }).ToList();

        lstExperience.DataSource = RepInfo;
    }
}