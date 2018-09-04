using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_IncentivesForEmployee : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "IncentivesForEmployee";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDrop();
            CalendarDate.DataBind();
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        IncentivesForEmployee incentives = new IncentivesForEmployee();
        incentives.EmloyeeId = ddlEmployeeName.SelectedValue;

     

            incentives.Value =txtValue.Text;
     

        if (txtprice.Text != null)
        {

            incentives.Rest = Convert.ToInt32(txtprice.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarDate.CultureName == "ar-SA")
                incentives.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                incentives.Date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtNote.Text))
            incentives.Note = txtNote.Text;



        int SchoolID = SchoolInfo.getId();
        incentives.SchoolId = SchoolID;

        incentives.SemesterId = MyDate.getCurrentSemesterId();
        Km.IncentivesForEmployees.Add(incentives);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

    }

    public void FillDrop()
    {
        if (!IsPostBack)
        {
            var EmpName = (from s in Km.Employees select s).ToList();
            ddlEmployeeName.DataSource = EmpName;
            ddlEmployeeName.DataTextField = "Name";
            ddlEmployeeName.DataValueField = "IdentityNumber";
            ddlEmployeeName.DataBind();

        }
    }

    protected void ddlEmployeeName_SelectedIndexChanged(object sender, EventArgs e)
    {
        var name = (from ep in Km.Jobs
                    join ee in Km.Employees on ep.Id equals ee.JobId
                    where ee.IdentityNumber == ddlEmployeeName.SelectedValue
                    select ep.Name
                      ).FirstOrDefault();
        lblJob.Text = name;
    }
}