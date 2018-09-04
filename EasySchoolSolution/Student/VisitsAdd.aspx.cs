using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_VisitsAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "VisitsAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            FillListStudent();
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Visit visit = new Visit();

        if (!String.IsNullOrEmpty(txtName.Text))
            visit.Name = txtName.Text;


        int SchoolID = SchoolInfo.getId();
        visit.SchoolId = SchoolID;

        visit.SemesterId = MyDate.getCurrentSemesterId();

        if (!String.IsNullOrEmpty(txtReson.Text))
            visit.Reason = txtReson.Text;

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarDate.CultureName == "ar-SA")
                visit.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                visit.Date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        visit.StudentId = DDLStudName.SelectedValue;

        km.Visits.Add(visit);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);


    }
    public void FillListStudent()
    {
        if (!IsPostBack)
        {
            var SId = SchoolInfo.getId();

            var studentt = (from stu in km.Students
                            where stu.SchoolId == SId
                            select stu).ToList();
            DDLStudName.DataValueField = "IdentityNumber";
            DDLStudName.DataTextField = "Name";
            DDLStudName.DataSource = studentt;
            DDLStudName.DataBind();
        }
    }
}