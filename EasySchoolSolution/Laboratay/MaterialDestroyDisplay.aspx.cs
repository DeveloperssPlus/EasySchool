using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_MaterialDestroyDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MaterialDestroyDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            lstMissing.DataBind();
      //  Perminant();
        }
    }

    protected void lstMissing_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.MissingMaterials where k.Id == id select k).FirstOrDefault();
            km.MissingMaterials.Remove(c);
            km.SaveChanges();

            lstMissing.DataBind();
          //  Perminant();
        }
    }

    protected void lstMissing_DataBinding(object sender, EventArgs e)
    {
        
            var schoolid = info.getId();
            int semesterid = MyDate.getCurrentSemesterId();
          
            var RepInfo = (from k in km.MissingMaterials
                           where k.SchoolId == schoolid && k.SemesterId == semesterid
                           select new
                           {
                               k.Id,
                               k.Date,
                               k.Comments,
                               Perminant= k.IsPerminant.Value? "مستديم" : "مستهلك",
                               k.KindId,
                               k.KindName,
                               k.Quantity,
                               k.Reason,
                               k.Unit,
                               k.IsPerminant
                           }
                           ).ToList();

            lstMissing.DataSource = RepInfo;
        
       
    }
}