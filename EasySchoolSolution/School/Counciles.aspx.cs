using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_Counciles : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "Counciles";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstCounciles.DataBind();
        }
    }

    protected void lstCounciles_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();

        var myCounciles = (from pd in km.Counciles

                      orderby pd.Name
                      select pd
                       ).ToList();
        lstCounciles.DataSource = myCounciles;
    }




protected void lstCounciles_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "print")
        {
            var jobid = int.Parse(e.CommandArgument.ToString());

            var filename = (from k in km.Counciles where k.Id == jobid select k.FileLocation).FirstOrDefault();
            if (filename != null)
                Response.Redirect("~/" + filename);
        }
    
}
}