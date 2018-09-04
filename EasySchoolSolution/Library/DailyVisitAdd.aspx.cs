using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_DailyVisitAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();


    SchoolInformation info = new SchoolInformation();
    private int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "DailyVisitAdd";
        base.OnPreInit(e);
    }
    protected int getCounter()
    {
        return ++counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            var schoolid = info.getId();
            var StudentID = (from k in km.Students
                             where k.SchoolId == schoolid && k.Id != null
                             orderby k.Id 
                             select k).ToList();

            ddlStudentID.DataSource = StudentID;
            ddlStudentID.DataBind();
            lstLibraryVisits.DataBind();
        }   
    }
  
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int schoolID = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();

        LibraryDailyVisit visit = new LibraryDailyVisit();

        visit.SchoolId = schoolID;
        visit.SemesterId = semesterId;
        visit.Date = DateTime.Now.Date;
        visit.StudentId = ddlStudentID.SelectedValue;
        visit.Reason = txtReason.Text;
        visit.MaterialsUsed = txtMaterialUsed.Text;
        visit.Time = Convert.ToDateTime(txtTime.Text).TimeOfDay;

        km.LibraryDailyVisits.Add(visit);
        km.SaveChanges();

        lstLibraryVisits.DataBind();
        clear();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);
    }
    protected void clear()
    {
        txtReason.Text = "";
        txtMaterialUsed.Text = "";
        txtStudentName.Text = "";
        txtTime.Text = "";
    }
    protected void ddlStudentID_SelectedIndexChanged(object sender, EventArgs e)
    {
        var idd = ddlStudentID.SelectedValue;
        int schoolid = new SchoolInformation().getId();
        txtStudentName.Text = (from k in km.Students where k.IdentityNumber == idd && k.SchoolId == schoolid select k.Name).FirstOrDefault();
    }

    protected void lstLibraryVisits_DataBinding(object sender, EventArgs e)
    {
        int SchoolID = info.getId();
        var today = DateTime.Now.Date;
        var Visits = (from k in km.LibraryDailyVisits
                      join p in km.Students on k.StudentId equals p.IdentityNumber
                      where  k.SchoolId == SchoolID && k.Date==today
                      orderby p.Name descending
                      select new
                      {
                          k.Id,
                          p.Name,
                          k.Reason,
                          k.MaterialsUsed,
                          k.Time
                      }).ToList();

        lstLibraryVisits.DataSource = Visits;
    }


    protected void lstLibraryVisits_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var idd = int.Parse(e.CommandArgument.ToString());
            var item = (from k in km.LibraryDailyVisits where k.Id == idd select k).FirstOrDefault();

            km.LibraryDailyVisits.Remove(item);
            km.SaveChanges();
            lstLibraryVisits.DataBind();
        }
    }
}