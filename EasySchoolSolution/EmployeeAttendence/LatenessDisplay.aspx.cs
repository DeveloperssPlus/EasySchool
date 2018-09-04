using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_LatenessDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LatenessDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Fill();
            Calendar1.DataBind();
            Calendar2.DataBind();
            lstAlerts.DataBind();
        }
    }

    public void Fill()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.Latenesses
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Amount,
                               isReply = ((from alert in km.LatenessAlerts where alert.LatenessId == k.Id select alert).FirstOrDefault()) == null,
                               Latetype = (from x in km.Constants where x.Id == k.Type select x.value).FirstOrDefault()

                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByDate()
    {
        DatePickerFrom.Text = "";
        DatePickerTo.Text = "";

        var semesterId = MyDate.getCurrentSemesterId();
        DateTime Today = DateTime.Now.Date;
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.Latenesses
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date == Today
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Amount,
                               isReply = ((from alert in km.LatenessAlerts where alert.LatenessId == k.Id select alert).FirstOrDefault()) == null,

                               Latetype = (from x in km.Constants where x.Id==k.Type select x.value).FirstOrDefault()
                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByLevel()
    {

        var semesterId = MyDate.getCurrentSemesterId();
        DateTime DateFrom, DateTo;
        if (Calendar1.CultureName == "ar-SA")
            DateFrom = MyDate.convertHijriToGregorian(DatePickerFrom.Text);
        else
            DateFrom = DateTime.ParseExact(DatePickerFrom.Text,"yyyy/MM/dd",CultureInfo.CurrentCulture);

        if (Calendar2.CultureName == "ar-SA")
            DateTo = MyDate.convertHijriToGregorian(DatePickerTo.Text);
        else
            DateTo = DateTime.ParseExact(DatePickerTo.Text, "yyyy/MM/dd", CultureInfo.CurrentCulture);
       

        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.Latenesses
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && (k.Date >= DateFrom && k.Date <= DateTo)
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Amount,
                               isReply = ((from alert in km.LatenessAlerts where alert.LatenessId == k.Id select alert).FirstOrDefault()) == null,
                               Latetype = (from x in km.Constants where x.Id == k.Type select x.value).FirstOrDefault()

                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    protected void btnShowLatenessDay_Click(object sender, EventArgs e)
    {
       FillByDate();
    }

    protected void btnShowAllLateness_Click(object sender, EventArgs e)
    {
        Fill();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        FillByLevel();
    }

    protected void lstAlerts_DataBinding(object sender, EventArgs e)
    {
        var semesterId = MyDate.getCurrentSemesterId();
        int SchoolID = info.getId();
        var lst = (from k in km.LatenessDecisions
                           join p in km.Employees on k.EmployeeId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID
                           orderby k.Date descending
                           select new
                           {
                               k.Id,
                               p.Name,
                               k.Date,
                               k.Hours,
                               k.Days,
                               IsDayNull= k.Days==null
                           }).ToList();

        lstAlerts.DataSource = lst;
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        var idd =int.Parse(hiddenId.Value);
        var decition = (from k in km.LatenessDecisions where k.Id == idd select k).FirstOrDefault();
        decition.Days =int.Parse(txtDays.Text);
        km.SaveChanges();
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {

        var idd = int.Parse(hiddenId.Value);
        var decition = (from k in km.LatenessDecisions where k.Id == idd select k).FirstOrDefault();
        decition.Days = int.Parse(txtDays.Text);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "print", "<script> prepareFrame('../SchoolForms/form19.aspx?id="+idd+"')</script>", false);

    }
}