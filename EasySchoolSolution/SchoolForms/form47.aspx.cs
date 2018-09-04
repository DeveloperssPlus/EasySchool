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
        {
            lstlaboratoriesInventory.DataBind();
        }
        if (Request.QueryString["id"] != null)
        {

        }
    
          
    }

    protected void lstlaboratoriesInventory_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();

        var RepInfo = (from k in km.LaboratoriesInventories
                       where k.SchoolId == schoolId && k.SemesterId == semesterId
                       select new
                       {
                           k.Id,
                           k.Increase,
                           k.ValidCount,
                           k.KindId,
                           k.KindName,
                           k.ObligatedCount,
                           k.Unit,
                           k.NotValidCount
                       }).ToList();

        lstlaboratoriesInventory.DataSource = RepInfo;
    }
}