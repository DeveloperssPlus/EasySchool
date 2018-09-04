using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form36 : System.Web.UI.Page
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
        {
            lstRepositays.DataBind();
         
        }
    }

    protected void lstRepositays_DataBinding(object sender, EventArgs e)
    {
       
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();
      

        var RepInfo = (from ep in km.Repositories
                       where ep.SchoolId == schoolId
                       orderby ep.Date
                       select new
                       {
                           ep.Id,
                           ep.Comment,
                           ep.Description,
                         
                           Perminant = ep.IsPerminant.Value ? "مستديم" : "مستهلك",
                           ep.KindId,
                           ep.Quantity,
                           ep.Date,
                       }).ToList();

        lstRepositays.DataSource = RepInfo;
    }

    protected void lstRepositays_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var schoolId = new SchoolInformation().getId();
        int semesterId = MyDate.getCurrentSemesterId();
        Label lblcheck = (Label)e.Item.FindControl("lblcheck");
        Label lblclose = (Label)e.Item.FindControl("lblClose");
        int id =Convert.ToInt32(((HiddenField)e.Item.FindControl("ProId")).Value);

        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        var IsDone = (from j in km.Repositories where j.SchoolId == schoolId && j.SemesterId == semesterId && j.Id==id select j).FirstOrDefault();
        if (IsDone.IsDamaged == true)
        {

            lblclose.CssClass = "fa fa-check";
          
            //  lblclose.Style["visibility"] = "font-size:25px;color:green";
        }
        else
        {
            lblcheck.CssClass = "fa fa-check";
          
            // lblcheck.Style["visibility"] = "font-size:25px;color:red";
        }
    
}
}