using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentViolations : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentViolations";
        base.OnPreInit(e);
    }
    int counter = 0;
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                var idd = Request.QueryString["id"];

                lblStdName.Text = (from k in km.Students where k.IdentityNumber == idd select k.Name).FirstOrDefault(); 
            ddlViolations.DataSource = (from k in km.Violations select k).ToList();
            ddlViolations.DataBind();
            }
        }
       
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        var violation = new StudentsViolation();
        violation.StudentId= Request.QueryString["id"];
        violation.TeacherId = Membership.GetUser().UserName;
        violation.ViolationId = int.Parse(ddlViolations.SelectedValue);
        violation.Date = DateTime.Now;
        violation.Count = int.Parse(lblCount.Text) + 1;

        km.StudentsViolations.Add(violation);
        km.SaveChanges();
    }


    protected void btnView_Click(object sender, EventArgs e)
    {
        var idd = Request.QueryString["id"];
        var violationId=int.Parse(ddlViolations.SelectedValue);

        var currentViolations = (from k in km.Violations where k.Id == violationId select k).FirstOrDefault();

        lblViolation.Text = currentViolations.Title;
        var std = (from k in km.Students where k.IdentityNumber == idd select k).FirstOrDefault();
        lblStdName.Text = " " + std.Name;
        var stdViolations = (from k in km.StudentsViolations
                             where k.StudentId == std.IdentityNumber
                             select k).ToList();

        var count = (from k in stdViolations where k.ViolationId == violationId select k).Count();
        lblCount.Text = " " + count;

        var actions = (from k in km.ViolationsActions where k.Grade == currentViolations.Grade && k.Count == count+1 select k).ToList();
        lstActions.DataSource = actions;
        lstActions.DataBind();
        PlaceHolderDetails.Visible = true;
    }
}