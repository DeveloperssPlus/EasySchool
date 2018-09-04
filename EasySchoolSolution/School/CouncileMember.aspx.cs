using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_CouncileMember : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "CouncileMember";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridMember.DataBind();
            CouncileName();
        }

    }
    public void CouncileName()
    {
        int CouncileID = int.Parse(Request.QueryString["CouncileID"]);
        var schoolid = new SchoolInformation().getId();

        var CouncileName = (from pd in km.Counciles
                           where pd.Id == CouncileID
                           select pd).FirstOrDefault();
        lblname.Text = CouncileName.Name;
    }
    protected void GridMember_DataBinding(object sender, EventArgs e)
    {
        int CouncileID = int.Parse(Request.QueryString["CouncileID"]);
        var schoolid = new SchoolInformation().getId();

        var myCounciles = (from pd in km.CouncilMembers
                           where pd.CouncilId==CouncileID                         
                           select  new
                           {
                               pd.CouncilId,
                               pd.Id,
                               pd.Title,
                           
                               EmployeeName=(from v in km .Employees where v.IdentityNumber==pd.EmployeeId select v.Name).FirstOrDefault()
                           } ).ToList();
                      
        GridMember.DataSource = myCounciles;
    }
}